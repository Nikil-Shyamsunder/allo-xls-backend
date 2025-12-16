#!/bin/bash
# Comprehensive comparative analysis: Meta systolic vs Library systolic vs Vanilla GEMM

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
RESULTS_DIR="$SCRIPT_DIR/../results"
mkdir -p "$RESULTS_DIR"

echo "=========================================="
echo "Systolic Array Comparative Analysis"
echo "=========================================="
echo ""

# Combine all results
COMBINED_CSV="$RESULTS_DIR/comparative_analysis.csv"
echo "Design_Type,Variant,Rows,Cols,K,DataType,Pipeline_Stages,Status,Cycle_Count,Source" > "$COMBINED_CSV"

# Add meta_systolic results (from pipeline_results.csv)
if [ -f "$RESULTS_DIR/pipeline_results.csv" ]; then
    echo "Loading meta_systolic results..."
    awk -F, 'NR>1 {
        split($1, parts, "_k");
        split(parts[1], dims, "x");
        rows=dims[1]; cols=dims[2];
        split(parts[2], ktype, "_");
        k=substr(ktype[1], 2);
        dtype=ktype[2];
        printf "meta_systolic,%s,%s,%s,%s,%s,%s,%s,%s,meta\n", $1, rows, cols, k, dtype, $6, $7, $8
    }' "$RESULTS_DIR/pipeline_results.csv" >> "$COMBINED_CSV"
fi

# Add XLS library results (from xls_library_results.csv)  
if [ -f "$RESULTS_DIR/xls_library_results.csv" ]; then
    echo "Loading XLS library results..."
    awk -F, 'NR>1 && $2=="allo_systolic" {
        printf "allo_systolic,%s,%s,%s,%s,%s,%s,%s,%s,allo\n", $1, $3, $4, $5, $6, $7, $8, $9
    }' "$RESULTS_DIR/xls_library_results.csv" >> "$COMBINED_CSV"
fi

# Add GEMM comparison results if available
if [ -f "$RESULTS_DIR/gemm_comparison_results.csv" ]; then
    echo "Loading GEMM comparison results..."
    awk -F, 'NR>1 {
        printf "%s,%s,%s,%s,%s,%s,%s,%s,%s,gemm\n", $1, $2, $3, $4, $5, $6, $7, $8, $9
    }' "$RESULTS_DIR/gemm_comparison_results.csv" >> "$COMBINED_CSV"
fi

echo ""
echo "Combined results saved to: $COMBINED_CSV"
echo ""

# Generate analysis
echo "=========================================="
echo "Analysis by Array Size (2 pipeline stages)"
echo "=========================================="
echo ""

for size in "2x2" "3x3" "4x4"; do
    echo "Size: $size"
    echo "----------------------------------------"
    
    # Meta systolic
    meta_result=$(awk -F, -v s="$size" -v p=2 '$1=="meta_systolic" && $2 ~ s && $7==p && $8=="PASS" {printf "%s @ cycle %s\n", $2, $9; exit}' "$COMBINED_CSV")
    if [ -n "$meta_result" ]; then
        echo "  Meta/Dataflow:  $meta_result"
    fi
    
    # Allo systolic
    allo_result=$(awk -F, -v s="$size" -v p=2 '$1=="allo_systolic" && $2 ~ s && $7==p && $8=="PASS" {printf "%s @ cycle %s\n", $2, $9; exit}' "$COMBINED_CSV")
    if [ -n "$allo_result" ]; then
        echo "  Allo Systolic:  $allo_result"
    fi
    
    # Library systolic  
    lib_result=$(awk -F, -v s="$size" -v p=2 '$1=="systolic_gemm" && $2 ~ s && $7==p && $8=="PASS" {printf "%s @ cycle %s\n", $2, $9; exit}' "$COMBINED_CSV")
    if [ -n "$lib_result" ]; then
        echo "  Library:        $lib_result"
    fi
    
    # Vanilla GEMM
    gemm_result=$(awk -F, -v s="$size" -v p=2 '$1=="vanilla_gemm" && $2 ~ s && $7==p && $8=="PASS" {printf "%s @ cycle %s\n", $2, $9; exit}' "$COMBINED_CSV")
    if [ -n "$gemm_result" ]; then
        echo "  Vanilla GEMM:   $gemm_result"
    fi
    
    echo ""
done

echo "=========================================="
echo "Best Pipeline Stage Per Design"
echo "=========================================="
echo ""

awk -F, 'NR>1 && $8=="PASS" {
    key=$1"_"$2"_"$3"x"$4;
    if (!(key in best) || $9 < cycles[key]) {
        best[key]=$0;
        cycles[key]=$9;
    }
}
END {
    for (key in best) {
        split(best[key], fields, ",");
        printf "%-20s %-25s %2dx%-2d k=%-2d %-8s | %d stages @ %3d cycles\n",
            fields[1], fields[2], fields[3], fields[4], fields[5], fields[6], fields[7], fields[9];
    }
}' "$COMBINED_CSV" | sort

echo ""
echo "=========================================="
echo "Success Rate by Design Type"
echo "=========================================="
echo ""

for type in meta_systolic allo_systolic systolic_gemm vanilla_gemm; do
    pass=$(awk -F, -v t=$type '$1==t && $8=="PASS" {count++} END {print count+0}' "$COMBINED_CSV")
    total=$(awk -F, -v t=$type '$1==t {count++} END {print count+0}' "$COMBINED_CSV")
    if [ $total -gt 0 ]; then
        pct=$((pass * 100 / total))
        printf "  %-20s: %2d/%2d (%3d%%)\n" "$type" "$pass" "$total" "$pct"
    fi
done

echo ""
echo "=========================================="
echo "Key Findings"
echo "=========================================="
echo ""
echo "1. Pipeline Stages:"
echo "   - 2 stages = most reliable (best success rate)"
echo "   - 4x4 arrays ONLY work with 2 stages"
echo "   - More stages = slower execution even when working"
echo ""
echo "2. Design Types:"
awk -F, 'NR>1 && $8=="PASS" && $7==2 {sum[$1]+=$9; count[$1]++}
END {
    for (type in sum) {
        avg=int(sum[type]/count[type]);
        printf "   - %-20s: avg %3d cycles (%d tests)\n", type, avg, count[type];
    }
}' "$COMBINED_CSV"
echo ""
echo "3. Data Types:"
awk -F, 'NR>1 && $8=="PASS" && $7==2 {
    key=$6;
    sum[key]+=$9;
    count[key]++;
}
END {
    for (dtype in sum) {
        avg=int(sum[dtype]/count[dtype]);
        printf "   - %-10s: avg %3d cycles (%d tests)\n", dtype, avg, count[dtype];
    }
}' "$COMBINED_CSV"

echo ""
echo "=========================================="
echo "Recommendations"
echo "=========================================="
echo ""
echo "• Use 2 pipeline stages for all systolic arrays"
echo "• Meta/dataflow designs show good scalability"
echo "• 4x4 and larger arrays require careful stage selection"
echo "• Float32 and int32 have similar performance characteristics"
echo ""
echo "Full data: $COMBINED_CSV"
echo "View with: column -t -s, $COMBINED_CSV | less -S"
