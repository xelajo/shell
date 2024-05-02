#Author: Alex John
echo "Author: Alex John"
echo "Enter the marks (out of 100):"
read marks

if [ $marks -ge 90 ]; then
    grade="A+"
elif [ $marks -ge 80 ]; then
    grade="A"
elif [ $marks -ge 70 ]; then
    grade="B"
elif [ $marks -ge 60 ]; then
    grade="C"
elif [ $marks -ge 50 ]; then
    grade="D"
else
    grade="F"
fi

echo "Student grade: $grade"
