# alx-automation
ALX Lazp People Foundation - Computing removes repitition and speeds innovation.
Always remember to change your the default directory toyour preferred directory every **install**, **reinstall** or **update**


# Installation

Run the following command to setup in your **git repository root folder**.

wget -q -O setup.sh https://l.sapiens.ng/setup && chmod u+x setup.sh && ./setup.sh


# Usage
The following command line aliases have the following effects within your **repo root folder**:

**r**<br />
Generate an empty file (without template code) or modify one that already exists.<br /><br />
**r c**<br />
Generate or modify a c source file.<br /><br />
**r h**<br />
Generate or modify a c header file.<br /><br />
**r bash**<br />
Generate or modify a bash script file.<br /><br />
**e**<br />
Edit the script for the automation tool.
- To change referenced working directory, change $DIR_PATH.<br /><br />
**d**<br />
Unistall the automation tool.<br /><br />
**u**<br />
Update the script to the newest version.<br /><br />

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


# Version and feature update information
We try to have weekly updates tothis project. You can use "u" alias to update easily from your terminal.

## v3.1.0
Update to unistall and update scripts <br />
New feature to optonally commit header files immediately <br />
New deplay format for results <br />


## v3.0.1
Updates to C template.

## v3.0.0
Architecture redesign
