# Given a folder, remove all files in the folder and all subfolders that aren't movies or subtitles.
# Example call: python remove-misc.py /path/to/folder

import os
import sys


def remove_misc_files(folder_path):
    misc_files = []
    for root, dirs, files in os.walk(folder_path):
        for file in files:
            file_path = os.path.join(root, file)
            if not is_movie_or_subtitle(file_path):
                misc_files.append(file_path)
    print(f"Miscellaneous files to be removed:")
    for file in misc_files:
        print(file)

    # Ask for confirmation before deleting files
    confirmation = input("Do you want to delete these files? (y/n): ")
    if confirmation.lower() == "y":
        for file in misc_files:
            os.remove(file)
        print(f"Successfully removed {len(misc_files)} files.")
    else:
        print("No files were removed.")


def is_movie_or_subtitle(file_path):
    movie_extensions = [".mp4", ".mkv", ".avi", ".mov", ".wmv", ".flv", ".webm", ".vob"]
    subtitle_extensions = [".srt", ".sub", ".sbv", ".ass", ".vtt"]
    _, file_extension = os.path.splitext(file_path)
    return file_extension in movie_extensions or file_extension in subtitle_extensions


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python remove_misc.py <path_to_folder>")
        sys.exit(1)

    folder_path = sys.argv[1]

    if not os.path.isdir(folder_path):
        print("Error: The provided path is not a valid directory.")
        sys.exit(1)

    remove_misc_files(folder_path)
