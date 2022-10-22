FILE_PATH = DIR_PATH/$2

if [[ $1 == bash ]] || [[ $1 == Bash ]] || [[ $1 == BASH ]]
then
	chmod u+x $FILE_PATH
	echo "Plato: Man know thyself" | $FILE_PATH
elif [[ $1 == c ]] || [[ $1 == C ]]
then
	echo -e "\033[0;35mTest with a main.c file [Do you want to add a main() function] (optional) [y/n]\033[0m"
	read ans
	if [[ $ans == y ]] || [[ $ans == Y ]]
	then
		vi ./.alx-automation/main.c
		betty-style ./.alx-automation/main.c $FILE_PATH
		betty-doc ./.alx-automation/main.c $FILE_PATH
		gcc -Wall -pedantic -Werror -Wextra -std=gnu89 \
			./.alx-automation/putchar.c DIR_PATH/*.c ./.alx-automation/main.c \
			-I DIR_PATH -o DIR_PATH/main
		chmod u+x DIR_PATH/main
		echo -e "\033[0;35m\nResults...\n\033[0m"
		DIR_PATH/main 2 -3
		echo -e "\n"
	else
		betty-style $FILE_PATH
		betty-doc $FILE_PATH
		gcc -Wall -pedantic -Werror -Wextra -std=gnu89 \
			./.alx-automation/putchar.c $FILE_PATH -o DIR_PATH/main
		chmod u+x DIR_PATH/main
		echo -e "\033[0;35m\nResults...\n\033[0m"
		DIR_PATH/main 2 -3
		echo -e "\n"
	fi
elif [[ $1 == h ]] || [[ $1 == H ]]
then
	echo -e "\033[0;35mTest with a main.c file [add a test main() function] (optional) [y/n]\033[0m"
	read ans
	if [[ $ans == y ]] || [[ $ans == Y ]]
	then
		vi ./.alx-automation/main.c
		betty-style ./.alx-automation/main.c $FILE_PATH
		betty-doc ./.alx-automation/main.c $FILE_PATH
		gcc -Wall -pedantic -Werror -Wextra -std=gnu89 ./.alx-automation/main.c \
			-I DIR_PATH -o DIR_PATH/main
		chmod u+x DIR_PATH/main
		DIR_PATH/main
		rm -f ./.alx-automation/main.c DIR_PATH/main
	fi
fi
