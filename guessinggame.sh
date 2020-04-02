echo "Please guess the number of files in the current directory:"
read guess

function data {
  local files=$(ls -l | wc -l)-1
  echo $number
}
while [[ $guess -ne $(data) ]]
do
   if [[ $guess -lt $(data) ]];
   then
        echo "Guess too low, try again!"
    else
        echo "Guess too high, try again!"
    fi
    echo "Try again: "
    read guess
done

echo "Correct answer!!!"
