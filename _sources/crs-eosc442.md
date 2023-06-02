# EOSC 442

## Official course description

**Climate Measurement and Analysis**: Local climate time series collection and analysis. Retrieval and analysis of online climate data and model output.

**Links:**
\>[Home](https://www.eoas.ubc.ca/academics/courses/eosc442),
\>[UBC Calendar](https://courses.students.ubc.ca/cs/courseschedule?pname=subjarea&tname=subj-course&dept=EOSC&course=442),
\>[ubcexplore](https://ubcexplorer.io/course/EOSC/442),
\> [EOAS curriculum map](https://www.eoas.ubc.ca/~quest/eoas-only.html).

EOSC 442 is a 1-credit required lab course for [Combined Majors in Science](https://cms.science.ubc.ca/) students. While it is only 1 credit, the activities include collecting and analyzing time series data with an emphasis on climate series.

## OCESE project objectives

1. Convert the 4 computing labs from MatLab activities to Jupyter Notebook-based Python.

## Actions taken

1. Four notebooks were converted - no changes to the exercieses, just do the same ones usign Python, with notebooks.
2. The (then) new [UBC open Jupyter hub](https://lthub.ubc.ca/guides/jupyterhub-instructor-guide/) was used to serve these to students.
3. Some consulting was provided regarding new climate-related data sets to be used for projects. Students will carry out the same project but with provided data sets rather than open-ended. Also student are to apply skills learned in the 4 computing labs for their projects.

## Students’ experiences

From Term 1 TA, Ben O'Oconnor email, 221014, regarding the "growing pains" exhibited by the (then) new open.jupyter.ubc hubs:

> We are also finding that the kernels permanently disconnect on a fairly regular basis (normally if they are left idle for more than a few minutes). By permanently disconnect, I mean that the entire instance of Jupyter Hub needs to be closed and relaunched (restarting/reconnecting to the kernel within the Hub does not accomplish anything). These  two points above are generally 'manageable', but annoying.

From Term 2 TA, Claire Parrott email, 230215, the hubs appeared to have been more stable in term 2:

>Using Jupyter open is usually fine. During class time the server can be slow, and I would say ~3 students per lab have issues with kernels timing out. I've found the best way to trouble shoot is by closing the browser window and re-opening Jupyter open, however this only works when it's re-opened using the link on the canvas page (it seems to make a difference vs looking up browser history).

## Instructors’ experiences

During the first term that labs were offered in Python using Jupyter notebooks, the teaching assistant (TA) runnign these labs was instrumental in addressing difficulties and supporting students. Some of his comments: 

**When asked** "*have you any comments on the workflow you are use to deliver and assess their work? For example, are you able to carry out your job as TA
without working "overtime"?*

**Response**: 

>The workload is a bit higher for me right now due to the fact that:
>1. I am still learning aspects of Python, so it takes me longer to verify/troubleshoot the various approaches that students take to solve problems
>2. It took a while to find the best submission workflow/requirements:
>    * it turns out that .html files do not play nice with speedgrader.
>    * It also turns out that if you don't ask students to comment out all of their 'print()' lines you will inevitably receive 20+ pages of variable printout, which is a bit of a pain to sift through looking for code cells!).
>3. I am still updating assignments to include feedback/my observations of how students handle them as we test them out.

Then, after Jupyter Hub performance was somewhat improved, the term 2 TA, Claire Parrott said:

>Helping students is fine, I think some of the biggest things I've noticed is that often students won't read the whole text and will go directly to asking for help. I've been taking notes and adding the the beginning of class intro some of the key items within the lab, and I *think* that's helping the second group however it's hard to gauge how well it resonates with students.

>I don't think there are too many major changes that need to be done to the notebooks thus far, I have some notes on what small changes (i.e. typos and re-naming or re-wording) that might help but they don't greatly affect teaching.

>Grading requires a rubric/answer key I don't have, but I've been making one as I go through the lab pre-class.

>Student are doing generally well! Many are able to finish most of the work at the end of the session and the students who are really familiar can get the entire lab done.

**Regarding projects**: From the instructor, the new datasets provided apparently helped focus students' reseach on climate-related data sets. Quote: "*Students definitely finish this course being better able to consider climate emergency issues from a more data-informed perspective than when they begin*" (paraphrased).

## Costs

This OCESE project component was completed because of the dedication and commitement of TA B. O'Connor. He reviewed converted labs then taught the first instance of labs using Python with Jupyter Notebooks in Sept 2022. Converting labs from MatLab to Python took one skilled undergraduate programmer roughly a normal week of work.

Initial deployment of new Jupyter notebooks can involve challenges that are only discovered when students start using them. Therefore an experienced teaching assistant is an invaluable asset. For example, from Term 1 TA, Ben O'Oconnor email, 221014:

> "... reading data with pandas.read_csv resulted in dataframe structures with up to 3 significantly different formats for different students. This was actually really quite frustrating during the past two weeks. After a bit of searching it seems like there is a known issue with the read_csv() function being a bit 'flaky'. I have since updated the labs to ensure consistency."

## Lessons learned

**Question to TA**: Is the Jupyter notebook environment working for them (and you)?

**Answer**:

>"From a programming perspective, it is not my favorite working environment, although I admittedly have not taken the time to learn the "ins and outs" of JNB and customize it to my preferences. That's possibly just my grumpy MATLAB-user voice speaking."

>"From a teaching/learning perspective however, I think it is really quite good. A large majority of the students are completing the assignments (more or less) within the allotted lab time. This was far from the case last year and was a major goal in the assignment conversion/updates. Part of this is because the students seem more generally engaged this term, but a large part of it is (I think) due to the increased number of examples, hints, and general "hand-holding" that is now contained within the notebooks."

**TA's comment about learnign Python**:

>It seems that students are having a harder time finding solutions and coding approaches for themselves online - this is true both in terms of "*what function(s) do I need to use to accomplish this task?*" and "*How does this function work? What are the input parameters and how can they be used?*" type queries. I think this is just the nature of Python. There are more ways to accomplish the same thing compared to Matlab and the documentation is not as helpful (less example code being a key part of this). Not a big deal, but it has resulted in me being even more "hand-holdy' with my hints.

**TA's comment about student satisfaction**:

>The course is recognized as way too much work for a single credit, but this is well known and being considered at the curriculum level. That said, I do think that the course is appreciated by students that genuinely care about developing their programming skills. "*I learned SO much from Lab 1A*" was something that I **overheard as a group of students** were leaving class several weeks ago. Even though the workload/credit balance is off, I think students do feel like they walk away with a usefully-expanded skill set. I think it helps take them from 'kind of knowing Python' to feeling more confident that they can put it on their resume as a skill.
