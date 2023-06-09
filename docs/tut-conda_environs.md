# Environments: Conda, Mamba, and all that

>**Note:** If working in a shell (i.e. at the command line) is new or confusing, check out the [Command line & Shells" tutorial](tut-commandline.md).

## What are environments and why do we need them?

(Adapted from a [short video lecture](https://vxuni.com/lectures/conda-environments/).)

Scientific programming & data science profit greatly from the vast array of Python libraries. But libraries are not usually independent; they depend upon other libraries, creating a sometimes complex "the deep tree of dependencies". Therefore, libraries require management. Virtual environments, of which conda environments are one implementation, make this possible. In other words, (Conda) environments enable the easy definition of a complete software environment with all the libraries and their interdepnedencies, necessary for running a certain project or application.

Using environments also helps ensure that software development and applications are reproducible, usable across platforms, and between different engineering or client teams. Environments (i.e. environment specifications) define all the pieces or packages that are needed for a program or set of programs to function properly.

"Setting the environment" means telling your computer which libraries or packages must be accessible for the work you are about to carry out. It might be a set of python libraries necessary for the code you will write. Or you may be running code that needs to know how to find the components (libraries of code) it uses to work. For example, many scientific or data science programs use a common Python library of routines for plotting data called "matplotlib". Setting the environment essentially establishes the list of needed libraries for work you are about to do.

For a little more detail, see this oldish (2018) but still relevant and easy-to-read explanation: [Why you need Python environments and how to manage them with Conda](https://protostar.space/why-you-need-python-environments-and-how-to-manage-them-with-conda).

## Pip vs Conda vs Mamba

Adapted from a short article at [Medium](https://medium.com/analytics-vidhya/understand-conda-and-pip-9e5c67da47cc).

### Pip (comes built-in to Python)

Pip is the Python Packaging Authority’s recommended tool for installing packages from the Python Package Index (PyPI). Pip installs packages like numpy, pandas, matplotlib etc. , along with their dependencies.

### Conda

Conda is an open source package management system and environment management system. It quickly installs, runs and updates packages and their dependencies. It was created for Python programs, but it can package and distribute software for any language. The Conda package and environment manager is included in all versions of Anaconda, Miniconda, and Anaconda Repository.

[The Getting Started](https://conda.io/projects/conda/en/latest/user-guide/getting-started.html) page for Conda is great, however it is not necessarily a good first step. It assumes you are clear about what an environment is - why it exists, what is needed to manage it.

* [Conda documentation](https://docs.conda.io/projects/conda/en/4.6.1/index.html) version 4.6.1 (Oct 2020).
* [Conda Cheat sheet](https://docs.conda.io/projects/conda/en/4.6.0/_downloads/52a95608c49671267e40c689e0bc00ca/conda-cheatsheet.pdf) (PDF).

### Mamba

Mamba is a package manager that is fully compatible with Conda but is supposed to be significantly faster. All commands and actions are the same as conda, so learning one will mean you can use the other easily. See [Mamba documentation](https://mamba.readthedocs.io) for more details. A sort of "superset" of Mamba that is often mentioned is "[Mamba-forge](https://github.com/conda-forge/miniforge#mambaforge)", which is really just an easily installed package containing the Mamba Package Manager along with some pre-configured components. Yes it's all a bit confusing; the article [Managing Scientific Python environments using Conda, Mamba and friends](https://focalplane.biologists.com/2022/12/08/managing-scientific-python-environments-using-conda-mamba-and-friends/) (Dec 2022) is a well-written introduction with guidelines, plus a few notes about how things can go wrong.

```{note}
Any set of instructions referring to Conda will be essentially identical if Mamba is used as the package manager instead of Conda.
```

```{note}
The pace of change (usually implying improvement) is so rapid that best practices are already out of date as soon as documentation is produced. For example, there is an emerging effort to simplify package management that can be explored (as of June 2023) starting at the [Prefix-dev](https://prefix.devp) website and their [documentation pages](https://prefix.devp).
```

### Installing Conda

* Anaconda is large and very "complete". Miniconda is small and usually adequate.
  * Install [miniconda via conda installation docs](https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html).
  * Alternative installation instructions from P. Austin's [Numerical methods course](https://phaustin.github.io/numeric/doc_notebooks/course_bootstrap/installing_jupytext.html).

### Installing Mamba

Follow directions at the Mamba documentation's [install page](https://mamba.readthedocs.io/en/latest/installation.html).

### "Setting" the enviornment

Once a package management system is installed (Conda, Mamba, etc.), 

* For scientific computing, a starting environment could be as simple as the following text file:

```bash
name: anyname
channels:
  - conda-forge
  - defaults
dependencies:
  - python=3.9.*
  - pandas
  - numpy
  - matplotlib
  - jupyter=1.*
  - pip
```

* An example of an enviornment requiring more packages is P. Austin's  `numeric.yml` environment, used in UBC's ATSC409 numerical methods course. Here is a [direct link to the yml file](https://github.com/phaustin/numeric_students/blob/downloads/utils/numeric.yml).
* To "set" the environment, put the enviornment file somewhere (eg. in a repository folder), change to that folder (the command line `cd` command) then run:

```bash
    conda env create -f numeric.yml
    conda activate numeric
```

Verify successful installation by typing `conda info` at the prompt.

## Specifying the environment: the `*.yml` file

From a [short set of notes](https://vxuni.com/lectures/conda-environments/) with accompanying video (which is a bit "quick", but is cmd line focused and explains where environments are built).

* Usually, a file called environment.yml is built by hand to specify packages needed for an environment.
* Alternatively, command "conda env export" will build a list with precise packages and their versions. This is very exact.
* Conda's (or mamba's) `create` command is used to generate a new environment.
* The "activate" commmand is used to make an existing environment the "current" environment so code you want to run now will have all the necessary libraries and dependencies in place.
* It is common to have these necessary components of an environment specified in an environment file. This is often called `environment.yml` but could have any name.
* To make a new environment based on such a file, the command line instruction is `conda env create -f anyname.yml`.
* To apply the correct parameters with the `create` command, see the documentation, or a cheat sheet of conda instructions like [this one here](https://docs.conda.io/projects/conda/en/4.6.0/_downloads/52a95608c49671267e40c689e0bc00ca/conda-cheatsheet.pdf).
* Then, to make use of this enviornment, the conda command `activate` will set the environment ready to use. Again, to apply the correct parameters with the `activate` command, see the documentation, or a cheat sheet of conda instructions like [this one here](https://docs.conda.io/projects/conda/en/4.6.0/_downloads/52a95608c49671267e40c689e0bc00ca/conda-cheatsheet.pdf).
* Your environment can be updated with latest libraries using the command `conda env update --file envname.yml` (or if the environment file is called "*environment.yml*", you can leave off the `--file ...` parameter).

## Conda Lock files

Use of so-called [Conda lock files](https://pythonspeed.com/articles/conda-dependency-management/) enables installations that are more reliable and that don't require much understanding of command lines, packages, environments and so on.

Details are not included here (yet) but conda-lock files are used for installations referenced on our [Python/Jupyter Startup page](python-startup.md).

*(Note from PA (23/03/07): re. mamba -- the original mamba author is leading  a new startup that calculates conda-lock files and makes them available over the web.  So an optimal workflow in the future might look something like what is shown at [https://prefix.dev](https://prefix.dev))*
