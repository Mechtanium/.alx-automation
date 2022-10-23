if [[ $1 == '-d' ]]
then
	cd .alx-automation
elif [[ $1 == '-v' ]]
then
	v
elif [[ $1 == '-u' ]]
then
	u
else
	echo "export DIR_PATH=\"./$1\"" >> ~/.bashrc
	source ~/.bashrc
	echo "Working directory changed to $DIR_PATH"
fi
