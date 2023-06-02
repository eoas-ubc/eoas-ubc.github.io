# Setting up Jupyter Notebooks

These guidelines will help you to set up your local computer from scratch, so that you can start **Jupyter Notebooks** from the command line, then run or edit code or comments in any `*.ipynb` file.

## What are Jupyter Notebooks
**Jupyter Notebooks** is an IDE, or integrated development environment which have gained popularity amoung the science and educational communities for processing data, creating scientific figures, solving numerical equations, and learning or sharing code. In a [Jupyter Notebook](https://www.jupyter.org/), code is created in "cells", each of which can be edited and run independently. Later cells in a Notebook normally depend on results of earlier cells, but each cell can be modified and run so long as cells above have been successfully run first. Rich documentation (including equations) is commonly included as independent cells written in a standard MarkDown text-based language.

### If you are using notebooks via a Jupyter Hub
What is a Jupyter Hub? It is a computer serving or delivering Jupyter Notebooks to you via an internet connection. This way you can use Jupyter Notebooks without installing any software on your on computer.

Information about the UBC Open JupyterHub can be found [here}(https://lthub.ubc.ca/guides/jupyterhub-instructor-guide/). That page mainly targets instructors wanting to incorporate Jupyter Notebooks into courses they teach or their research projects, but the information is public.

> For an introduction to actually using the open UBC Jupyter hub see this PDF page called **<a href="files\jupyter_open_quickstart.pdf">UBC's Open Jupyter</a>**.

### Installing Jupyter Notebooks on a personal computer

This is the sequence only; details are given on pages linked after step 4.

1. Be sure you can navigate your computer's folders using PowerShell (on **Windows**) or Bash (on **Mac**).
2. Install the open-source package-management system and environment-management system called `miniconda`.
3. Install the Jupyter software.
4. Run the Jupyter Notebook program to edit and execute "Jupter Notebooks" in your default browser.

>If you work on a **Windows** computer, use <a href="files\python-setup_windows_short_2022.pdf">this PDF sheet of instructions</a>. When asked to fetch "lock" file, download using this link: <a href="files\conda-win-64.lock">conda-win-64.lock</a>.

>If you work on a **Macintosh (Apple)** computer, <a href="files\python-setup_macos_short_2022.pdf">this PDF sheet of instructions</a>. When asked to fetch a "lock" file, download using one of these links: <a href="files\conda-osx-64.lock">conda-osx-64.lock</a> or <a href="files\conda-osx-arms64.lock">conda-osx-arms64.lock</a>.
