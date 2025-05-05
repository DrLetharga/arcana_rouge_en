import os
import csv
import subprocess

def get_ogg_metadata(file_path):
    result = subprocess.run(
        ['ffprobe', '-v', 'error', '-show_entries',
         'format=duration,bit_rate', '-of', 'default=noprint_wrappers=1:nokey=1', file_path],
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT
    )
    output = result.stdout.decode().splitlines()
    duration = float(output[0]) if output else None
    bitrate = int(output[1]) / 1000 if len(output) > 1 else None  # convert to kbps
    return duration, bitrate

# Set this to your folder containing .ogg files
ogg_folder = r"PATH_TO_YOUR_OGG_FOLDER"
output_csv = "ogg_metadata.csv"

with open(output_csv, mode='w', newline='', encoding='utf-8') as file:
    writer = csv.writer(file)
    writer.writerow(["Filename", "Duration_sec", "Bitrate_kbps"])
    
    for filename in sorted(os.listdir(ogg_folder)):
        if filename.lower().endswith(".ogg"):
            full_path = os.path.join(ogg_folder, filename)
            try:
                duration, bitrate = get_ogg_metadata(full_path)
                writer.writerow([filename, round(duration, 2), round(bitrate, 1)])
            except Exception as e:
                writer.writerow([filename, "ERROR", "ERROR"])
                print(f"Error processing {filename}: {e}")

print(f"Metadata written to: {output_csv}")
