echo "Please guess the number of files in the current directory:"
read guess

function data {
  local files=$(ls -A | wc -l)-1
  echo $files
}
size=$(data)
while [[ $guess -ne $size ]]
do
   if [[ $guess -lt $size ]];
   then
        echo "Guess too low, try again!"
    else
        echo "Guess too high, try again!"
    fi
    echo "Try again: "
    read guess
done
echo "Correct answer!!!"
