# Git Introduction

## Introductory remarks

(Derived from a conversational "coding crash course" [here](https://github.com/AndrewLoeppky/crash_course/blob/master/coding_crash_course.md).)

Writing and debugging code or documentation usually involves a lot of trial and error, so it makes sense to retain earlier versions of your project so you can revert to the old version to try again. Trying to manually keep track of versions is messy and prone to making mistakes. [**Git**](https://git-scm.com/book/en/v2/Getting-Started-What-is-Git%3F) was developed to address this challenge. It is a file management and version control system that allows you to periodically save your work (called making a `commit`) with notes and names, dates, etc.. Then it allows you to easily revert to previous versions, and also to join (or `merge`) work contributed by colleagues in an organized, reversible, secure and convenient manner.

All professional programmers carry out these steps, and most use Git to keep track of their work and collaborate with others. There is a huge range of capabilities so it is best to start with the simplest possible workflow, then progress from there depending on your (or your team's) specific needs.

The instructions below will set up a *code repository* on your computer which backs up your work each time you make a change (*making commits*). Once you gain some familiarity with *committing* and *pushing* using Git, you will be ready to tackle the full *pull request workflow* (meant for collaborating on projects with larger groups).

Installing Git software on your own computer can be done many ways. We recommend doing this **after** installing the Conda package management system using our instructions [eleswhere](tut-conda_environs.md). A succinct sequence of steps can be found in P. Austin's [Numerical Methods course manual](https://phaustin.github.io/numeric/doc_notebooks/course_bootstrap/installing_jupytext.html).

----

### An Aside

It is also possible to install Git all by itself by following these [instructions here](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git). If you do it this way you must associate a username and email address with your git installation by opening a shell and typing:

```powershell
$ git config --global user.name "Max Planck"
$ git config --global user.email mplanck@example.com
```

The name and email you enter will be attached to each commit you make to your projects or ones you collaborate on.

----

## Local version control, or tracking work on your own computer

To track work using Git you must first *initialize a repository* for our project. Open a shell and navigate (change directory using `cd`) to your working folder (called `my_folder` for now), or make a new folder and navigate to it. Then type `git init` to create the repository. For example:

```powershell
$ cd my_folder
$ git init
```

Open a File Explorer (or Finder on a Mac) window and navigate to your new folder. You may see a folder called `.git`. This is a "hidden" folder, so if you cannot see it you must adjust your 

```{note}
Never change anything in this hidden folder! This is where Git keeps all the complicated information needed to manage version control and sharing of collaborative work.
```

Now, to add some content to your folder create a file called `my_example.txt` using a text editor and save it in your folder.

Currently `my_example.txt` is saved on our hard drive but it is **not yet** being tracked by git. However, you can check the *status* of the git repository by typing:

```powershell
$ git status
```
You should see something similar to:

```powershell
$ git status
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        my_example.txt

```

`my_example.txt` is listed as an *untracked file,* which means we have not saved any changes using git. Incorporating files into a git repository happens in two steps. First files are *added* to a staging area, then *committed* to the repository and logged. This sounds complicated but it enables some powerful functionality that becomes evident as you gain experience. 

```powershell
$ git add my_example.txt
```

or to stage all files in the working directory, (right now there is only one) type:

```powershell
$ git add .
```

If we wish to see the result of what we just did, type `git status` again (not necessary, but a good idea). You should see:

```powershell
$ git status
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
        new file:   my_example.txt
```

Notice that a helpful hint is given, reminding you that files can be removed from the staging area using `git rm --cached <file>`. 

Once all new files are staged it's time to *commit* them (only `my_example.txt` in this case) to our repository. You are required to include a short message with every commit, summarizing the changes you made in a few words. "initial commit" is a good commit message for the first commit to a repository. Type:

```powershell
$ git commit -m 'initial commit'
```

Once you press `enter`, git saves everyting from the staging area to your repository, logs the author (you), time when the commit was made (now), and assigns a *commit hash,* a unique alphanumeric key used to identify this particular commit. To show the log for your most recent commit, type:

```powershell
$ git log -1
```

(To see the two most recent commits, replace the `-1` with `-2`) The output should look something like:

```powershell
commit dda127f4fe6ac60bd8fbba18d15931ae5d182733 (HEAD to master)
Author: Max Planck <mplanck@example.com>
Date:   Mon Aug 31 15:37:36 2020 -0700

    initial commit
```

We can also check `git status` one more time to see that our file has been committed successfully.

```powershell
$ git status
On branch master
nothing to commit, working tree clean
```

---

That is all we'll cover here. For more comprehensive introductions and tutorials see the table of recommendations below. For reference, here are all of the git commands used in this tutorial.

`git config --global user.name "Max Planck" ` =  assign your name to your git repository (only do this once when you install git)

`git config --global user.email mplanck@example.com`  =  assign your email address to your git repository (only do this once when you install git)

`git init`  =  create a new repository in the working directory

`git status`  =  show the status of the repository, which files are tracked and which have uncommitted changes

`git add <file>`  =  add ```<file>``` to the staging area

`git add .`  =  add all files in the working directory to the staging area

`git rm --cached <file>`  =  remove ```<file>``` from the staging area

`git commit -m 'my commit message'`  =  commit files in the staging area, and include a commit message

`git log -1`  =  show the previous commit hash, author, and time

---

**One last point:** If you want, you can combine several repos into one big repo as git sub-repositories, perhaps for organizational purposes. See [the tutorial here](https://github.com/EmaroLab/docs/wiki/GitHub-Tutorial-to-Manage-Project-with-SubRepositories).

---

## Backing Up Files On Github

Github is an online *repository* which is used for backing up and sharing code/documents with collaborators. Repositories are copies of your files saved in the cloud, and can be either **public** (visible/accessible by anyone with the URL) or **private** (only accessible to specific users but subject to a subscription fee).

An introduction to using GitHub is provided [on a separate page](git-workflows.md).

---

## Alternative learning resources

There are a great many open-source and commercial tutorials, how-to's and manuals including written pages, tutorials (with exercises, examples etc.), and videos. This table provides some recommendations.

||Description|Type|Comments|
|---|---|---|---|
|1|**[7-part intro. to Git](https://www.neonscience.org/version-control-git-series)** from NEON (National Ecological Observatory Network).|written tutorial website|Succinct, no extra words, includes objectives; very nice. Somewhat derived from Software Carpentry (next item). Includes updating repos via "remote".|
|2|**[Git 101 basics](https://www.youtube.com/watch?v=WBg9mlpzEYU)**|Youtube video (33 mins but play at 1.75 time)|I learned more from this than most other sources, and have watched it several times.|
|3|**[Software carpentry's resources](https://swcarpentry.github.io/git-novice/)** for their hands on workshops.|Well organized website|Includes a workshop schedule, pages for each section & exercises. A bit more wordy than NEON's introduction, but well designed and tested.|
|4|**[Git manual](https://git-scm.com/doc)** and others, from Git.|Manual; book; videos|Detailed documentation and the comprehensive Pro Git book. Four short videos are good introductions.|
|5|**["Best practices" & Git cheat sheet](https://www.jrebel.com/system/files/git-cheat-sheet.pdf)**|PDF page|From a nice (although oldish, 2016) summary by _Rebellabs_ called [Git Cheat Sheet: Commands and Best Practices](https://www.jrebel.com/blog/git-cheat-sheet).|
|6|**[GitHub Forking](https://gist.github.com/Chaser324/ce0505fbed06b947d962)**|MD page|"Fairly standard" procedure: Create a fork; Do your work; Issue a pull request; Merge back into the original project.|
|7|**[Merging vs. Rebasing](https://www.atlassian.com/git/tutorials/merging-vs-rebasing)**|Git tutorial page|One of many pages in a comprehensive [Git tutorial](https://www.atlassian.com/git/tutorials) from Atlassian.com. Their context is Bitbucket (not GitHub) but Git concepts are the same.|
|8|**[LinkedIn Learning "courses"](https://linkedinlearning.ubc.ca)** for UBC faculty and staff|Video courses|Log in using your CWL and search for Git, or GitHub, etc. There are many, but at least they are not quite as random as the unfiltered internet.|
