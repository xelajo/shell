#Author: Alex John
echo "Author: Alex John"
echo "Enter a set of numbers separated by spaces:"
read -r input

# Convert input string to array
numbers=($input)

# Initialize min and max with the first number
min=${numbers[0]}
max=${numbers[0]}

# Iterate through the array to find min and max
for num in "${numbers[@]}"; do
    if ((num < min)); then
        min=$num
    fi
    if ((num > max)); then
        max=$num
    fi
done

echo "Smallest number is: $min"
echo "Largest number is: $max"
