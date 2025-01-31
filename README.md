# Random Container ID Picker

This PowerShell script allows you to randomly select container IDs for auditing purposes. You can input a list of container IDs, and the script will randomly select them without repetition. Each selection is numbered for easy tracking.

## Features
- Asks for container IDs (one per line).
- Shuffles and selects container IDs randomly (up to 40 selections).
- Displays a count for each selection (e.g., Selection #1, Selection #2).

## How to Use

1. Save the script as `random_picker.ps1`.
2. Open PowerShell and navigate to the folder containing the script.
3. Run the script using the following command:
   ```powershell
   powershell -ExecutionPolicy Bypass -File random_picker.ps1
