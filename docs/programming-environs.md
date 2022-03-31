# A Guide for Programming Environments

## Prior Assumptions

* you are using a conda distribution of Python (mine is miniconda 3.9 for reference)

* you are moderately comfortable managing files with a shell (im using powershell)
  
## Core Principles

* keep things as simple as possible but not simpler; your code will run faster and be less confusing to debug

* make your project/dependencies exactly reproducible, so any machine can run your code with the same results

## Case Study

You are a researcher recently assigned to a project studying permafrost. It is evident that it is necessary to write some code to process some field data; you volunteer, having just completed a course in python programming using jupyter notebooks in the cloud. You downloaded your own python distribution on your machine with jupyter notebooks (*insert link to another tutorial*) and are ready to get started with your project.

### I. Starting a Project

1) Create a project folder

    ```
    $ mkdir permafrost_proj
    ```

2) activate your base environment (probably already active by default)

    ```
    $ conda activate base
    ```

3) Create a new environment for your project that will inherit all the dependencies installed in `base`.         
   * Notes: the `-n` is a tag meaning "name". Call your environment something sensible and not too long to type

    ```
    $ conda create -n permafrost
    ```

4) Activate your new environment

    ```
    $ conda activate permafrost
    ```

5) install `jupyter` in your new environment

    ```
    $ conda install jupyter
    ```

6) Open a notebook and do some data processing

    ```
    $ jupyter notebook
    ```

7) Soon, you will run into an error like this when you try to import a package from inside the notebook:

    ```python
    ---------------------------------------------------------------------------
    ModuleNotFoundError                       Traceback (most recent call last)
    <ipython-input-1-0aa0b027fcb6> in <module>
    ----> 1 import numpy as np

    ModuleNotFoundError: No module named 'numpy'
    ```

    To resolve it, open another shell (dont use the one that is busy running your notebook) and do:

    ```
    $ conda install numpy
    ```

    Or replace `numpy` with whichever package is missing. Repeat for new packages as you need them. They will be permanently added to your environment so you only have to do this once.

### II. Export Your Environment

Now we want to save the environment with the rest of the project files/code. This is a good idea if you want to i) access your project from multiple computers ii) use version control software like `git` iii) send your code to someone for debugging help (they will need your environment to replicate your bug)

1) Make sure you are in your project directory

    ```
    $ cd permafrost_proj
    ```

2) Export your environment

    ```
    $ conda env export > environment.yml

3) Your project folder should now look something like:
   ```
   project_abstract.docx
   data_processing.ipynb
   make_plots.ipynb
   environment.yml
   ```

4) Save/back up your project folder somewhere. To re-create your environment/project on another machine, download the folder and do:

    ```
    $ cd permafrost_proj
    $ conda env create environment.yml
    $ conda activate permafrost
    ```

    Now you can continue working, knowing your code will perform exactly the same as on your original machine.

## More Commands to Manage Environments

List all available environments

```
$ conda env list
```

List all dependencies in the active environment

```
$ conda list
```

Remove an environment (be careful)

```
$ conda env remove -n permafrost
```

## Helpful Tips

* Make a new environment for every "project," whatever that means to you... I usually create one per course or research topic, sometimes start a fresh one for a complicated sub-project

* Don't install anything on your `base` environment, and dont actually do any work from base (if you leave base totally clean, most code will immediately break and remind you to activate the proper environment for your project)

* Avoid using pip wherever possible (for this workflow). Pip and Conda don't always play nicely together and this can create conflicts.

* Only download one python distribtion on your machine, unless you really know what you're doing and have a good reason for wanting another one.