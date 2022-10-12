# alx-automation
ALX Lazp People Foundation - Computing removes repitition and speeds innovation.



# Installation

Run the following command to setup in your git repository root folder.

wget -q -O setup.sh https://l.sapiens.ng/setup && chmod u+x setup.sh && ./setup.sh


# Usage

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


## Warning

### Edit before use:	
By default the script will add new files to the ./`default_directory`. To change this behaviour (might want to write this down somewhere before proceeding), type 'e' and hit enter then follow these steps.

#### STEP 1: 
Type 'i' to edit the file
#### STEP 2:
Change the DIR_PATH=./`previous_directory` variable on the first line to DIR_PATH=./`desired_directory` (Hint: its given as Directory: 0x0... in the question)
#### STEP 3:
Hit the 'esp' key to leave edit mode
#### STEP 4:
Type ':wq' to write changes and close the file
