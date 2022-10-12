# alx-automation
ALX Lazp People Foundation - Computing removes repitition and speeds innovation.



## Installation

Run the following command to setup in your git repository root folder.

wget -q -O setup.sh https://l.sapiens.ng/setup && chmod u+x setup.sh && ./setup.sh


## Usage

Use the following commands with the following effect

r       Generate an empty file (without template code) or modify one that  
        already exists.
r c     Generate or modify a c source file.
r h     Generate or modify a c header file.
r bash  Generate or modify a bash script file.
e       Edit the script for the automation tool. 
          - To change referenced working directory, change $DIR_PATH.
d       Unistall the automation tool.
u	Update the script to the newest version.


### Warning

Edit:	


By default the script will add new files to the 
	./alx-automation directory. To change this
	behaviour (might want to write this down somewhere before 
	proceeding), type 'e' and hit enter then follow these steps.

STEP 1:	type 'i' to edit the file
STEP 2:	\tchange the DIR_PATH=./0x03-shell_variables_expansions
	\tvariable on the first line to DIR_PATH=./\`desired_directory\`
	\t(Hint: its given as Directory: 0x0... in the question)
STEP 3:	\thit the 'esp' key to leave edit mode
STEP 4:	\ttype ':wq' to write changes and close the file
