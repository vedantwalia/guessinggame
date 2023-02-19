#!/usr/bin/env bash

echo "How many files do you think are in this folder?"
read estimate

function number_files {
  local files=$(ls -A | wc -l)
  echo $files
}

actual_number=$(number_files)
while [[ $estimate -ne $actual_number ]]
do
   if [[ $estimate -lt $actual_number ]];
   then
        echo "Guess is lower than the number, try again!"
    else
        echo "Guess is higher than the number, try again!"
    fi
    echo "Try again: "
    read estimate
done

echo "Correct answer!!!"
