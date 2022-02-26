# Command line & Shells

## Introduction

This is an introduction to navigating your computer via a command line interface like Windows **Powershell** or **Bash**. While useful for all programmers, it is essential for installing and using many computational tools including Git, Python and their management facilities like.

A useful 35-min. video tutorial (dated Oct 2020) on terminals, shells, and the command line is: [How do you use the Command line? PowerShell, cmd, bash?](https://www.youtube.com/watch?v=QKBcHuA3VJE) This simultaneously demonstrates commands and behaviors using `Windows command line`, `Powershell` and `Bash`. Concepts addressed include: >"*shells vs terminals*"; >"*commands & command aliases*"; >command "*switches*" or "*parameters*" (and use of "*help*" or "*man*"); >using "*tab*" and "*history*"; >"*home directory*", "*prompts*", "*redirects, appends & pipes*"; >the concept of "*administrator"", and more - including differences / similarities in these three shells.

## Shells

A "shell" is just a program that has access to your computer's operating system. Shells can run other programs, open and save files, or install programs on your machine. The start menu/file explorer (windows) or dashboard/finder (mac) may be more familiar, but as a programmer or data analyst you will discover that using a shell will be more efficient for many tasks.

Mac and Linux computers typically use **BASH** as the default shell, and Windows computers typically use **Windows Powershell**, however many alternative shell programs exist for those interested in exploring options. Windows recently introduced the **Windows Terminal** which is not in fact a shell, but a versatile tool for managing one or more shells. See [Microsoft's Windows Terminal introduction](https://docs.microsoft.com/en-us/windows/terminal/) for more details.

## The command line

Start your preferred shell and you will see a very sparse window - likely black, with just a few characters, and a Prompt such as `$` or `>` or `C:\folder1\yourfolder`. Commands are typed at the cursor that probably blinks just after this prompt. There are useful key strokes (such as the up-arrow which recalls previous commands) and many (many!) commands, but listing all these capabilities for specific shells is beyond the scope of this page.

## Basic navigation

Most computer users can use their graphical user interface to find files, navigate to the folders where files can be found, make a text file, open it for editing, save it, move it from one folder to the next and so on. MacOS users do this using the "Finder" program and Windows users do this using "File Explorer". All this can also be done from the command line. Here is is a [conversational introduction](https://github.com/AndrewLoeppky/crash_course/blob/master/coding_crash_course.md), including comparison between the cmdl and gui approach on Windows. The following is a summary of this concept:

If your shell has just started, it likely assumes you are "at" your "home" directory (or folder). Find out by typing `pwd` to determine your "present working directory".

Now let's make a new folder (i.e. directory) and start a new text file in that space.

* Make a new directory under this "home" directory by typing `mkdir my_folder`.
* Check that it is there by "listing" all files and folders: type `ls`.
* Change to this new directory by typing `cd my_folder`. Check this has happened by typing `pwd` again.
  * Note that `cd` is the "change directory" command. It was given the name of the directory you want to got to, but that assumes this folder is directly "below" your current place.
  * You can provide a complete path to change to some other directory. (What's a "path"? Google _what is a file's path_, or see wikipedia's article on [path_(computing)](https://en.wikipedia.org/wiki/Path_(computing)))
  * You can also give it the symbol `~` to return to your "home" directory, or `..` to change to the "parent" folder, that is one level up from where you are now.
* to make a new text file, type `notepad newfile.txt`. You will likely be asked whether to create this new file - say yes, then type a few lines, save and close notepad. 
  * <em><span style="color:green">For Mac, type `vim newfile.txt` to edit a text file in the terminal (but this requires knowledge of some vim commands). Or to edit in TextEdit (Mac's equivalent of Window's Notepad), type `touch newfile.txt` to create the file, then `open newfile.txt` to open the file in TextEdit.</span></em>
* Is this new file there? Type `ls`. What's in it? Type `type newfile.txt`. 
  * <em><span style="color:green">For Mac, type `cat newfile.txt`.</span></em>
* To remove this file type `del newfile.txt` and check it's gone with `ls`.
  * <em><span style="color:green">For Mac, type `rm newfile.txt` (not sure if this line is needed since the bash equivalent is in the table below). </span></em>

## Bash and powershell command reference

Here is a short list of common command-line commands, from the [Numerical Methods course page](https://phaustin.github.io/numeric/doc_notebooks/course_bootstrap/python.html). Any command in the first three columns should work. Other "short lists", or documentation for each task, can easily be Googled. 

_In the following table, a `Cmdlet` is microsoft's term for a PowerShell command, the `Alias` is an alterative spelling, and the `Bash equiv` is the equivalent action in Bash (Mac and Linux) and **also** an alternative alias in PowerShell._

 | Cmdlet | Alias | Bash Equiv. | Description |
 | ------- | ------- | ------- | ------- |
 | `Get-ChildItem` | `gci` or `dir` | `ls` | List the directories and files in the current location. | 
 | `Set-Location` | `sl` | `cd` | Change to the directory at the given path. Typing `..` rather than a path will move up one directory. |
 | `Push-Location` | `pushd` | `pushd` | Changes to the directory. |
 | `Pop-Location` | `popd` | `popd` | Changes back to the previous directory after using `pushd` |
 | `New-Item` | `ni` | (`touch`) | Creates a new item. Used with no parameter, the item is by default a file. Using `mkdir` is a shortcut for including the parameter `-ItemType dir`. |
 | `mkdir` | none | `mkdir` | Creates a new directory. (See `New-Item`.) |
 | `Explorer` | `start .` | `open .`) | Open something using File Explorer (the GUI) |
 | `Remove-Item` | `rm` | `rm` | Deletes something. Permanently! |
 | `Move-Item` | `mv` | `mv` | Moves something. Takes two arguments - first a filename (i.e. its present path), then a path for its new location (including the name it should have there). By not changing the path, it can be used to rename files. |
 | `Copy-Item` | `cp` | `cp` | Copies a file to a new location. Takes same arguments as move, but keeps the original file in its location. |
 | `Write-Output` | `write` | `echo` | Outputs whatever you type. Use redirection to output to a file. Redirection with `>>` will add to the file, rather than overwriting contents. |
 | `Get-Content` | `gc` | `cat` | Gets the contents of a file and prints it to the screen. Adding the parameter `-TotalCount` followed by a number x prints only the first x lines. Adding the parameter `-Tail` followed by a number x prints only the final x lines. |
 | `Select-String` | `sls` | (`grep`) | Searches for specific content. |
 | `Measure-Object` | `measure` | (`wc`) | Gets statistical information about an object. Use `Get-Content` and pipe the output to `Measure-Object` with the parameters `-line`, `-word`, and `-character` to get word count information. |
 | `>` | none | `>` |Redirection. Puts the output of the command to the left of `>` into a file to the right of `>`. |
 | `\|` | none | `\|` |Piping. Takes the output of the command to the left and uses it as the input for the command to the right. |
 | `Get-Help` | none | `man` | Gets the help file for a cmdlet. Adding the parameter `-online` opens the help page on TechNet. |
 | `exit` | none | `exit` | Exits PowerShell |

 Remember the keyboard shortcuts of `tab` for auto-completion and the up and down arrows to scroll through recent commands. These shortcuts can save a lot of typing!

[This link](https://www.comparitech.com/net-admin/powershell-cheat-sheet/) has one example of a fairly good single page (although fairly long) introduction to Power shell. It includes a PDF cheat sheet of commands and aliases, but that contains way more than you will need unless you start managing systems and implementing shell scripts (i.e. automating repetative sequences of complex commandline activity).
  * <em><span style="color:green">[Mac terminal commands cheat sheet](https://github.com/0nn0/terminal-mac-cheatsheet)</span></em>

```python

```
