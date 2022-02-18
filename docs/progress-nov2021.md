# Progress at November 2021

Year two focused upon establishing computing infrastructure but also made significant progress with course transformations, interactive data-oriented learning resources and engaging with faculty. This summary was prepared for funding renewal in October 2021. Links were added in February 2022.

## 1) Infrastructure development

Development of three types of courseware servers is underway:

1. Large Jupyterhubs deployed in Amazon data centers that can scale to many simultaneous users.  These are currently being used to teach EOSC211 (98 students) and EOSC350 (48 students).
2. Smaller Jupyterhubs running on Department hardware for upper year courses (ATSC301, EOSC354), capstone projects, or graduate classes (~35 students).
3. Lightweight Python data visualization courseware (web-based dashboards) for in-class or assignment exercises in EOSC112, 114, 116, 340, 325, 372, ENVR300. Many are being written by students for faculty who teach the courses.  We are currently designing a scalable cloud server to host computationally-intensive dashboards, based on our experience with the large hubs deployed for EOSC211 and EOSC350.

Collaborations with Trevor Campbell and Tiffany Timbers (Statistics) include (a) upgrading the nbgrader software package used to autograde Jupyter notebooks in DSCI100, EOSC211 and other courses, (b) translating the DSCI100 textbook and worksheets from R to Python, in preparation for teaching in 2023, and (c) deliberations with the UBC community (including CTLT, Economics and others) regarding how best to deploy and maintain secure Jupyterhubs for courses ranging from small to large, and with lightweight to heavy computing requirements.

We also added material to an opensource Python textbook adapted for EOSC211, and deployed EOSC211 worksheets and lecture notes as interactive Jupyter Notebooks on github under opensource licenses.

## 2) Complete course transformations

**EOSC211** (~100 students): The complete course transformation from a MatLab to Python course using Jupyter Notebooks was completed and fully implemented. In fall 2021 we piloted use of autograding using nbgrader, an opensource textbook, in-class Jupyter notebook activities and necessary GitHub and Jupyter Hub infrastructure. Also, one of two instructors was supported in her transition to Python and the associated new teaching resources and techniques. See our [EOSC211 page](crs-eosc211.md) for more details.

**EOSC354** (~15): Eleven lab assignments were converted from MatLab to Python and deployed as Jupyter Notebooks. Corresponding adjustments to lab pedagogy were implemented, including the addition of procedures for preparing students’ personal computers and a prior-skills assessment to help students identify and mitigate necessary pre-requisite skills and knowledge. Also, an instructor new to teaching (although familiar with the course) was supported as he implemented these changes while the usual instructor was on sabbatical leave.

**DSCI100** (~50) Converting one section of this R-based course into a Python-based version will have been largely completed by end of yr2, including necessary autograding capabilities. Earth-science oriented content is being prepared for September 2022. See our [DSCI 100 page](crs-dsci100.md) for more details.

**EOSC410/510** (~50) was to be transformed but is on hold while the normal instructor is on maternity leave. However, a Jupyter Book version of content was prepared by a volunteer graduate student.

## 3) Development of specific data-oriented interactive learning resources

NOTE: See our [dashboards page](dashboards.md) for dashboard apps that were developed and implemented in these courses during this project period.

**EOSC112, 114, 116** (~500 students): Climate change content is being developed for first year courses in EOAS. We have generated one dashboard app with accompanying pedagogic recommendations. A second app was prototyped and discussed, with the result that instructors will pilot the learning sequence on “paper” in classes during 2021W. Results will inform development of an online interactive dashboard to be completed in yr3. 

**EOSC325** (~90): Five dashboard apps were developed for this new course, offered for the first time in 2021W1. Ten substantial question sets were converted from “paper” and uploaded as Canvas question banks. Educational support was also provided to help design lectures that involved active-learning, quantitative and data-centric pedagogies.

**EOSC329** (~70) may also use dashboards developed for EOSC325.

**EOSC340** (~200): Two sophisticated climate science apps were developed anew or adapted from existing opensource facilities to be piloted in 2021W2.

**EOSC350** (~40): This course has pioneered the use of Jupyter notebooks and our project has learned about cloud-based deployment of Jupyter Hubs by supporting it.

**EOSC354** (~15): In addition to transforming this course (see above), interactive dashboards illustrating concepts in time series analysis are being designed and built.

**EOSC372** (~140): In 2021W1, a new dashboard was built and piloted for exploring selected ocean physical and trace element measurements. This enables more sophisticated learning opportunities about ocean ecosystems. Challenges associated with building this app helped us learn about optimal software practices for building and deploying these kinds of resources.

**EOAS373** (~80): New dashboard-based activities about ocean system dynamics will be designed based on lessons learned in EOSC372. To be piloted in yr3.

**ENVR300** (~50): Several dashboards successfully piloted in yr1 are being refined for use in 2021W2 and others are being considered.

**Open education resources:** All Jupyter notebooks, Jupyter books, dashboard apps and other resources produced during the project are accessible to colleagues during and after development as GitHub repositories. The collection (including pedagogic recommendations for specific courses) will be documented at a single website that will grow as the project progresses.

## 4) Faculty engagement

Models for faculty support represent an important yr2 project outcome. By end of yr2, twenty-one EOAS instructors will have participated in development, delivery and piloting of Jupyter notebooks or dashboards in EOAS courses. These were all responsive and collaborative instances of learning and support. Examples: (1) supporting development of a new course (EOSC325) resulted in five new dashboards, also usable in a second course. (2) A graduate student working on EOSC211 is providing rapid, responsive support for an instructor joining the team late in the development cycle.

This one-on-one approach is proving more effective than developing structured workshops because each course has different requirements and each instructor has unique capabilities, needs, priorities and timelines. Also, best practices for deploying and using cloud-based computing facilities for undergraduate learning are evolving rapidly here at UBC and beyond.

## 5) Dissemination

A poster about this project was presented online at the annual American Geophysical Union convention in Dec2021. See our [communications page](presentations.md) for details.

Project progress is publicly visible as all development is on github, enabling collaboration with the opensource community working on similar projects at peer institutions.
