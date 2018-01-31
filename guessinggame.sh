#!/user/bin/env bash
# File: guessinggame.sh

nb_files=$(ls | wc -l)
guessed=0

function isitanumber {
        echo $1 | egrep -q '^[0-9]+$'
        if [[ $? -eq 0 ]]
        then
                echo "Yes"
        else
                echo "No"
        fi
}


echo "Guess how many files are in the current directory !"


while [[ $guessed -eq 0 ]]
do 
echo "Type a number and press Enter:"
read user_guess



if [[ $(isitanumber $user_guess) = "No" ]]
then
	echo "This is not a number :("
elif [[ $user_guess -lt $nb_files ]]
then
	echo "This is too low"
elif [[ $user_guess -gt $nb_files ]]
then
	echo "This is too high"
elif [[ $user_guess -eq $nb_files ]]
then
	echo "Congrats! You guessed it."
	guessed=1
fi

done

