if ! [[ -d "./.alx-automation" ]]
then
	d
	wget -q -O setup.sh https://l.sapiens.ng/setup && chmod u+x setup.sh && ./setup.sh
else
	git pull
fi
