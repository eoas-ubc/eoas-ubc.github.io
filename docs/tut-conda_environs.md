# Environments: Conda, Mamba, and all that

Need to add:

* information about conda-lock files: why, when, how.
* mention other management tools - especially Mamba, including pros/cons/why
* Note from PA (23/03/07): re. mamba -- the original mamba author (great name: Wolf Volprecht) is leading  a new startup that calculates conda-lock files and makes them available over the web.  So our workflow in the future might be something like (see [see https://prefix.dev](https://prefix.dev)):
  1) install mamba from mambaforge
  2) create a new environment by typing "mamba env create windows_url"  or macos_url
* combine this and the other [environment page](tut-programming-environs.md).

## What are environments and why do we need them?

Scientific programming / data science profits greatly from the vast array of Python libraries. This complexity (or "the deep tree of dependencies") requires management. Virtual environments, of which conda environments are one implementation, make this possible. In other words, (Conda) environments enable the easy definition of a complete software environment to run a certain project or application.

In practice, we use "environments" to keep software development and applications reproducible and usable across platforms and between different engineering and client teams. Environments (i.e. environment specifications) define all the pieces or packages that are needed for a program or set of programs to function properly.

(Adapted from a [short video lecture](https://vxuni.com/lectures/conda-environments/). Also, [here](https://protostar.space/why-you-need-python-environments-and-how-to-manage-them-with-conda) is an easy-to-read reference about "why" environments.)

## Pip vs Conda

Adapted from a short article at [Medium](https://medium.com/analytics-vidhya/understand-conda-and-pip-9e5c67da47cc).

### Pip (comes built-in to Python)

Pip is the Python Packaging Authority’s recommended tool for installing packages from the Python Package Index (PyPI). Pip installs packages like numpy, pandas, matplotlib etc. , along with their dependencies.

### Conda

Conda is an open source package management system and environment management system. It quickly installs, runs and updates packages and their dependencies. It was created for Python programs, but it can package and distribute software for any language. The Conda package and environment manager is included in all versions of Anaconda, Miniconda, and Anaconda Repository.

[The Getting Started](https://conda.io/projects/conda/en/latest/user-guide/getting-started.html) page for Conda is great, however it is not necessarily a good first step. It assumes you are clear about what an environment is - why it exists, what is needed to manage it.

* [Conda documentation](https://docs.conda.io/projects/conda/en/4.6.1/index.html) version 4.6.1 (Oct 2020).
* [Conda Cheat sheet](https://docs.conda.io/projects/conda/en/4.6.0/_downloads/52a95608c49671267e40c689e0bc00ca/conda-cheatsheet.pdf) (PDF).

### Installing Conda

* Anaconda is large and very "complete". Miniconda is small and usually adequate. 
  * Install [miniconda via conda installation docs](https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html).
  * Alsterantive installation instructions from P. Austin's [Numerical methods course](https://phaustin.github.io/numeric/doc_notebooks/course_bootstrap/installing_jupytext.html).
* For the environment, a reasonable starting point is `numeric.yml` from P. Austin's course.
  * Here is a [direct link to the yml file](https://github.com/phaustin/numeric_students/blob/downloads/utils/numeric.yml).
  * Put it somewhere (eg. A repos folder), cd to that folder then run:

```bash
    conda env create -f numeric.yml
    conda activate numeric
```

Verify successful installation by typeing `conda info` at the prompt.

## Specifying the environment: the `*.yml` file

From a [short set of notes](https://vxuni.com/lectures/conda-environments/) with accompanying video (which is a bit "quick", but is cmd line focused and explains where environments are built).

* Usually, a file called environment.yml is built by hand to specify packages needed for an environment. 
* Alternatively, command "conda env export" will build a list with precise packages and their versions. This is very exact.
* If there is an environment.yml  file in your pwd <em><span style="color:green">I found the "in your pwd" a bit confusing since pwd is a command, but I understand that's it's trying to check if there's an environment.yml file in the project directory. Maybe it would be more clear to replace "pwd" with "directory" or "project"?</span></em>, then command `conda create` generates that environment <em><span style="color:green">I also had troubles understanding this because I interpreted it as being able to create a conda environment just be typing `conda create` by itself if there was an conda environment file called environment.yml in your project. However, typing `conda create` with an environment.yml file in the current directory returns a `CondaValueError: The target prefix is the base prefix. Aborting.` error</span></em>. 
  * The .yml file could have a different name, in which case these commands must specify that name using the `-f` parameter for "file". i.e.: `conda env create -f envname.yml`. 
* After it is ready, `conda activate` will set the environment ready to use (or add the "name.yml" file's name if it is not environment.yml). <em><span style="color:green">For me, `conda activate` only activates the base conda environment that was initialized when miniconda was installed for me. To activate the environment, I do one of three things. (1) I use the command specified in the installation log in the shell window from when conda was creating the environment. (2) Open the environment file, I find the environment name by looking for the the "name" key in the file. (3) Type `conda info --envs` in my shell to list out all my conda environments.</span></em>
* Alterantive to create: use `conda env update`. This automatically updates the environment specified in that file if one already exists, or creates it if it doesn't. <em><span style="color:green">Precondition for this command is that the environment file name is "environment.yml". If the environment file name isn't "environment.yml", use `conda env update --file envname.yml.</span></em>

```bash

```
