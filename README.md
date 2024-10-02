# Tent

This is a fairly simple script that interfaces with the command line to open a new Safari window with different preset tabs. I created this because I found myself freqently opening the same tabgroups for different work cycles. Other freelancers and friends also mention this as a tedious task the more work they switch between.

There are proabably fancier ways to achieve this kind of thing using shortcuts or other customization, but this is mainly for myself, for fun and to try a new language out. I will say, I was not dazzled by OSA/Applescript.

## How to use Tent
I use "Workspace" to describe a specific area of work, or a project that I'm working on. Some examples of a workspace might be small business related admin work, studying for a chemistry midterm, job searching, language study, etc...

To set up a workspace, edit and add records to fit your needs. Be sure to set the record's variable name, name and list of urls. When you want to pop up a workspace, you'll activate it by specifying the record's *name* as an argument. (see example below)

## About the script
Workspaces are stored in Records that each hold two elements; (1) a title : string and (2) urls : list of strings. Here's an example of a workspace you could add with your own customized links:

```
set studyJapanese to {name:"Japanese", urls:{"https://jisho.org", "https://jlptsensei.com/how-to-pass-jlpt-n2-study-guide/", "https://docs.google.com/document/u/0/"}}
``` 

## How to use the script
To run the script, place the file in any directory and run `osascript pop_up.scpt <worksapce name>` from that direcory. However, the best way to use this is to define a function in your .zshrc/.bashrc/profile of choice so you can run it from directory.

```
// option 1.
// replace jobHunt with the name of the workspace you want to activate. This will only work if you run the command in the directory where pup_up.scpt is.
$ osascript pop_up.scpt Japanese

// option 2.
// add this function to your profile of choice to call the script
popup() {
	osascript /Users/sophie/Repos/tent/pop_up.scpt "$1"
}

// to run the script:
$ popup Japanese

```

If you want to be able to run the

## In Development
I'm working on a couple additions that will expand the workspaces to hold a list of applications that will open, not just Safari. I'm also trying to interface with window snapping applications for Mac to add adidtional (optional) settings. 

