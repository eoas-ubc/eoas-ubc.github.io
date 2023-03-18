# Jupyter Notebook setup: MacOS

_(For Windows users, follow [these alternatiove instructions for computers running Windows 10 / 11](jnb-startup-win.md).)_

If you are not familiar with using a shell or command-line interface, a good place to start is [here](tut-commandline.md). Or - a more conversational introduction is in our "crash course" page called [Command line & Shells](tut-commandline.md).

The context for these instructions is UBC's course [ATSC301](https://www.eoas.ubc.ca/academics/courses/atsc301). It should be easy enough to adapt these instructions for any other context.

## One-time 6-step setup sequence

First find out what model your Mac cpu is, by tapping on the apple icon in the upper left hand corner of the screen and selecting “About This Mac”.  Under “processor” you should see either “Core Intel …” (for older macs) or “Apple M1 or M2” (for Macs built after November, 2020 with the ARM cpu).

### 1. Install miniconda

The miniconda software both manages packages you will fetch later, and includes basic components of Python.

* Download miniconda from https://docs.conda.io/en/latest/miniconda.html; choose the Miniconda3 Windows 64-bit version.
* Choose the Miniconda3 MacOSX 64-bit.pkg version if you are Intel, or the Miniconda3 macOS Apple M1 64-bit pkg if you’re ARM/M1.
* Run the downloaded executable file by opening it, agreeing to the licenses and accepting all defaults.
* You should install for “just me”.

### 2. Run the MacOS terminal

* Open Spotlight search with the icon on your menu bar (it looks like a magnifying glass) OR by holding command-space, then type “terminal” to open a terminal.
* At the terminal prompt, type `zsh`
* Verify that python is installed by typing `which python` You should see something similar to `/Users/phil/opt/miniconda3/bin/python`.

### 3. A few basic command line instructions

Use these few basic command line instructions to see where you are (which folder) and what’s there.

`mkdir -p ~/repos/a301`

where “~” means “my home folder” and corresponds to the  path you see when you type

`echo $HOME`

At the prompt, change to this directory by typing

`cd ~/repos/a301`

Then type `pwd`

This should show your a301 folder as your current working folder.

This is called a “path”. Copy and paste it into whatever you use for keeping notes as you will use it anytime you want to use jupyter notebook in future.

### 4. Download the specifications for your conda environment

(For more information see the explanation of “why environments” in Resources below.)

Download the file named `environment.yml` from the following Dropbox link:

https://www.dropbox.com/sh/uosacqkiw7f5rmk/AABKGhCMXXkI3Q21U49uFIEya?dl=0

At a prompt type `open .` (the word open followed by a period) to start Finder in this folder.

Use Finder to move your `environment.yml` file from your Downloads folder to your  a301 folder. You should see the filename listed when you type `ls` at the command prompt. 

### 5. Build the "environment" for running Python and Jupyter Notebooks

In the folder `~/repos/a301` install the mamba installer by typing (no linebreak):

`conda install -c conda-forage mamba`

When this completes create the a301 environment typing:

`mamba env create –-name a301 –-file environment.yml`

**Note** - there are two minus signs in front of name and file.

Mamba will begin downloading and installing packages. When it's done, type

`conda env list`

You should see a list of two environments: `base` and `a301`.

### 6. Set your environment to start programming

Activate the a301 environment by typing:

`conda activate a301`

----

## To use Jupyter Notebook any time

1. Open Spotlight search with the icon on your menu bar (it looks like a magnifying glass) OR by holding command-space, then type “terminal” to open a terminal.

2. Change to your a301 folder by typing

    `cd ~/repos/a301`

3. To make the packages specified by the “eosc211” environment available to Jupyter, type:

    `conda activate a301`

4. To test Jupyter Notebooks, type

    `jupyter notebook`

    You should see your browser open a new window with the Jupyter Notebook interface. If not, get help from the instructor / TA.

5. You’re ready to begin working as you would on the jupyter hub.

    To download all the course notebooks, type (no linebreak)

    `git clone https://github.com/phaustin/a301_students_eoas.git`

----

## Resources

* Using the command line and “shells”: [https://eoas-ubc.github.io/tut-commandline.html](https://eoas-ubc.github.io/tut-commandline.html)

* Explanation of “why environments”: [https://www.freecodecamp.org/news/why-you-need-python-environments-and-how-to-manage-them-with-conda-85f155f4353c/](https://www.freecodecamp.org/news/why-you-need-python-environments-and-how-to-manage-them-with-conda-85f155f4353c/)

* Jupyter Notebook documentation:
  * Jupyter lab: [https://jupyterlab.readthedocs.io/en/stable/](https://jupyterlab.readthedocs.io/en/stable/)
  * Jupyter notebook: [https://realpython.com/jupyter-notebook-introduction/](https://realpython.com/jupyter-notebook-introduction/)
