README.md: guessinggame.sh
					echo "# Guessing Game" > README.md
					date "+Date: %Y-%m-%d, Time: %H:%M:%S%n" >> README.md
					echo "Number of lines of code: " >> README.md
					wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
