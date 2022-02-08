# Jupyter Books

The approach to building [Jupyter books](https://jupyterbook.org/intro.html) described here involves: (a) creating pages in `Markdown` or JupyterNotebook `*.ipynb` files, (b) converting to HTML using the [Jupyterbook](https://jupyterbook.org/intro.html) library, then (c) delivering to a GitHub website repository using the [ghp-import package](https://pypi.org/project/ghp-import/), a lightweight Python package for pushing HTML content to a GitHub repository.

**Note:** the "normal approach" to displaying websites in your GitHub account works fine (see [https://pages.github.com/](https://pages.github.com/)) but requires correct and complete HTML and related files (i.e. you would have to write in HTML). Furthermore, it does NOT work to simply generate a Jupyter book from your markdown, then transfer the resulting HTML to your `username.github.io/` repo.

**Jupyter Books documentation** starts at [jupyterbook.org](https://jupyterbook.org/intro.html).

## 1. Getting started

### 1.1 Installing packages

Install the Jupyter Book package using instructions on the package documentation [Overview](https://jupyterbook.org/start/overview.html) page.

Install the `ghp-import` package for pushing your finished book to a GitHub-based website using the Jupyter Book documentation's [Publish Your Book Online](https://jupyterbook.org/start/publish.html#publish-your-book-online-with-github-pages) page.

### 1.2 Content

The book's content is built using MarkDown files (`.md`) or Jupyter notebook files (`.ipynb`), one for each page. Some special text files are also needed specifying layout, the table of contents and references. Mathematics (including numbering for equations) can be inline or in blocks and is written using [LaTeX-style mathematics](https://jupyterbook.org/content/math.html) in your Markdown files.

### 1.3 Images

A choice of syntaxes is available for [including images](https://jupyterbook.org/content/figures.html). Some syntax options explained there are more versatile that others, so use trial and error to ensure your images appear as expected. For example, this inline HTML approach below doesn't seem to keep track of image locations properly:

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

### 1.4 Files, folders, repositories and branches

Put Markdown files for each page, and the `_config.yml` and `_toc.yml` files in a folder called `docs` under the repository's root. Put images in an `images` subfolder under `docs`. Put other files (like PDFs) in a folder under the root ("parallel" with the `docs` folder) and then move these by hand as a last step (see below).

**Regarding branches for editing and publishing:**

* If the website is for an individual GitHub repository then follow directions on the [Publish your book online](https://jupyterbook.org/start/publish.html#publish-your-book-online-with-github-pages) page of Jupyter Book documentation.
* If the website is for a GitHub "organization" (like this one - eoas-tlef), then edit content in the `docs` branch and push resulting website content to the `master` branch of the organizations GitHub repository. Details for this scenario are below.

## 2. Building a Jupyter Book

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

## 3. Publishing the Jupyter Book online

To publish to your GitHub repository for public viewing, follow instructions [here](https://jupyterbook.org/start/publish.html#publish-your-book-online-with-github-pages), the `ghp-import` utility should have been installed (above).

HOWEVER, to publish to an Organization's repository (such as `eoas-tlef`) the steps are slightly different.

1. Complete the `jb build` step so there is a folder under your `\docs` folder with all the HTML.

2. Make the necessary folder under that `\docs` folder to take the "other" files, like PDFs. For example, we put PDFs in the folder `docs\pdffiles`.

3. Copy all necessary files to that folder. This is necessary because the `jb build` command doesn't know how to find and correctly place these files.

4. Make sure your local git repo knows where `upstream` is. If you are using a fork / rebase workflow, this should be clear. Then use `ghp-import` as follows.

   ```bash
   ghp-import -f --no-jekyll -p -b master docs/_build/html -r upstream
   ```

(This is all because the `master` branch at `upstream` is where the website is rendered, and the "main" branch for un-rendered files (markdown, etc.) is the `docs` branch. Yes, it is a  little confusing.)
