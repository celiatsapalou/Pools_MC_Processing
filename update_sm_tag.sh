#!/bin/bash

# List of specific samples
samples=(HG00324 HG00443 HG00736 HG01455 HG01479 HG01550 HG01971 HG02060 HG02364 HG02580 HG03052 HG03792 HG04062 NA12802 NA12890 NA18555 NA19909 NA20294)

# Base command
base_command="/g/korbel2/weber/workspace/StrandSeq_workspace/DEV/mosaicatcher-pipeline-friendsofstrandseq/afac/update_sm_tag.sh"

# Directory where bam_5 is located
bam_5_dir="/g/korbel2/tsapalou/mosaicatcher_2024/renamed_bams/bam_5"

# Loop through each sample and run the command
for sample in "${samples[@]}"; do
    echo "Running for sample: $sample"
    bash $base_command "$bam_5_dir/$sample"
done
