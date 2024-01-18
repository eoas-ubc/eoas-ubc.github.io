# DSCI 100

## Official description

**Data Science 100: Introduction to Data Science**: Use of data science tools to summarize, visualize, and analyze data. Sensible workflows and clear interpretations are emphasized.

**Links:**
* [UBC Calendar](https://courses.students.ubc.ca/cs/courseschedule?pname=subjarea&tname=subj-course&dept=DSCI&course=100),
and [ubcexplore](https://ubcexplorer.io/course/DSCI/100).
* Student-facing [GitHub repository](https://github.com/ubc-dsci/dsci-100-student) for the existing "R" version of the course.

## OCESE project objectives

DSCI 100 is a statistics course and Stats faculty are in charge of running and maintaining the course. The OCESE project goal was to support the adaptation from R to a Python-based version of the course with an Earth, Ocean and Atmospheric sciences context for all exercises.

1. Convert all "R"-based materials to Python. Includes teaching materials (e.g. slide decks), in-class worksheets for students, assignments & projects, and all assessment materials.
2. Adapt existing text book to Python. The R version is published by CRC Press, but licensed under CC BY-NC-SA 4.0 license.
3. Establish Earth science context so one section addresses the same learning objectives but using settings that relate to Earth sciences.

## Actions Taken

The OCESE project’s contributions included financial and supervisory support for students working on materials, the textbook, assignments, etc. More specifically:

* First version of the Python [textbook](https://python.datasciencebook.ca/index.html) is complete. (R version is [here](https://datasciencebook.ca/).)
* Python versions of all standard DSCI 100 class activities. The course's GitHub websites for students are at: [Python version](https://github.com/UBC-DSCI/dsci-100-student-python), or the original [R version](https://github.com/UBC-DSCI/dsci-100-student).
* Earth science versions of activities and assignments were not developed for this first teaching term as it was thought wise to change learning contexts (examples, settings, assignments, etc.) only after the "Pythonization" steps were completed and tested with students.

The Python section of this course was first taught to 68 students in winter 2023 by Prof. Lindsey Heagy.

## Instructors' experiences

After the meticulous preparation and testing (with significant help from [student workers](project-outline.md)), the pilot version of this section of DSCI 100, taught Jan. - April, 2023 by Prof. Lindsey Heagy, went unexpectedly "smoothly". L.H. quote: 
> "Overall, I was pleased with how it went. I had geared myself up for a lot more chaos than I think we experienced ... ".

The main challenges revolved around autograding, and some inconsistencies found between components like the textbook, worksheets, and lecture notes. Minor adjustments before the next session are all that's needed to rectify these minor issues. The instructor 

> "_... was pleased that the student evaluations were generally positive"_. Also "_I was grateful that the students rolled with issues as they came up. It was a good group this year!"_. And, "_Especially when speaking with some of the more senior students I got the impression that Python connected well with other courses and what they can see using in their future careers."

As another point of evidence, the waitlist was fully booked for this section, illustrating that students were quite interested in learning Python.

This project has enabled new and productive opportunities for faculty in EOAS and the Statistics departments to collaborate and share teaching strategies and technical know-how.

## Students' experiences

The actual course content, and the assignments, datasets and worksheets were all essentially identical to the well-established "R" version of the course. The only difference was that all computing was carried out using Python instead of "R". Therefore student learning experiences will have been consistent with previous versions of the course, with the expection of logistics and programming details.

In course evaluations, when asked: "_Please identify what you consider to be the strengths of this course_", some responses were:

> * "_The content is really interesting and useful._"
> * "_It helps me to have an understanding about some common question and algorithms in data analysis, and how to use python to perform the analysis._"
> * "_The structure of the course is very clear and organized._"
> * "_Very applicable material for future courses and careers_"
> * "_Learning the python language_"

## Costs

Converting everything from "R" to Python was extraordinarily labour intensive. In addition to significant time devoted to the project by professors Timbers, Campbell and Heagy, at least four students were employed for summer work terms to carry out translations of textbook, learning activities and teaching materials. Coordination was relatively complex, requiring project management and Slack-channels to communicate and coordinate details of all new materials with specific instructional intentions of the DSCI 100 teaching team.

Hubs for students to run all Jupyter Notebooks are provided and managed by the UBC Statistics Department. The open UBC resources are not (yet) used by this course, partly because this infrastructure and its procedures were well established within the department, and partly because a custom hub is needed to run the automatic grading softrware [nbgarder](https://github.com/jupyter/nbgrader), which is a Jupyter plugin.

## Lessons Learned

Complete translations of a course from one language to another are labour intensive. It takes careful coordination, and a team of workers (many of them graduate or undergraduate students) to organize and implenet new versions of all teaching & learning materials, learning activities, assignments and assessments. Also, converting the nbgrader auto-grading procedures required appropriate expertise.

Using Slack for rapid communication with the whole team during the first teaching term for this course section was a key to addressing the problems efficiently. Also, all materials are managed with GitHub making versioning, updating, and flagging "issues" straight forward.

The course relies on [nbgrader](https://blog.jupyter.org/upgrading-nbgrader-99c56ae56c47). This Jupyter plugin is used for creating and grading assignments within Jupyter notebooks. It is technically challenging to use and relies on the special skills of the teaching team (Timbers, Campbell, Heagy and others).