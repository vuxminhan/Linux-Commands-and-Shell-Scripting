#!/bin/bash

# Set the CSV file path
csv_file="./arrays_table.csv"

# Parse table columns into arrays
column_0=($(cut -d "," -f 1 "$csv_file"))
column_1=($(cut -d "," -f 2 "$csv_file"))
column_2=($(cut -d "," -f 3 "$csv_file"))

# Print the first array
echo "Displaying the first column:"
echo "${column_0[@]}"

# Create a new array as the difference of columns 1 and 2
# Initialize the array with a header
column_3=("column_3")
# Get the number of lines in each column
nlines=$(cat "$csv_file" | wc -l)
echo "There are $nlines lines in the file"

# Populate the array
for ((i = 1; i <= nlines; i++)); do
  column_3[$i]=$((column_2[$i] - column_1[$i]))
done
echo "${column_3[@]}"

# Combine the new array with the CSV file
# First, write the new array to a file
# Initialize the file with a header
echo "${column_3[0]}" > column_3.txt
for ((i = 1; i < nlines; i++)); do
  echo "${column_3[$i]}" >> column_3.txt
done

# Use 'paste' to combine the CSV file and the new column
paste -d "," "$csv_file" column_3.txt > report.csv
