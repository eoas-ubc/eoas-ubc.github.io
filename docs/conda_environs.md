# Conda & environments

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
* If there is an environment.yml  file in your pwd, then command `conda create` generates that environment.
  * The .yml file could have a different name, in which case these commands must specify that name using the `-f` parameter for "file". i.e.: `conda env create -f envname.yml`. 
* After it is ready, `conda activate` will set the environment ready to use (or add the "name.yml" file's name if it is not environment.yml).
* Alterantive to create: use `conda env update`. This automatically updates the environment specified in that file if one already exists, or creates it if it doesn't.
