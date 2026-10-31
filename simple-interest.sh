#!/bin/bash

read -p "Enter principal amount: " principal
read -p "Enter rate of interest (%): " rate
read -p "Enter time period (years): " time

si=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total=$(echo "scale=2; $principal + $si" | bc)

echo "Simple Interest = $si"
echo "Total Amount = $total"
