# Course development tools

* [paged_html_theme](https://github.com/eoas-ubc/paged_html_theme)
  A sphinx theme for pdf formatting of notebooks
* [jb_tools](https://github.com/eoas-ubc/jb_tools):
  utiliities for using watchdog and subprocess builds with jupyter-book and myst_nb
* [jb_windows](https://github.com/eoas-ubc/jb_windows)
  utilities for setting the environment variable PYTHONUTF8=1 on windows
* trio_chrome:  A python driver for headless chrome printing
* convert_docs:  move docx, pptx and latex files into markdown
  * Start [here](https://github.com/eoas-ubc/convert_docs/blob/master/Readme_convert.md) for converting docx, tex and pptx to Markdown.  
* generate quizzes for the Canvas Learning Management System
* Jupyter Hubs
* Docker containers
* nbgrader
* [PrairieLearn](https://prairielearn.readthedocs.io/en/latest/)
* [PanDoc](https://pandoc.org/) for converting between a wide range of formats (eg MS-Word to Markdown, etc.)

## Text to QTI

The text2qti command line tool converts questions written in a modified markdown format into the QTI format recognized by Canvas's API. The repository of this tool is [text2qti](https://github.com/gpoore/text2qti). 

Their instructions are good but the following are a few further tips for success based on preparing questions for EOSC 325 during summer 2021 with worklearn student Owen Perfect doing the work and F. Jones helping interface with Owen and EOSC 325 instructor [Ali Ameli](https://www.eoas.ubc.ca/people/aliameli). 

## Some text2qti guidelines
Text2qti project site is here: https://pypi.org/project/text2qti/  

1)	Include a title. Without one, Canvas calls the resulting quiz (and corresponding bank) "Quiz" which is not helpful, so choose a title for each set of questions that makes sense. If the questions will end up getting moved around, then choose a title that will help indicate what's in the file, but keep it to just a few words.
2)	Within a question, use a blank line to indicate "new paragraph". For example, you will see that figures have blank lines before and after, except just before the answer-information. 
3)	Note that everything that is part of the question wording is indented with spaces to match the start of the question text. In this case there are 3 spaces, but other spacing works - just be consistent. Then the answering components go back to having no indent. This is crucial. 
4)	Do not use tabs - use ordinary spaces. Note that Mac and Windows handle character types, especially "new lines" differently. So try to avoid using tab or other "spacing" characters. 
5)	Check to find any invisible "characters" and remove.
6)	Check for abnormal characters. Some text editors will save “smart quotes” for example, or alternative apostrophes, or special “3-dot ellipsis” characters, and so on. Keep the character set simple ASCII (eg three periods, not a special ellipsis character). 
7)	Regarding image sizes: Capture via screen scraping to ensure details, but resize so figures are less than 800 (or 600) pixel’s wide. Canvas displays images at “full size”, so it’s best to keep them as small as possible without loosing information.
8)	For the Essay type question, the "four underscores" (representing blank for answer) must be underscores, not dashes. In other words, "____" not "----".
9)	For general feedback, the "new line" (often a figure) must be aligned with the first character of the comment. This seems to matter! Yes, it's picky, but once we get it right, it's not hard to do. 
10)	The text2qti program that builds the QTI upload file tells you at which row it fails so debugging a failed build is not too hard. 
11)	Equations: It is probably worth writing these as equations in Canvas after uploading. This is worthwhile because “flat character equations” are really not easy to parse, especially if thinking with equations is not something you do alot - i.e. for these students! 

