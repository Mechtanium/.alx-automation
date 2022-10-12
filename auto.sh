#!/bin/bash
#Create project file
DIR_PATH=./0x0D-preprocessor
! [[ -d "$DIR_PATH" ]] && mkdir $DIR_PATH

#Create folder readme file
README_PATH=$DIR_PATH/README.md
if ! [[ -f "$README_PATH" ]]
then
        echo -e 'You do not have a README.md yet. Create it now' > $README_PATH
        vi $README_PATH
fi

#Create project file
create_new () {
        cat $2 > $1
}

echo -n "What is filename: "
read filename
FILE_PATH=$DIR_PATH/$filename
if ! [ -f "$FILE_PATH" ]
then
    if [ $1 == bash ] || [ $1 == Bash ] || [ $1 == BASH ]
    then
            create_new "$FILE_PATH" ./alx-automation/temp.bash
    elif [ $1 == c ] || [ $1 == C ]
    then
            create_new "$FILE_PATH" ./alx-automation/temp.c
    elif [ $1 == h ] || [ $1 == H ]
    then
            create_new "$FILE_PATH" ./alx-automation/temp.h
    fi
fi

vi $FILE_PATH

echo -e "\n"
ls -l $DIR_PATH
echo -e "    /\\    "
echo -e "   /  \\   "
echo -e "  /_  _\\  "
echo -e "    ||     "
echo -e "    --     "
echo -e "Current folder $DIR_PATH content\nEnsure your file is listed\n"

#Testing
if [[ $1 == bash ]] || [[ $1 == Bash ]] || [[ $1 == BASH ]]
then
        chmod u+x $FILE_PATH
        echo "Plato: Man know thyself" | $FILE_PATH
elif [[ $1 == c ]] || [[ $1 == C ]]
then
        echo -e "Add main.c template code [from cat #-main.c] (optional) [y/n]"
        read ans
        if [[ $ans == y ]] || [[ $ans == Y ]]
        then
                vi $DIR_PATH/main.c
                betty-style $DIR_PATH/main.c $FILE_PATH
                betty-doc $DIR_PATH/main.c $FILE_PATH
                gcc -Wall -pedantic -Werror -Wextra -std=gnu89 \
                        ./alx-automation/putchar.c $DIR_PATH/main.c \
                        $FILE_PATH -o $DIR_PATH/main
                chmod u+x $DIR_PATH/main
                $DIR_PATH/main 2 -3
                rm $DIR_PATH/main.c $DIR_PATH/main
        else
                betty-style $FILE_PATH
                betty-doc $FILE_PATH
                gcc -Wall -pedantic -Werror -Wextra -std=gnu89 \
                        ./alx-automation/putchar.c $FILE_PATH -o $DIR_PATH/main
                chmod u+x $DIR_PATH/main
                $DIR_PATH/main 2 -3
		rm $DIR_PATH/main
        fi
elif [[ $1 == h ]] || [[ $1 == H ]]
then
	echo -e "Add main.c template code [from cat #-main.c] (optional) [y/n]"
	read ans
	if [[ $ans == y ]] || [[ $ans == Y ]]
	then
		vi $DIR_PATH/main.c
		betty-style $DIR_PATH/main.c $FILE_PATH
		betty-doc $DIR_PATH/main.c $FILE_PATH
		gcc -Wall -pedantic -Werror -Wextra -std=gnu89 $DIR_PATH/main.c \
			-o $DIR_PATH/main
		chmod u+x $DIR_PATH/main
		$DIR_PATH/main
		rm $DIR_PATH/main.c $DIR_PATH/main
	fi
fi

version () {
	#Versioning and submission
	git add .
	git status
	git commit -m "$(grep -A1 -P $filename $README_PATH | tail -n 1)"
	git push
	echo "

	 _______________________________________________________________________
	|BROUGHT TO YOU BY Ame Mathias (ALX slack), +2348181110281 (Whatsapp).  |
	|Chat with me about feature updates you'd like to see and other stuff.  |
	|Also open to work on Android, SysAdmin, AI dev and Cloud projects :).  |
	 ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾
"
}

if ! [ $1 == h ] && ! [ $1 == H ]
then
        echo "Verify result and hit enter key to continue or ctrl+C to terminate: "
        read

	version
else
	echo "Do you want to push this header file to github now? (y/n)"
	read response
	
	if [[ $response == y ]] || [[ $response == Y ]] || [[ $response == yes ]] || [[ $response == Yes ]]
	then
		version
	fi
fi
