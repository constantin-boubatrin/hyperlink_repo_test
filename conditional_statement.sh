# Checking the password entered by user

echo "Enter password: "
read input
if [ $input = "Pass!@#" ]; then
    echo "Correct password entered"
else
    echo "Incorrect password entered"
fi

num1=20;
num2=10;

if [ "$num1" -eq "$num2" ]; then
    echo "Numbers are equal"
elif [ "$num1" -gt "$num2" ]; then
    echo "First number is greater"
else
    echo "Second number is greater"
fi