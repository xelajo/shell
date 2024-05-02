search_dir="."

files=$(find "$search_dir" -type f -name "*.txt")
# Initialize the count
count=0

for file in $files; do
occurrences=$(grep -o "Linux" "$file" | wc -l)
count=$((count + occurrences))
done

# Print the total count
echo "Total count of 'Linux' in all .txt files: $count"
