readme.md: guessinggame.sh
	echo "The title of this project is:" > readme.md
	echo "Guessing Game" >> readme.md
	echo "  " >> readme.md
	echo "The file guessinggame.sh contains the following number of lines:" >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
	echo "  " >> readme.md
	echo "The current makefile has been created at the following date and time:" >> readme.md
	date >> readme.md

clean:
	rm readme.md
