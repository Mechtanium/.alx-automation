#!/bin/bash
#Create project file
! [[ -d "$DIR_PATH" ]] && mkdir $DIR_PATH

#Create folder readme file
source ./.alx-automation/readme.sh

#Create project file
create_new () {
        cat $2 > $1
}

case $2 in
	"")
		echo -ne "\033[0;35mWhat is filename: \033[0m"
		read filename
		FILE_PATH=$DIR_PATH/$filename;;
	*)
		filename=$2
		FILE_PATH=$DIR_PATH/$2;;
esac

if ! [ -f "$FILE_PATH" ]
then
	case $1 in
		bash | Bash | BASH)
			create_new "$FILE_PATH" ./.alx-automation/temp.bash;;
		c | C)
			create_new "$FILE_PATH" ./.alx-automation/temp.c;;
		h | H)
			create_new "$FILE_PATH" ./.alx-automation/temp.h;;
	esac
fi

vi $FILE_PATH

echo -e "\n"
ls -l $DIR_PATH
echo -e "
    /\\    
   /  \\   
  /_  _\\  
    ||     
    --     
Current folder $DIR_PATH content\n\033[0;35mEnsure your file is listed\n\033[0m"

#Testing
t $1 $filename

version () {
	#Versioning and submission
	git add .
	git status
	git commit -m "$(grep -A1 -P $filename $DIR_PATH/README.md | tail -n 1)"
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
        read #pause execution flow
	version
else
	echo -e "\033[0;35mDo you want to push this header file to github now? (y/n)\033[0m"
	read response
	
	if [[ $response == y ]] || [[ $response == Y ]] || [[ $response == yes ]] || [[ $response == Yes ]]
	then
		version
	fi
fi
