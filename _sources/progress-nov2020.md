# Progress as of November 2020

Year one priorities include infrastructure and tools development because these are prerequisite to implementing educational initiatives in courses and professional development activities for instructors. Track progress at the project's [github repo project board](https://github.com/eoas-ubc/eoas_tlef/projects/2).

## Accomplishments as of 2020/10/31

1. We are implementing [jupyterhubs](https://jupyter.org/hub) so that many students can write and run programs in preconfigured cloud computing environments without configuring their own systems. This critical capability is also being implemented by statistics, economics and other UBC units for large courses. Piloting is now underway in [EOSC350](https://jupyterhub.eoas.ubc.ca/), [ATSC301](https://a301_hub.eoas.ubc.ca/), and for our adaptation of the opensource book by Kazarinoff: [“Problem Solving With Python”](https://atsc_web.eoas.ubc.ca/). This will be a key resource for introducing Python-based scientific programing to students and faculty.

2. Procedures are being established to construct, test and maintain docker containers which will standardize and simplify the setting up of environments used by students and faculty using Windows, iOS or Linux computers.

3. Code is being developed that
   - Converts DOCX, PPTX, LaTeX formatted files to MarkDown text;
   - Converts notebook-based quiz documents for deployment as Canvas quizzes. This new package (md2canvas) is currently being used for UBC Economics. Physics and EOAS courses.
   - Prints notebooks for exams, quizzes and assignments, allowing for efficient use, reuse and randomization of question sets;
   - Runs batch printing of Jupyter notebooks;
   - Runs Jupyterhub containers with executable books on any laptop;
   - Automatically builds and tests Jupyterbooks from notebook collections in git repositories.

4. A so-called “conda package channel” was established for making project outcomes accessible using standard Conda software package management procedures.

5. Progress is above expectations due in part to student workers who are particularly well suited for these tasks.

6. Impacts of COVID-19 have mainly been limited to a reduction in planned faculty development activities. However, many tools and tactics are being developed and faculty training will in fact be best delivered when all these strategies have been established as (approximately) routine.

7. Opensource software and course resources are being developed using standard GitHub-based management techniques. Progress can be monitored on our [GitHhub project board](https://github.com/eoas-ubc/eoas_tlef/projects/2).

## Progress on year 1 Milestones

These are listed in terms of goals from the original proposal.

#### Literature review

1. There is a growing Zotero reference list of sources about teaching and learning computing, programming, datascience and quantitative Earth sciences.
2. We learn much by working in the GitHub community because many academics and institutions are conducting parallel opensource projects. 
3. Project progress and links to local and opensource contributions and collaborations are being summarized [here](https://hackmd.io/iKHYFs8-QK22jW-iybvrrQ).

#### EOSC211 (97 students this year)

1. Converting materials to markdown is nearly complete. These resources are being used in term 2020W1.
2. The course textbook has been converted from LaTeX to markdown and is running in its own Jupyterhub.
3. Converting from MatLab to Python will be largely completed by spring 2021.
4. Instructors are starting to use GitHub, eg for [EOSC 211](https://phaustin.github.io/eosc211/info_and_announcements.html).

#### ENVR300 (54 students)

1. Several Dashboards are under development based on discussions with instructors. For details see [the development repository](https://github.com/fhmjones/dashboards-envr300).
2. We will deploy and evaluate their use and value with an instructor new to these techniques in term 2020W2.

#### EOSC410/510 (35 students)

1. Materials for EOSC510 are being adapted to Jupyter-book format by a graduate student volunteer. This represents a pilot within EOAS for efficient generation and maintenance of course content.

#### ATSC301 (13 students)

1. This course is prototyping Jupyter book-making techniques and Jupyterhub strategies in term 2020W1.

#### Quantitative core courses

1. Curriculum level work is proceeding as an internal EOAS project headed by Christian Schoof. Details available upon request.

#### Community of practice

1. First CoP meeting will be mid-November with a second in mid-February.  
2. This term, the EOSC211 instructor, C. Johnson, is being supported via a two-instructor teaching partnership. Johnson has taught the course many times while P. Austin is spearheading the OCESE project.
3. The EOSC350 instructor, M. Bostock, is receiving support to pilot the delivery of labs using a Jupyterhub.
4. Initial meetings with EOSC410 instructor, V. Radic, have outlined plans for both EOSC410 and ENVR300. We are establishing priorities for adapting the course to use Jupyter notebooks, incorporate Python, and align the course as an elective for the emerging Data Science program.

#### Training for faculty & others

1. Materials for Python and Jupyter notebook training sessions are being developed, targeting EOAS Faculty, Postdocs and Graduate students. This is our evolving [documentation site](https://fhmjones.github.io/).

#### Evaluation

1. All deliverables and faculty interactions constitute input for evaluation purposes. This progress summary is one result, halfway into our first year.
2. A computing-oriented attitudes and expectations pre-post survey is being implemented in EOSC211, 301, 410.
3. Students will be asked for feedback about EOSC300 dashboards, EOSC350 dashboards, and about perceptions of learning, experiences and workloads.

#### Students in courses: concrete impacts

1. EOSC211: students are gaining exposure to GitHub as the source of information.
2. ENVR300: students will be using several Dashboards.
3. ATSC301: students will be using updated GitHub, Jupyter Notebooks and Python programming.
4. EOSC350: students are running all labs (Jupyter notebooks developed in EOAS) in a Jupyterhub.

#### Student contributions

1. By May 2021, five Work Learn students and one volunteer will have gained education-oriented collaboration and software skills, especially in use of GitHub. They are currently making significant contributions to our objectives, which will reflect well on their CV's.

#### Additional progress beyond original plans

Eosc350

1. This course's sophisticated Jupyter [notebook-based geophysics labs](https://github.com/geoscixyz/gpgLabs) needed a cloud-based server environment so students are unconstrained by computing capacity. Although not identified in the proposal, this accomplishment establishes critical technical and organizational capabilities for this project and beyond.
2. Support was provided to convert the course for online delivery, including use of Canvas.
3. The tool [text2qti](https://pypi.org/project/text2qti/) was found and tested to facilitate converting quizzes for Canvas deployment.

Eosc340 (177 students):

1. Climate modelling apps are being adapted for dashboard deployment, to be piloted in term 2020W2.

Scholarly contributions so far:

1. July: [Presentation](https://eoas-ubc.github.io/scipy/scipy_bof_slides.slides.html#/) at Pycon 2020.
2. Aug: Presentation at UBC Jupyter Days by P. Austin and student M. Colclough; [“Writing Canvas quizzes with Jupyter”]( https://ubc-dsci.github.io/jupyterdays/schedule/day3.html).
3. Aug: [Abstract](https://ams.confex.com/ams/101ANNUAL/11python/papers/viewonly.cgi?password=582729&username=384767) submitted for AMS.
