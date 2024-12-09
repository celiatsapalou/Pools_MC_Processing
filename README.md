# Strand-Seq Processing Scripts

## Overview
This repository contains three Bash scripts designed to facilitate Strand-Seq data processing. 

## System Requirements
- Bash (tested on Unix/Linux systems)
- Properly formatted input files (see script-specific instructions below)

### 1. `five_cells.sh` 
- 
**Description**: Filters data to retain only 5 cells per sample, ensuring a standardized sample size for analysis. 
--- 
### 2. `update_sm_tag.sh`
- 
**Description**: Updates the SM (sample metadata) tags for Strand-Seq data processing, aligning metadata with pipeline expectations. 
--- 
### 3. `prefix.sh` 
- 
**Description**: Generates the correct prefixes required for processing with Mosaicatcher (MC), ensuring compatibility with pipeline requirements. 