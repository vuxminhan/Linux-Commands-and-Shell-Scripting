#!/bin/bash

echo "Welcome to the Division Calculator"
echo "================================="

# Prompt the user to enter the dividend
read -p "Enter the dividend: " dividend

# Prompt the user to enter the divisor
read -p "Enter the divisor: " divisor

# Check if the input is numeric
if [[ ! $dividend =~ ^[0-9]+(\.[0-9]+)?$ || ! $divisor =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Invalid input. Please enter valid numbers."
else
    if (( $(echo "$divisor == 0" | bc -l) )); then
        echo "Error: Division by zero is not allowed."
    else
        result=$(echo "scale=2; $dividend / $divisor" | bc)
        echo "The result of $dividend divided by $divisor is: $result"
    fi
fi
