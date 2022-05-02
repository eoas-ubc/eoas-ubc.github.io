# Setting up Jupyter Notebooks

## The Goal

These guidelines will help you to set up your local computer from scratch, so that you can start the **Jupyter Notebook** facility from the command line, then run or edit code or comments in any `*.ipynb` file. Working with othe file types such as Python(`*.py` files), markdown (`*.md` files), or others will be discussed elsewhere.

## The sequence of steps

1. Be sure you can navigate your computer's folders using PowerShell (on windows) or Bash (on Mac).
2. Install the open-source package-management system and environment-management system called `miniconda`.
3. Install the Jupyter software.
4. Run the Jupyter Notebook program to edit and execute "Jupter Notebooks" in your default browser.

Details follow.

## 1. Your command shell

If you are not familiar with using a shell or command-line interface, a good place to start is [here](tut-commandline.md). Or - a more conversational introduction is in our "crash course" page called [Command line & Shells](tut-commandline.md).

## 2. Installing miniconda

The open-source package-management system and environment-management system we use is `miniconda`. Its purpose is outlined at the conda documentation site [here](https://conda.io/projects/conda/en/latest/index.html). `Miniconda` is a minimal version of this package management tool that includes only the components necessary for running `conda` and `Python`.

It would be good to start with a fresh install of the necessary tools and packages using [miniconda](https://docs.conda.io/en/latest/miniconda.html).
If you're new to the conda "environment manager", these links are helpful:

- [Conda environments guide](https://towardsdatascience.com/a-guide-to-conda-environments-bc6180fc533)
- Conda forge [user introduction](https://conda-forge.org/docs/user/introduction.html)
- Using [Conda Lock, from pypy.org](https://pypi.org/project/conda-lock/)

## 3. Getting started with Jupyter Notebook

Jupyter software is easily installed following directions under the heading **Getting Started with Classic Jupyter Notebook** on the [Jupyter installation](https://jupyter.org/install.html) page. Do NOT bother installing JupyterLab at this stage.

## 4. Using Jupyter Notebook for the first time

A well-paced tutorial from August 2020 is [How to Use Jupyter Notebook in 2020: A Beginner’s Tutorial](https://www.dataquest.io/blog/jupyter-notebook-tutorial/). The introduction to using Jupyter notebooks starts at the top and goes to the section "**Example Analysis**".

After that, the tutorial becomes more of a "python" tutorial. It is quite good and worthwhile if you are new to Python. The third section called "**Sharing Your Notebooks**" introduces you to GitHub - again, it is well done, and worthwhile if you are new to using GitHub. *(Note: this tutorial is online, but apparently not "opensource". We may want to find one that has a Creative Commons license, so we can clone it and take charge of it for future maintenance purposes.)*
