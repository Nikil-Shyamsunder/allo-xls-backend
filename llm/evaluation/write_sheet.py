import gspread
from google.oauth2.service_account import Credentials

# ==== CONFIG ====
SERVICE_ACCOUNT_FILE = "/home/ns752/service_account.json"
SPREADSHEET_NAME = "ECE 6775 Final Project Data"

AGENT_SUMMARY_LOG = "build/agent_summary.log"  # file with X / numbers
DSLX_SUMMARY_LOG = "build/dslx_summary.log"    # file with f / .
NUM_TRIALS = 5               # number of tokens after filename
# =================


def parse_line(line):
    """
    Given a line like:
    'example_gemm.py        X 1 X X 14 ...'
    return ('example_gemm.py', ['X', '1', 'X', 'X', '14', ...])
    """
    parts = line.split()
    filename = parts[0]
    tokens = parts[1:]
    return filename, tokens


def main():
    # --- Auth with service account ---
    scopes = [
    "https://www.googleapis.com/auth/spreadsheets",
    "https://www.googleapis.com/auth/drive",
]
    creds = Credentials.from_service_account_file(
        SERVICE_ACCOUNT_FILE,
        scopes=scopes
    )
    client = gspread.authorize(creds)

    # --- Open sheet & get first worksheet ---
    sh = client.open(SPREADSHEET_NAME)
    ws = sh.add_worksheet("gpt5_mini_run", rows="200", cols="50")

    # --- Optional: write header row ---
    header = ["file"] + [str(i) for i in range(1, NUM_TRIALS + 1)]
    ws.update("A1", [header])

    # --- Read both log files ---
    with open(AGENT_SUMMARY_LOG) as f_out, open(DSLX_SUMMARY_LOG) as f_status:
        output_lines = [l.strip() for l in f_out if l.strip()]
        status_lines = [l.strip() for l in f_status if l.strip()]

    if len(output_lines) != len(status_lines):
        raise RuntimeError("agent_summary.log and dslx_summary.log must have the same number of non-empty lines")

    # We'll collect all rows and then format cells
    rows_to_write = []
    # List of (cell_label, color_dict) for formatting after we write values
    color_updates = []

    # Data will start at row 2 (row 1 is header)
    for row_idx, (out_line, stat_line) in enumerate(zip(output_lines, status_lines), start=2):
        filename_out, tokens_out = parse_line(out_line)
        filename_stat, tokens_stat = parse_line(stat_line)

        if filename_out != filename_stat:
            raise RuntimeError(f"Filename mismatch: {filename_out} vs {filename_stat}")

        if len(tokens_out) < NUM_TRIALS or len(tokens_stat) < NUM_TRIALS:
            raise RuntimeError(f"Not enough tokens on line for {filename_out}")

        tokens_out = tokens_out[:NUM_TRIALS]
        tokens_stat = tokens_stat[:NUM_TRIALS]

        # Build the row: first column is filename
        row_values = [filename_out]

        for i, (val_token, stat_token) in enumerate(zip(tokens_out, tokens_stat)):
            # val_token is either 'X' or a number-as-string
            row_values.append(val_token)

            # Determine cell address (B..U) in this row
            col_index = 2 + i  # 1-based column index; 1->A, 2->B, etc.
            cell_label = gspread.utils.rowcol_to_a1(row_idx, col_index)

            # Decide color based on status (f / .)
            if stat_token == 'f':
                # incorrect -> red
                color = {"red": 1.0, "green": 0.8, "blue": 0.8}
                color_updates.append((cell_label, color))
            elif stat_token == '.':
                # correct -> green
                color = {"red": 0.8, "green": 1.0, "blue": 0.8}
                color_updates.append((cell_label, color))
            # If you ever add more status types, handle them here

        rows_to_write.append(row_values)

    # --- Write all rows at once starting at A2 ---
    if rows_to_write:
        ws.update(f"A2", rows_to_write)

    # --- Apply cell formatting (colors) ---
    # This will send one API call per cell; fine for small-ish sheets.
    for cell_label, color in color_updates:
        ws.format(cell_label, {"backgroundColor": color})


if __name__ == "__main__":
    main()
