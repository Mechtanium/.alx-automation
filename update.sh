if ! [[ -d "./.alx-automation" ]]
then
	d
	wget -q -O setup.sh https://l.sapiens.ng/setup && chmod u+x setup.sh && ./setup.sh
else
	echo -e "Updating...\n"
	cd ./.alx-automation
	git pull -q
	cd ..
	./alias.sh
	echo -e "All done\n"
fi
