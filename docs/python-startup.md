# Getting started with Python and Jupyter

## Why Python

**Python** is a *high level programming language,* meaning it is comparatively easy for humans to read. Python programs are executed by a *python interpreter,* which takes python code, reads it into a processor (the CPU on your computer, or via an internet connection on a suitable server) and returns a result. This process is repeated over and over for each line of code, often taking the result of one line and feeding it into the next.

Python is also *open source*, meaning there are no fees to download/use python, and anyone is free to add to the Python code base. This is a major reason for Python's growing popularity in the scientific community, there are many add ons (called *packages*) developed by other scientists specifically for the type of programming we want to do in this course, with more being added every day!

Python programs can be made to run as stand-alone programs, or - more commonly for educational purposes - a **Jupyter Notebook** can be used as an evironment for writing, debugging and running Python codes.

### Learning Python

There are numerous tutorials, courses or articles about learnign Python. It is beyond the scope of these documents to teach Python.

**Project Pythia's** [foundations page](https://foundations.projectpythia.org/landing-page.html) includes getting started pages for Python, Jupyter and GitHub. Also tutorials on seven key Python scientific packages: NumPy, Matplotlib, Cartopy, Datetime, Pandas, Data Formats, and Xarray. Other sources include:

* DSCI 100 (some sections use Pyton, some use "R"), Introduction to Data Science (in the Statistics Department)
* EOSC 211, Computer Methods in Earth, Ocean and Atmospheric Sciences (in the Dep't of Earth Ocean and Atmospheric Sciences)
* An opensource textbook, adapted for  UBC coures EOSC 211 and ATSC 301, is [Problem Solving with Python](https://problemsolvingwithpython.com/) by by Dr. [Peter Kazarinof](https://github.com/ProfessorKazarinoff).
* Another free texbook worth considering is [Think Python, 2nd edition](https://greenteapress.com/wp/think-python-2e/).
* If you have learned some (even a little) Python and want to check those skills, see our [Python Skills Check](SkillsCheck-solns.ipynb) page.
* The [W3schools tutorials](https://www.w3schools.com/) (especially the [Learn Python](https://www.w3schools.com/python/default.asp) tutorial) are an effective way to learn from scratch or to remind yourself of details easily forgotten.
* And many more ... the variety and quality of Python learning materials is huge.

## What is a Jupyter Notebook

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
