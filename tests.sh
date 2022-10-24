FILE_PATH=$DIR_PATH/$2
MAIN_C=./.alx-automation/main.c
PUT_C=./.alx-automation/putchar.c

if [[ $1 == bash ]] || [[ $1 == Bash ]] || [[ $1 == BASH ]]
then
	chmod u+x $FILE_PATH
	$FILE_PATH $3 $4 $5 $6 $7 $8 $9
elif [[ $1 == c ]] || [[ $1 == C ]]
then
	echo -e "\033[0;35mTest with a main.c file [Do you want to add a main() function] (optional) [y/n]\033[0m"
	read ans
	if [[ $ans == y ]] || [[ $ans == Y ]]
	then
		vi $MAIN_C
		betty-style $MAIN_C $FILE_PATH
		betty-doc $MAIN_C $FILE_PATH
		gcc -Wall -pedantic -Werror -Wextra -std=gnu89 \
			$PUT_C $DIR_PATH/*.c $MAIN_C \
			-I $DIR_PATH -o $DIR_PATH/main
		chmod u+x $DIR_PATH/main
		echo -e "\033[0;35m\nResults...\n\033[0m"
		$DIR_PATH/main $3 $4 $5 $6 $7 $8 $9
		echo -e "\n"
		rm -fi $MAIN_C $DIR_PATH/main
	else
		betty-style $FILE_PATH
		betty-doc $FILE_PATH
		gcc -Wall -pedantic -Werror -Wextra -std=gnu89 $PUT_C $DIR_PATH/*.c -o $DIR_PATH/main
		chmod u+x $DIR_PATH/main
		echo -e "\033[0;35m\nResults...\n\033[0m"
		$DIR_PATH/main $3 $4 $5 $6 $7 $8 $9
		echo -e "\n"
		rm -f $DIR_PATH/main
	fi
elif [[ $1 == h ]] || [[ $1 == H ]]
then
	! [[ -f "$MAIN_C" ]] && echo -e "/*tested at $MAIN_C*/
#include <stdio.h>
#include <stdlib.h>
#include \"$2\"
/**
 * main - print test
 *
 * Description: Tests by printing Okay code.
 * Return: 0.
*/
int main(void)
{
	printf(\"Okay code\\\n\"); /*Test code*/
	/*Add any other test cases you want here*/
	return (0);
}" > $MAIN_C
	vi $MAIN_C
	betty-style $MAIN_C
	betty-doc $MAIN_C
	gcc -Wall -pedantic -Werror -Wextra -std=gnu89 $MAIN_C -I $DIR_PATH -o $DIR_PATH/main
	chmod u+x $DIR_PATH/main
	echo -e "\033[0;35m\nResults...\n\n\033[0m$($DIR_PATH/main)\n"
	rm -fi $MAIN_C
fi

