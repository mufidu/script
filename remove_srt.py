import os
import sys

def remove_srt_files(folder_path):
    # Counter for removed files
    removed_count = 0

    # Iterate through all files in the folder
    for filename in os.listdir(folder_path):
        if filename.endswith('.srt'):
            file_path = os.path.join(folder_path, filename)
            try:
                os.remove(file_path)
                print(f"Removed: {filename}")
                removed_count += 1
            except OSError as e:
                print(f"Error removing {filename}: {e}")

    print(f"\nTotal .srt files removed: {removed_count}")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python remove_srt_files.py <path_to_folder>")
        sys.exit(1)

    folder_path = sys.argv[1]

    if not os.path.isdir(folder_path):
        print("Error: The provided path is not a valid directory.")
        sys.exit(1)

    remove_srt_files(folder_path)
