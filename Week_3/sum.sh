#!/bin/bash

echo "Welcome to the Sum Calculator"
echo "============================="

# Prompt the user to enter the first number
read -p "Enter the first number: " num1

# Prompt the user to enter the second number
read -p "Enter the second number: " num2

# Check if the input is numeric
if [[ ! $num1 =~ ^[0-9]+(\.[0-9]+)?$ || ! $num2 =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Invalid input. Please enter valid numbers."
else
    # Perform the addition
    sum=$(echo "$num1 + $num2" | bc)

    # Print the result
    echo "The sum of $num1 and $num2 is: $sum"
fi
