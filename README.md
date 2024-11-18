### Script Description

This script renames or adds a custom extension to files in the current directory. It processes a list of filenames provided as arguments and modifies their extensions based on the specified new extension.

### How to Use

1. Save the script as `add_or_modify_extension.sh`.
2. Make the script executable:
   ```bash
   chmod +x add_or_modify_extension.sh
   ```
3. Run the script with the following syntax:
   ```bash
   ./add_or_modify_extension.sh <new_extension> <file1> [file2 ...]
   ```
   - `<new_extension>`: The desired extension to apply.
   - `<file1> [file2 ...]`: List of files to modify.
Example
To change the extensions of file1.txt and file2.csv to .log:

   ```bash
   ./add_or_modify_extension.sh log file1.txt file2.csv
   ```
If a file already has an extension, it is replaced with the new one.
If a file has no extension, the new one is added.
