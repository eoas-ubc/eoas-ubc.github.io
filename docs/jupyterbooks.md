# Jupyter Books

This page outlines one approach to building [Jupyter books](https://jupyterbook.org/intro.html). It involves:

1. creating pages in `Markdown` or JupyterNotebook `*.ipynb` files, 
2. converting to HTML using the [Jupyterbook](https://jupyterbook.org/intro.html) library, then 
3.  delivering to a GitHub website repository using the [ghp-import package](https://pypi.org/project/ghp-import/), a lightweight Python package for pushing HTML content to a GitHub repository.

(The "normal approach" to displaying websites in your GitHub account works fine (see [https://pages.github.com/](https://pages.github.com/)) but requires finished HTML and related files. It does NOT work to simply generate a Jupyter book from your Markdown, then transfer the resulting HTML to your `username.github.io/` repo.)

### Basic references

- Jupyter books documentation starts at [jupyterbook.org](https://jupyterbook.org/intro.html).
- Markdown 1: The "plainest" version of markdown that Jupyter Books understands is [CommonMark](https://commonmark.org/).
- Markdown 2: Jupyter Book supports any Markdown syntx that is upported by Jupyter Notebooks. See details [here](https://jupyterbook.org/file-types/markdown.html).
- Markdown 3: [MyST Markdown](https://jupyterbook.org/content/myst.html) is also understood, which is derived from RMarkdown language used in RStudio.

## 1. Getting started

### 1.1 Installing Jupyter Book and ghp-import
Install via pip (details [here](https://jupyterbook.org/start/overview.html)): 
```
pip install -U jupyter-book
```

After writing content, structuring the table of contents, etc. the [ghp-import](https://pypi.org/project/ghp-import/) program delivers a prepared Jupyter Book to an individual's, or organization's repository. Install this utility as follows:

```
pip install ghp-import
```
Your working environment should include:
```
  - ghp-import
  - jupytext
  - jupyter-book
```
### 1.2 Files, folders, repositories and branches

Put Markdown files for each page, and the `_config.yml` and `_toc.yml` files in a folder called `docs` under the repository's root. Put images in an `images` subfolder under `docs`. Put other files (like PDFs) in a folder under the root ("parallel" with the `docs` folder) and then move these by hand as a last step (see below). 

### 1.3 Branches for editing and publishing

* If the website is for an individual GitHub repository then follow directions on the [Publish your book online](https://jupyterbook.org/start/publish.html#publish-your-book-online-with-github-pages) page of Jupyter Book documentation.
* If the website is for a GitHub "organization" (like this one - eoas-tlef), then push resulting website content to the `master` branch of the organizations GitHub repository. Content can be edited in a separate branch (eg. `docs`), or a separate repository if you prefer. More details below.

## 2. Preparing content

**Individual pages** are written in individual Markdown files. Tables of contents are defined, "code" for including figures, math, references, and other features are described in documentation, first in the [Creat your first book](https://jupyterbook.org/start/your-first-book.html) tutorial, and in more detail under the [Topic Guides](https://jupyterbook.org/basics/organize.html) sections of that documentation.

**Non-Markdown content** like PDF files, images, etc. need to be managed by keeping them in suitable folders (eg. `\assets`). They will be copied into corresponding locations after building the HTML.

For **images**, a choice of syntaxes is available for [including images](https://jupyterbook.org/content/figures.html). Some syntax options explained there are more versatile that others, so use trial and error to ensure your images appear as expected. For example, this inline HTML approach below doesn't seem to keep track of image locations properly:

```bash
<img src="./images/logo-04sm.png" alt="logo" width="100px">
```

Images can be included as numbered figures; the following does seem to track images locations during the build.

```{figure} ./images/logo-04sm.png
---
height: 100px
name: directive-fig
---
Here is a numbered figure with a caption!
```


## 3. Building a Jupyter Book

Work in the repository's `docs` branch. Edit Markdown, `_toc`, and/or Jupyter Notebook files in the repository's `docs` folder. Be SURE to commit finished edits to the `docs` branch and `push` to the GitHub repo's corresponding `docs` branch (or your fork of it). Then you can "build" the book.

To work with a clean build, delete the `_build` folder's contents "by hand", or empty it by running:

```bash
jb clean docs/
```

If jupyter execution is cached, this command will not delete the cached folder. To remove the build folder _including_ `cached` executables, run:

```bash
jb clean --all docs/
```

Make the book by running the following command from the repository's root folder:

```bash
jb build docs/
```

Test the result locally by opening the local `index.html` file that should be in the `docs/_build/html` folder.

## 4. Publishing the Jupyter Book online

To publish to your GitHub repository for public viewing, follow instructions [here](https://jupyterbook.org/start/publish.html#publish-your-book-online-with-github-pages), the `ghp-import` utility should have been installed (above).

HOWEVER, to publish to an Organization's repository (such as `eoas-tlef`) the steps are slightly different because the `master` branch at `upstream` is where the website is rendered, and the "main" branch for un-rendered files (markdown, etc.) is the `docs` branch. (Yes, it is a  little confusing.)

1. Complete the `jb build` step so there is a folder under your `\docs` folder with all the HTML.

2. Make the necessary folder under that `\docs` folder to take the "other" files, like PDFs. For example, we put PDFs in the folder `docs\pdffiles`.

3. Copy all necessary files to that folder. This is necessary because the `jb build` command doesn't know how to find and correctly place these files.

4. Make sure your local git repo knows where `upstream` is. If you are using a fork / rebase workflow, this should be clear. Then use `ghp-import` as follows.

   ```bash
   ghp-import -f --no-jekyll -p -b master docs/_build/html -r upstream
   ```
## 5. Workflow involving a fork of the original

Project docs are at https://github.com/eoas-ubc/eoas-ubc.github.io 
Branch "docs" contains markdown files where editing is done.
Branch "master" is what's displayed as https://eoas-ubc.github.io/index.html 

1. Before edits
   1. Initially - fork & clone your own copy of the docs branch
   2. Always - before starting, check that the "docs" branch of your github fork is up to date. Implement a "fetch upstream" if needed. 
   3. On your local clone's "docs" branch, carry out a fetch and merge to ensure you are editing an up to date version.
2. Editing
   1. Edit  the "docs" branch. Ignore the "master" branch - it is the website and will be created using ghp-import.
   2. Build book using the  jb build docs/  command
   3. Hand-copy (or with a script) any other files (like PDFs) into their required subfolders. (In our case, there is a "pdffiles" folder that should live under the html folder.) NOTE: all references to these "other" files need to point to this subfolder.

   4. Find the website in folder "docs/_build/html" - view this locally.
3. Deliver and synchronize
   1. When ready, push result to your fork using the following:

   ```bash
   ghp-import -f --no-jekyll -p -b master docs/_build/html
   ```

      This means: "_force (-f) with a no-jekyll file, push after commit (-p) to branch (-b) `master` your stuff at `docs/_build/html` to the (default) origin repository_".

	2. Then your fork's "master" branch should be ready to send a pull request.

	3. If that works, also send pull request on "docs" branch. 

4. Finally, make sure original, forked and local cloned versions are up to date.

5. The shortcut approach
	1. Deliver directly to upstream by first defining the upstream remote:
	
   ```bash
   git remote add upstream https://github.com/eoas-ubc/eoas-ubc.github.io
   ```

   2. Then carry out the delivery by specifying upstream as the target:

   ```bash
   ghp-import -f --no-jekyll -p -b master docs/_build/html -r upstream
   ```

	3. Your own fork will now be out of sync and needs fixing online.

	4. TO BYPASS YOUR OWN FORK COMPLETELY requires a rebase workflow, which I'm not yet comfortable with (Feb 8, 2022). However, the sequence listed [here](https://medium.com/@topspinj/how-to-git-rebase-into-a-forked-repo-c9f05e821c8a) seems to work. It does leave your own forked repository out of sync, but maybe that fork isn't really needed? To be discussed.  
