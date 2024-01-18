# Introduction to version control and Git

See our [short discussion](tut-git-github.md) of why it is important to learn how to manage your workflow with collaboration and version control using Git and GitHub.

## Using Git for local version control

"*Local version control*" means keeping track of work you are doing alone (i.e. without sharing the effort with collaborators) and on your own computer without relying on an separate place or *repository* for storing and managing your work and all its versions.

The remainder of this page explains how to set up a *repository* (for code or any other text-based work) on your computer which backs up your work each time you make a change (*making commits*).

### Setting up

Using Git for version control (either alone or with an online *repository* manager like GitHub) assumes the following:

* You are familiar with using a terminal or shell interface on your computer - i.e. working "at the command line". See the [Command line and shells](tut-commandline.md) page for more details.
* It is common (but not essential) to be using *environments* on your computer and a package or environment manager like Conda or Mamba. See our [environments](tut-conda_environs.md) page for more details.

Installing Git software is easiest **after** installing a package management system such as Conda or Mamba. Simply type `conda install git` at the commandline, and the Git software will be installed. (By the way, a succinct sequence for installing Conda then Git on either MacOS or Windows computers can be seen in P. Austin's [Numerical Methods course manual](https://phaustin.github.io/numeric/doc_notebooks/course_bootstrap/installing_jupytext.html).)

If you are not using environment manager like Conda, install Git using these [instructions here](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git). If you do it this way you must associate a username and email address with your git installation by opening a shell and typing:

```powershell
$ git config --global user.name "Max Planck"
$ git config --global user.email mplanck@example.com
```

The name and email you enter will be attached to each commit you make to your projects or ones you collaborate on.

## Local version control, or tracking work on your own computer

Once Git is installed on your own computer it can be used to manage versions as you work on your project. To use Git you must first *initialize a repository* for our project. Open a shell and navigate (change directory using `cd`) to your working folder (called `my_folder` for now), or make a new folder and navigate to it. Then type `git init` to create the repository. For example:

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

**One last point:** If you want, you can combine several repos into one big repo as Git sub-repositories, perhaps for organizational purposes. See [the tutorial here](https://github.com/EmaroLab/docs/wiki/GitHub-Tutorial-to-Manage-Project-with-SubRepositories).

That is all we'll cover here. For more comprehensive introductions and tutorials see the table of recommendations below.

---

## Git commands used on this page

For reference, here are all of the git commands used in this tutorial.

`git config --global user.name "Max Planck"` =  assign your name to your git repository (only do this once when you install git)

`git config --global user.email mplanck@example.com`  =  assign your email address to your git repository (only do this once when you install git)

`git init`  =  create a new repository in the working directory

`git status`  =  show the status of the repository, which files are tracked and which have uncommitted changes

`git add <file>`  =  add ```<file>``` to the staging area

`git add .`  =  add all files in the working directory to the staging area

`git rm --cached <file>`  =  remove ```<file>``` from the staging area

`git commit -m 'my commit message'`  =  commit files in the staging area, and include a commit message

`git log -1`  =  show the previous commit hash, author, and time
