# Jupyter Books

This page outlines one approach to building [Jupyter books](https://jupyterbook.org/intro.html). It involves:

1. creating pages in `Markdown` or JupyterNotebook `*.ipynb` files,
2. converting to HTML using the [Jupyterbook](https://jupyterbook.org/intro.html) library, then
3. delivering to a GitHub website repository using the [ghp-import package](https://pypi.org/project/ghp-import/), a lightweight Python package for pushing HTML content to a GitHub repository.

(The "normal approach" to displaying websites in your GitHub account works fine (see [https://pages.github.com/](https://pages.github.com/)) but requires finished HTML and related files. It does NOT work to simply generate a Jupyter book from your Markdown, then transfer the resulting HTML to your `username.github.io/` repo.)

## 1. Workflow involving a fork of the original

First, the outline of steps. Details about installing JupyterBooks and `ghp-import` library are below.

In this project's documentation [repository](https://github.com/eoas-ubc/eoas-ubc.github.io), the "docs" branch contains markdown files where editing is done. The completed website is on the "master" branch and is displayed [here](https://eoas-ubc.github.io/index.html).

1. Before edits
   1. _Initially_ - fork then clone your own copy of the docs branch.
   2. _Always_ - before starting, check that the "docs" branch of your github fork is up to date. Implement a "fetch upstream" if needed.
   3. On your local clone (where editing will be done)
      - ensure jupyterbooks is in your environmnet,
      - go to the clone's home directory and run `git branch -v` to ensure you are working on the docs branch. 
      - Check that `git status` says you are up to date.

2. Editing, building, and checking results before publishing
   1. Edit Markdown, `_toc`, and/or Jupyter Notebook files in the repository's `docs` folder. Ignore the "master" branch - it is the website and will be created using `ghp-import`.
   2. Be SURE to commit finished edits to the `docs` branch and `push` to the GitHub repo's corresponding `docs` branch (or your fork of it). Then you can "build" the book.
   3. To work with a clean build run **`jb clean docs/`**. If jupyter execution is cached, this command will not delete the cached folder. To remove the build folder _including_ cached executables, run **`jb clean --all docs/`**.
   4. Make the book by running the following command from the repository's root folder: **`jb build docs/`**.
   5. Test the result locally by opening the local `index.html` file that should be in the `docs/_build/html` folder.
   6. Hand-copy (or with a script) any other files (like PDFs) into their required subfolders. (In our case, there is a "pdffiles" folder that should live under the html folder.) NOTE: all references to these "other" files need to point to this subfolder.
   7. Find the website in folder "docs/_build/html" - view this locally.

3. Deliver and synchronize
   1. When ready, push the resulting prepared web pages to your fork using the following (which means: "_force (-f) with a no-jekyll file, push after commit (-p) to branch (-b) `master` your stuff at `docs/_build/html` to the (default) origin repository_"):

      ```bash
      ghp-import -f --no-jekyll -p -b master docs/_build/html
      ```

   2. Then your fork's "master" branch should be ready to send a pull request.
   3. If that works, also send pull request on "docs" branch.
   4. Finally, make sure original, forked and local cloned versions are up to date.

### A shortcut approach

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

---
## 2. Preparing to build Jupyter Books - details

### i. Installing Jupyter Book and ghp-import

Install via pip (details [here](https://jupyterbook.org/start/overview.html)):

```bash
pip install -U jupyter-book
```

After writing content, structuring the table of contents, etc. the [ghp-import](https://pypi.org/project/ghp-import/) program delivers a prepared Jupyter Book to an individual's, or organization's repository. Install this utility as follows:

```bash
pip install ghp-import
```

Your working environment should include:

```bash
  - ghp-import
  - jupytext
  - jupyter-book
```

### ii. Files, folders, repositories and branches

Put Markdown files for each page, and the `_config.yml` and `_toc.yml` files in a folder called `docs` under the repository's root. Put images in an `images` subfolder under `docs`. Put other files (like PDFs) in a folder under the root ("parallel" with the `docs` folder) and then move these by hand as a last step (see below). There should be `README.md` and `LICENSE` files. A `.gitignore` file is recommended to prevent all the HTML and related files being sent when you `push` to GitHub.

### iii. Branches for editing and publishing

- If the website is for an individual GitHub repository then follow directions on the [Publish your book online](https://jupyterbook.org/start/publish.html#publish-your-book-online-with-github-pages) page of Jupyter Book documentation.
- If the website is for a GitHub "organization" (like this one - eoas-tlef), then push resulting website content to the `master` branch of the organizations GitHub repository. Content can be edited in a separate branch (eg. `docs`), or a separate repository if you prefer. More details below.

### iv. Preparing content

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
Various alert box types can be included; details [here](https://jupyterbook.org/content/content-blocks.html).
<div class="alert alert-block alert-info">
<b>Tip:</b> Use blue boxes (alert-info) for tips and notes.
</div>


### v. JupyterBook Publishing Comments

To publish to your GitHub repository for public viewing, follow instructions [here](https://jupyterbook.org/start/publish.html#publish-your-book-online-with-github-pages), the `ghp-import` utility should have been installed (above).

HOWEVER, to publish to an Organization's repository (such as `eoas-tlef`) the steps are slightly different because the `master` branch at `upstream` is where the website is rendered, and the "main" branch for un-rendered files (markdown, etc.) is the `docs` branch. (Yes, it is a  little confusing.)

1. Complete the `jb build` step so there is a folder under your `\docs` folder with all the HTML.

2. Make the necessary folder under that `\docs` folder to take the "other" files, like PDFs and copy all necessary files to that folder. This is necessary because the `jb build` command doesn't know how to find and correctly place these files.

3. Make sure your local git repo knows where `upstream` is. If you are using a fork / rebase workflow, this should be clear. If needed, temporarily set a remote `upstream` location as

   ```bash
   git remote add upstream https://github.com/username/username.github.io
   ```

4. Then use `ghp-import` as follows.

   ```bash
   ghp-import -f --no-jekyll -p -b master docs/_build/html -r upstream   
   ```

5. If desired stop using that location as this repo's `upstream` using: `git remote remove upstream`.

6. Test results by pointing your browser to `username.github.io`. It may take a short time to update.

### vi. Finally some basic references

- Jupyter Books documentation starts at [jupyterbook.org](https://jupyterbook.org/intro.html).
- ghp-import documentation starts at [ghp-import](https://github.com/c-w/ghp-import).
- Markdown 1: The "plainest" version of markdown that Jupyter Books understands is [CommonMark](https://commonmark.org/).
- Markdown 2: Jupyter Book supports any Markdown syntx that is upported by Jupyter Notebooks. See details [here](https://jupyterbook.org/file-types/markdown.html).
- Markdown 3: [MyST Markdown](https://jupyterbook.org/content/myst.html) is also understood, which is derived from RMarkdown language used in RStudio.
