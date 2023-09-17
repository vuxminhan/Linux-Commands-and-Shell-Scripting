#!/bin/bash

# Define an array of fruits
fruits=("Apple" "Banana" "Cherry" "Date" "Fig")

# Print a header for the report
echo "Fruit Report"
echo "============"

# Iterate over the fruits and print each one
for fruit in "${fruits[@]}"; do
    echo "Fruit: $fruit"
done

# Print a footer for the report
echo "============"
echo "Total Fruits: ${#fruits[@]}"
