# .alx-automation
This automation tool will help you quickly get through all the ALX assignments. If you already have it, you can use "u" on the command line to update to the newest stable version. The stable channel is updated weekly.<br /><br />

**_Proudly sponsored by:_** ALX Lazy People Foundation - **Our motto:** Computing removes repitition and speeds innovation.<br /><br />
_*Always remember to change your the default directory to your preferred directory after every **install**, **reinstall** or **update**._<br /><br />

# Installation

Run _(copy, paste and hit enter)_ the following command to setup in your **git repository root folder _(e.g ~/alx-low_level_programming)_**.<br /><br />
**wget -q -O setup.sh https://l.sapiens.ng/setup && chmod u+x setup.sh && ./setup.sh**<br /><br />
[Intro and setup video](https://alx-students.slack.com/files/U03TL91991Q/F045F0A29NG/alx_lazy_people_foundation_-_alpf_________.mp4)

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
- To change referenced working directory, change the $DIR_PATH variable on line #3. see [Edit before use](https://github.com/Mechtanium/.alx-automation/edit/main/README.md#edit-before-use) section for more details.

**d**<br />
Unistall the automation tool.<br /><br />
**u**<br />
Update the script to the newest version.<br /><br />

## Warning

### Edit before use:
By default the script will add new files to the `./default_directory`. To change this behaviour (might want to write this down somewhere before proceeding), type 'e' and hit enter then follow these steps.

#### STEP 1: 
Type 'i' to edit the file
#### STEP 2:
Change the `DIR_PATH=./default_directory` variable on line #3 to `DIR_PATH=./desired_directory` (Hint: its given as Directory: 0x0... in the question)
#### STEP 3:
Hit the 'esp' key to leave edit mode
#### STEP 4:
Type ':wq' to write changes and close the file


# Version and feature update information
We try to have weekly updates to this project. You can use "u" alias to update easily from your terminal.

## Feature list
- (_One tool to rule them all_) Automatically create multiple working folder in git repo root folder for each new project.
- Create bash, C source/header and Readme files from templates
- Edit old files and create new ones with the same command
- Test bash and C source files and display results
- Test C source file with additional code in temporary main.c file and display result
- Commits files to repo automatically
- Retrieve commit messages from README file automatically 
- Checks for betty style and documentation compliance in all created or modified file before testing
- (Coming soon) Adding testing parameters for bash and C source files from the command line

## v3.1.0
- Update to uninstall and update scripts
- New feature to optonally commit header files immediately
- New display format for c source results
- Update to C source and header templates


## v3.0.1
- Updates to C template.

## v3.0.0
- Architecture redesign

# FAQ
- How to copy and paste on Ubunto 20.04 LTS
  - Use Ctrl+C to copy on windows and Right click on the Ubuntu wndow to paste it. (For debian linux _(e.g. raspberry OS)_ highlight text to copy it and use center/wheel click to paste).
- I'm having trouble updating the script with "u". 
  - As a brute force method, use _**rm -r .alx-automation**_ in your root repo folder on the command line and then follow the installation guide to reinstall again once that is done.
