#!/usr/bin/env bash

#Executing the program with the command: bash script.sh a d -- c a
answers=("a" "d" "c" "a" "a")
total_score=0

for (( i = 0; i < 5; i++));
do
    case "${1}" in
        #Case 1
        ${answers[i]})
            ((total_score++))
            ;;
        #Case 2
        "-"|"--")
            ;;
        #Default case
        *)
            ((total_score--))
            ;;

    esac
    #command shifts the arguments to the left, so after each shift 1, 
    #the value of {$1} changes to the next argument.
    #Default value of shift is 1 if we don't provide it
    shift 1
done

echo "Total score is: $total_score"