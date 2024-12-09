# Move into the directory containing all sample folders
cd /g/korbel2/tsapalou/mosaicatcher_2024/renamed_bams/bam_5

#Loop through each sample folder, go into the old_bam directory and rename the files
for sample_dir in */; do
    cd "$sample_dir/old_bam"
    
    # Remove the prefix from all .bam and .bam.bai files for both HG and NA prefixes
    for file in HG*.bam HG*.bam.bai NA*.bam NA*.bam.bai; do
        new_name=$(echo "$file" | sed -E 's/^(HG|NA)[0-9]+\.//')
        mv "$file" "$new_name"
    done

    # Go back to the parent directory
    cd ../../
done