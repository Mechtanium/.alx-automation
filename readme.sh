#Create folder readme file
README_PATH=DIR_PATH/README.md
if ! [[ -f "$README_PATH" ]]
then
	echo -e 'You do not have a README.md yet. Create it now' > $README_PATH
	vi $README_PATH
fi
