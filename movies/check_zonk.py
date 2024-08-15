import os
import sys

def check_small_files(folder_path):
    small_files = []
    for root, dirs, files in os.walk(folder_path):
        for file in files:
            file_path = os.path.join(root, file)
            if os.path.getsize(file_path) < 1024:  # 1 KB = 1024 bytes
                small_files.append(file_path)
    return small_files

def main():
    if len(sys.argv) != 2:
        print("Usage: python check_zonk.py <folder_path>")
        sys.exit(1)

    folder_path = sys.argv[1]
    if not os.path.isdir(folder_path):
        print(f"Error: '{folder_path}' is not a valid directory")
        sys.exit(1)

    small_files = check_small_files(folder_path)

    if small_files:
        print(f"Files less than 1 KB in '{folder_path}' and its subfolders:")
        for file in small_files:
            print(file)
        print(f"\nTotal number of files less than 1 KB: {len(small_files)}")
    else:
        print(f"No files less than 1 KB found in '{folder_path}' and its subfolders.")

if __name__ == "__main__":
    main()