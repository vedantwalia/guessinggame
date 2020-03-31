count = 0

function data {
  local files = $(find . -maxdepth 1 -type f | wc -l | egrep -o "[0-9]+")
  echo files
}
function compare {
  local input = $(files)

  if [[ $guess -eq $data ]];   then
    echo "Correct guess!!"
    count = 1
  elif [[ $guess -lt $data ]]; then
      echo "Guess too low, try again!"
  else
      echo "Guess too high, try again!"
  fi

echo "Please guess the number of files in the current directory."

while [[ $count -eq 0 ]]; do
  read guess
  if [[ $(echo guess) | egrep -o "[^0-9]+" ]]; then
        echo "Please emter your guess"
        read guess
    fi
    compare
  done

}
