# Open-source, automated assessment tools and practices

## The challenges

Three questions addressed:

1. What opensource facilities and workflows support the generation of "randomized" questions to be used by students for practice and assessment purposes?
2. Can such facilities be sufficiently reliable, secure, consistent and easy to use so that instructors will incorporate them into their teaching practices with a minimum of time, energy and overhead?
3. To what extent can assessment of students' use of questions be automated?
4. What strategies can be used to increase the amount and effectiveness of feedback to students so that they learn from the assessments they complete?

## Solutions

Although not an OCESE project priority, several tools and workflows were explored for enabling the construction of questions, randomizing them, deploying, assessing results, automating grading, and adding feedback for students.

1. Sending questions built offline to Canvas:
   * B. Chang's 2020-2021 worked as a work-learn student on the code called `md2canvas`. The context was quizzes for EOSC340. The goal was to send questions, and manage question banks, using the Canvas-api. [The repository for md2canvas is here](https://github.com/eoas-ubc/md2canvas-BChang).
   * Procedure for efficient use of the open source text2QTI application. **Details are below**.
2. [nbgrader](https://nbgrader.readthedocs.io/en/stable/) is used by instructors of the DSCI-100 course. OCESE attemmpted to use it when EOSC 211 was first taught in its Python version. HOWEVER, this was a disaster for a variety of reasons ([details here](crs-eosc211.md)). It works well for DSCI 100 because the Statistics Department runs its own Jupyter hub for the course and instructors are suitably knowledgeable to ensure nbgrader is used appropriately and the systems are kept up to date. This is an excellent facility and is an evolving component of the Jupyter Notebook ecosystem. But at the time of OCESE project, it required more careful management than we were able to provide.
3. [PrairieLearn](https://us.prairielearn.com/). Here is a [video introduction to PrairieLearn](https://www.youtube.com/watch?v=IuQrefroHmc) from Firas Moosvi, physics instructor at UBC-Okanagan. This tool is open-source, but does require commitement, and instructors do need a moderate degree of comfort with coding. PrairieLearn is in use in several departments at UBC as of 2022.
4. [gradscope](https://lthub.ubc.ca/guides/gradescope-instructor-guide/); an application for grading online, designed for easing the challenges of grading collaboratively with a teaching team, particularly on exams.
5. Berkeley's [OK](https://okpy.org/).
6. Berkeley (again) [OtterGrader](https://otter-grader.readthedocs.io/en/latest/).
7. Microsoft's [PyBryt](https://microsoft.github.io/pybryt/html/index.html).
8. And of course [Canvas](https://lthub.ubc.ca/guides/canvas-instructor-guide/) has multiple assessment and grading facilities.

## Text to QTI

The text2qti command line tool converts questions written in a modified markdown format into the QTI format recognized by Canvas's API.

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