import os
import zipfile

SOURCE_DIR = r"C:\Users\pravallika\.gemini\antigravity\scratch\nexus-enterprise-microservices"
ZIP_PATH = r"C:\Users\pravallika\Desktop\nexus-microservices.zip"

print(f"Creating ZIP file including .git directory at {ZIP_PATH}...")

if os.path.exists(ZIP_PATH):
    os.remove(ZIP_PATH)

total_files_zipped = 0

with zipfile.ZipFile(ZIP_PATH, 'w', zipfile.ZIP_DEFLATED) as zipf:
    for root, dirs, files in os.walk(SOURCE_DIR):
        for file in files:
            full_path = os.path.join(root, file)
            # Create relative path inside the zip file
            rel_path = os.path.relpath(full_path, SOURCE_DIR)
            zipf.write(full_path, rel_path)
            total_files_zipped += 1

print("[SUCCESS] ZIP archive created successfully!")
print(f"Total Files in ZIP: {total_files_zipped}")
print(f"ZIP File Size: {os.path.getsize(ZIP_PATH):,} bytes")
