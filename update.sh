if ! [[ -d "./.alx-automation" ]]
then
	d
	wget -q -O setup.sh https://l.sapiens.ng/setup && chmod u+x setup.sh && ./setup.sh
else
	echo -e "Updating...\n"
	cd ./.alx-automation
	git pull -q
	./alias.sh
	echo -e "
\033[0;32m
    *   * *****    *    *   *
     * *  *___    * *   *___*
      *   *      *━━━*  *   *
      *   ***** *     * *   * 

     \033[0mIt's all done.
     
     
     \033[0;35mManual\033[0m
     Visit the github README.md for more info on how to use the \033[1;31mA\033[1;32mL\033[0;33mX\033[0m 
     admin tool
     \033[4;36mhttps://github.com/Mechtanium/.alx-automation/blob/main/README.md\033[0m
     
     \033[0;35m
     Talk to us\033[0m
     Send us a thumbs up emoji if you like this tool.
     \033[0;31m***VERY IMPORTANT\033[0mJoin the project channel \033[0;36mplg-2\033[0m on slack for news 
     on updates and new features as they arrive.
     
     \033[0;35m
     Contributors
     \033[0;36m@Ame Mathias\033[0m, \033[4;36menosmath@gmail.com\033[0m
     
     Thanks always
"
fi
