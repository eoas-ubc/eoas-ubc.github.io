# Powershell, Git and System Administration Crash Course

---

## Intro

The purpose of this tutorial is to aid students who lack formal background in computer science by introducing several extremely helpful tools used for developing code keeping files organized.

The focus of this page is on learning to navigate your computer via a command line interface like **Windows Powershell** or **Bash**. This is a useful skill for any programmer to have, and is essential for installing and using many computational tools available to scientists for data analysis.

## Part 1: Using a Shell

Using a shell is a great skill for aspiring scientific programmers to develop. In the past, a shell with a *command line interface* was the only way to interact with a computer, entering commands line by line into a *prompt*. Nowadays, operating systems and most production-grade programs/applications include a *graphical user interface (GUI),* which is the collection of mouse buttons, pull down menus, text boxes, etc. that users use to interact with a program. As scientists, oftentimes the tools we need to access (or write ourselves) for analyzing data are limited to fairly rudimentary inputs and outputs on the command line, as GUIs are rather labour intensive to develop. Since we would rather focus on solving scientific problems instead of learning the complicated art of "front end programming" (i.e. developing graphical user interfaces), a small investment in time learning to use a shell for running programs will pay huge dividends, and grant us easier access to a huge array of computational tools for doing science.

### What is a Shell?

A shell is just a program that has access to your operating system's services. Shells can run other programs, open and save files, or install programs on your machine. Often we can accomplish the same tasks by clicking around the start menu/file explorer (windows) or dashboard/finder (mac), but as we progress as scientific programmers, we will find increasingly that we can do things more efficiently typing commands into a shell versus using the GUI. Some tasks can only be accomplished via the command line in a shell. Mac and Linux computers typically use BASH as the default shell, and Windows computers typically use Windows Terminal or Windows Powershell. Many other shell programs exist for various operating systems, and can be installed to suit individual preference. Many commands work across most shells, but there are several things that work in BASH that will not work in Powershell and vice-versa.

### Using a Command Line Interface

Begin by opening your shell program of choice (Powershell/Bash/whatever). You should see some preliminary text, followed by a blinking cursor waiting for input. Depending on your choice of shell and the exact configuration, the prompt may look something like:

```powershell
$
```

or

```powershell
>
```

or

```powershell
C:\folder1\folder2>
```

For the purposes of most tutorials and documentation involving shell commands, the ```$``` command prompt is assumed, regardless of what yours actually looks like. Do not type the "$" sign as part of your input.

First, let's orient ourselves within our computer's folder tree. Type the following into the prompt and press ```enter```

```powershell
$ pwd
```

```pwd``` stands for "print working directory," which is the directory you are currently in. If you were to create or save a file right now, it would be saved in the working directory, unless otherwise specified. You should now see something like:

```powershell
$ pwd

Path
----
C:\Users\Owner\Shell_Tutorial

$
```

Your working directory is printed to the screen and the prompt re-appears, ready for more input. You can move around your computer's folder tree using ```cd``` (change directory) followed by:

```$ cd my_folder``` $\rightarrow$ change into sub-directory named "my_folder"

```$ cd ..``` $\rightarrow$ go up one folder level (to the *parent directory* relative to your current folder)

```$ cd ~```  $\rightarrow$ go to the home directory

```$ mkdir my_folder``` $\rightarrow$ make a new directory called "my_folder" inside the current directory

you can also use ```ls``` to list all files contained within the current working directory and print them to the screen. The results will look something like this:

```powershell
$ ls

    Directory: C:\Users\Owner\my_folder


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        2020-06-03   3:22 PM                file_1
d-----        2020-06-11   9:26 AM                file_2
d-----        2020-07-31  10:21 AM          sub_folder_1
```
### Exercise 1

Your task is to create a directory in which we will store all files, labs, assignments, etc. for EOAS500, using both file explorer and powershell. We will use this directory later in Exercise 2, where we will set up version control using **Git**.

#### PART 1: File Explorer

1) Open file explorer via **Start** $\rightarrow$ **File Explorer**
2) On the left hand side, select **Windows (C:)**, then **Users**, then **Owner**
3) Use the **New Folder** button to create a new folder and name it "EOAS500"
4) Double click on the folder to look inside it. Right now, it should be empty.
5) Click the $\uparrow$ button to navigate to the *parent directory* one level above the current working directory.
<img src='explorer_up.png'>
6) Now select the EOAS500 folder you just created and click the $\textcolor{red}{X}$ button to delete it. We will re-make it again shortly using powershell.
<img src='explorer_del.png'>

#### PART 2: Powershell

Let's perform the exact same operation using command line inputs from a shell. After each step, check file explorer to see the results displayed in the GUI.

1) Open powershell via **Start** $\rightarrow$ **Powershell**
2) Type:

   ```
   $ cd ~
   $ pwd
   ```

3) This will show you your working directory (some shell configurations will also show the working directory at each line as part of the prompt). Use ```cd ..``` and ```cd foldername``` (replace ```foldername``` with the folder you want to move into) to navigate to ```C:\Users\Owner```. Bonus: try using the ```tab``` key to autocomplete commands
4) Create a new directory called "EOAS500" and change into it by typing:

    ```powershell
    $ mkdir EOAS500
    $ cd EOAS500
    ```

5) Verify you have created the folder by navigating to it again in  file explorer. Should you wish to delete your new folder and try again, you can use:

    ```powershell
    $ cd ..
    $ del EOAS500
    ```

    Note you cannot delete the current working directory, you must ```cd``` one level up first.

Voila! We have successfully used a shell to navigate our computer's file system and create/delete folders, producing the exact same result as with the graphical interface. At first the shell method may seem unintuitive, as you cannot see the results immediately displayed in front of you, but as we progress to more complex operations, the utility of using a shell over a GUI will become more clear. Many programs intended for scientists are much easier to install/use via a shell, and some are *only* accessible this way as they completely lack a GUI.

---

For reference, here is the list of commands common to Powershell and Bash we have used so far:

```pwd``` $\rightarrow$ print working directory

```ls``` $\rightarrow$ list all files and sub-folders in the current working directory

```cd ..``` $\rightarrow$ go to parent directory

```cd ~``` $\rightarrow$ go to home directory

```mkdir foldername``` $\rightarrow$ make a new directory called "foldername" (replace with whatever name you wish)

```del filename``` $\rightarrow$ delete the folder or file in the current working directory called "filename"

**Additional tip**: the $\uparrow$ and $\downarrow$ keys scroll through previous commands you have entered. *TAB* autocompletes commands.

### Running Programs From a Shell

Having successfully navigated to a directory, we now wish to run programs from our working directory using command line inputs. We will review the basic syntax here, then practice it for real in Part 2 by installing and running **Git** via a shell.

In the simplest case, you can run a program by typing its name into the prompt and pressing ```enter```. This works for programs that can be directly read by your operating system, such as those with the extension ```.exe``` (executable file).

```powershell
$ my_program.exe
```

This isn't always the case. Most programs require additional programs/dependencies installed in order to be run by your machine. Provided you have installed the necessary dependencies in a place accessible from the current working directory (more on this later), you can run the program by first specifying the dependency, then the program you wish to run. For example, say we have a python program called ```data_analysis.py```. In order to run this from a shell, we need to specify that this program should be run via the *python interpreter* by typing:

```powershell
$ python data_analysis.py
```

Similarly, if you have a program called ```data_analysis.R```, and you have R installed on your machine, you can run it using:

```powershell
$ Rscript data_analysis.R
```

Or if you want to use the program ```jupyter``` to run a *jupyter notebook*:

```powershell
$ jupyter notebook
```

will open a *notebook* in the current working directory.

Take some additional practice navigating your computer's file system and running programs from your chosen shell. Most computer users are very familiar with their operating system's built in GUI, and it takes time to get used to performing operations without the same visual cues. With practice, using a shell becomes much easier, and often helps with broadening one's understanding of how their computer works "under the hood" of the GUI.

## Tutorial on Git and GitHub.
For a similar tutorial page on using Git and GitHub see the accompanying page [here](git_crash_course.html). 