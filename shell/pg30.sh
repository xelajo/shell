echo "Enter the file name: "
read file

if [ ! -f "$file" ]; then
echo "File not found."
exit 1
fi

contents=$(tr '[:upper:]' '[:lower:]' < $file | sed 's/[^a-z0-9]/ /g')

words=($contents)

declare -A count
for word in "${words[@]}"; do
if [ -n "$word" ]; then
((count[$word]++))
fi
done

echo "Unique words in $file:"
for word in "${!count[@]}"; do
echo "$word: ${count[$word]}"
done
