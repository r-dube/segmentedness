#!/bin/bash
# use install.sh only if CSW-analysis.ipynb fails to download data

# Define variables
URL="https://snap.stanford.edu/data/CiscoSecureWorkload_22_networks.zip"
ZIP_FILE="CiscoSecureWorkload_22_networks.zip"
TARGET_DIR="./data"

# 1. Ensure target directory exists
mkdir -p "$TARGET_DIR"

# 2. Download the file
echo "Downloading dataset..."
curl -O "$URL"

# 3. Unzip the file
# The -d flag specifies the output directory
echo "Unzipping file..."
unzip "$ZIP_FILE" -d "$TARGET_DIR"

# 4. Cleanup
echo "Cleaning up temporary files..."
rm "$ZIP_FILE"

echo "Done! The dataset is located in $TARGET_DIR"
