#!/bin/bash

# Define source and destination directories
MERGED_DIR="/g/korbel2/tsapalou/mosaicatcher_2024/renamed_bams/merged_bams"
DEST_DIR="/g/korbel2/tsapalou/mosaicatcher_2024/renamed_bams/bam_5"

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Function to check if a sample has at least 5 BAM files and copy them to DEST_DIR
filter_sample() {
    local sample=$1

    # Count the number of BAM files in the sample folder
    bam_count=$(find "$MERGED_DIR/$sample" -name "*.bam" | wc -l)

    # If there are at least 5 BAM files, copy the folder to DEST_DIR
    if [ "$bam_count" -ge 5 ]; then
        cp -r "$MERGED_DIR/$sample" "$DEST_DIR/"
    fi
}

# Loop through all samples in the merged_bams directory
for sample in $(ls "$MERGED_DIR"); do
    if [ -d "$MERGED_DIR/$sample" ]; then
        filter_sample "$sample"
    fi
done

echo "Filtering complete!"
