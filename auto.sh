#!/bin/bash
#Create project file
! [[ -d "$DIR_PATH" ]] && mkdir DIR_PATH

#Create folder readme file
./.alx-automation/readme.sh

#Create project file
create_new () {
        cat $2 > $1
}

echo -ne "\033[0;35mWhat is filename: \033[0m"
read filename
FILE_PATH=DIR_PATH/$filename
if ! [ -f "$FILE_PATH" ]
then
    if [ $1 == bash ] || [ $1 == Bash ] || [ $1 == BASH ]
    then
            create_new "$FILE_PATH" ./.alx-automation/temp.bash
    elif [ $1 == c ] || [ $1 == C ]
    then
            create_new "$FILE_PATH" ./.alx-automation/temp.c
    elif [ $1 == h ] || [ $1 == H ]
    then
            create_new "$FILE_PATH" ./.alx-automation/temp.h
    fi
fi

vi $FILE_PATH

echo -e "\n"
ls -l DIR_PATH
echo -e "    /\\    "
echo -e "   /  \\   "
echo -e "  /_  _\\  "
echo -e "    ||     "
echo -e "    --     "
echo -e "Current folder $DIR_PATH content\n\033[0;35mEnsure your file is listed\n\033[0m"

#Testing
t $1 $filename

version () {
	#Versioning and submission
	git add .
	git status
	git commit -m "$(grep -A1 -P $filename $README_PATH | tail -n 1)"
	git push
	echo -e "\033[0;35m

	 _______________________________________________________________________
	|BROUGHT TO YOU BY Ame Mathias (ALX slack), +2348181110281 (Whatsapp).  |
	|Chat with me about feature updates you'd like to see and other stuff.  |
	|Also open to work on Android, SysAdmin, AI dev and Cloud projects :).  |
	 ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾
\033[0m"
}

if ! [ $1 == h ] && ! [ $1 == H ]
then
        echo -e "\033[0;35mVerify result and hit enter key to continue or ctrl+C to terminate: \033[0m"
        read
	rm -f DIR_PATH/main
	rm -fi ./.alx-automation/main.c

	version
else
	echo -e "\033[0;35mDo you want to push this header file to github now? (y/n)\033[0m"
	read response
	
	if [[ $response == y ]] || [[ $response == Y ]] || [[ $response == yes ]] || [[ $response == Yes ]]
	then
		version
	fi
fi
