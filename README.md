# .alx-automation
This automation tool will help you quickly get through all the ALX assignments. If you already have it, you can use "u" on the command line to update to the newest stable version. The stable channel is updated weekly.<br /><br />

**_Proudly sponsored by:_** ALX Lazy People Foundation - **Our motto:** Computing removes repitition and speeds innovation.<br /><br />
_***Very important** Remember to change your the default directory to your preferred directory after every **install**._<br /><br />

# Installation

Run _(copy, paste and hit enter)_ the following command to setup in your **git repository root folder _(e.g ~/alx-low_level_programming)_**.<br /><br />
**wget -q -O setup.sh https://l.sapiens.ng/setup && chmod u+x setup.sh && ./setup.sh**<br /><br />
[Intro and setup video](https://alx-students.slack.com/files/U03TL91991Q/F045F0A29NG/alx_lazy_people_foundation_-_alpf_________.mp4)

# Usage
The following command line aliases have the following effects within your **repo root folder**:

**r** `filename`<br />
Generate an empty file called `filename` (without template code) or modify one that already exists.<br /><br />
**r c** `filename` `params...`<br />
Generate or modify a c source file called `filename`. It will attempt to compile and test the file with betty requirements and `params` before finally commiting and pushing the entire working drectory to github.<br /><br />
**r h** `filename` `params...`<br />
Generate or modify a c header file called `filename`. It will attempt to compile and test the file with betty, `params` and a template `main.c` file then ask you to optionally push immedately.<br /><br />
**r bash** `filename` `params...`<br />
Generate or modify a bash script file called `filename`. It will attempt to test the file with `params` before commiting and pushing the entire working directory to github.<br /><br />
**t c** `filename` `params...`<br />
Testing only using `params` for the c source file called `filename`.<br /><br />
**t h** `filename` `params...`<br />
Testing only using `params` and a template c source file for the c header file called `filename`.<br /><br />
**t bash** `filename` `params...`<br />
Testing only using `params` for the .sh bash script called `filename`.<br /><br />
**e** `directory`<br />
Change referenced working directory. Changes the `$DIR_PATH` environment variable to `./directory`. see [Edit before use](https://github.com/Mechtanium/.alx-automation/edit/main/README.md#edit-before-use) section for more details.
**e -d**<br />
Navigates into the tool's folder from the root repo folder. Quick for making code adjustments to the tool.<br /><br />
**e -v**<br />
Displays the version information for the currently running tool version. See also "v".<br /><br />
**e -u**<br />
Upgrades the tool the most recent stable version available. You should use this at least once a week. See also "u".<br /><br />
**e -d**<br />
Navigates to the tool directory from the repo directory.<br /><br />
**d**<br />
Uninstall the automation tool. Careful with this one, no further warning is given.<br /><br />
**u**<br />
Update the tool to the newest stable version.<br /><br />

## Warning

### Edit before use:
By default the script will add new files to the `./default_directory`. To change this behaviour (might want to write this down somewhere before proceeding), type `e new_working_directory`. This should be changed again for every new project and git repo folder. Trial and error might make this clearer, so have at it.

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


## v4.0.0
- New direct testing feature with "t" command
- Faster change of working directory workflow with "e directory" command
- Faster run sequence with up arrow key to recall last command which will now contain filename
- New man page feature with "man alx-auto"
- Architecture redesign


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
