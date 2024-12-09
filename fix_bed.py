import pandas as pd

# Load the BED file into a DataFrame
# Replace 'your_bed_file.bed' with the actual file path
df = pd.read_csv('hglft_genome_37038_d07800.bed', sep='\t', header=None, names=['chromosome', 'start', 'end', 'sequence', 'id'])

# Function to filter rows based on no underscores in the first column and matching chromosome in the sequence
def filter_bed_rows(df):
    # Remove rows where the chromosome in the first column contains an underscore
    df_filtered = df[~df['chromosome'].str.contains('_')]
    
    # Further filter where the chromosome in the first column matches the chromosome in the sequence column
    df_filtered = df_filtered[df_filtered['chromosome'] == df_filtered['sequence'].str.split(':').str[0]]
    
    return df_filtered

# Apply the filter
filtered_df = filter_bed_rows(df)

# Save the filtered DataFrame to a new BED file
filtered_df.to_csv('filtered_bed_file.bed', sep='\t', header=False, index=False)

# Display the filtered dataframe
print(filtered_df)
