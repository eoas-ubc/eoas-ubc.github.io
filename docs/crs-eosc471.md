# EOSC 471

## Official course description

**Waves, Currents and Ocean Mixing**: Use of observations, theory and model results to solve physical oceanographic problems including applications to transport and mixing of pollutants or nutrients.

**Links:**
\>[Home](https://www.eoas.ubc.ca/academics/courses/eosc471),
\>[UBC Calendar](https://courses.students.ubc.ca/cs/courseschedule?pname=subjarea&tname=subj-course&dept=EOSC&course=471),
\>[ubcexplore](https://ubcexplorer.io/course/EOSC/471),
\> [EOAS curriculum map](https://www.eoas.ubc.ca/~quest/eoas-only.html).

## OCESE project objectives

Eight tutorial labs (originally written in [MatLab's Live Editor](https://www.mathworks.com/products/matlab/live-editor.html) interactive notebook environment) needed to be translated to python-based jupyter notebooks. Also, some scripts (in MatLab's ".m" file format) that are called by the Live Editor scripts needed to be translated to python. One of these, a mixed-layer model was substantial, others were less complicated. Three mini-projects anchored by more substantial scripts also needed attention.

One instructor was keen to convert to Python, in anticipation of future students who are expected to be more fluent with Python than Matlab. (Also, Python and Jupyter notebooks are open-source environments, making the skills students learn more versatile and transferrable beyond their school work.)

The second instructor was less keen to carry out this conversion, basically because the existing learning activities (labs) worked well. Reluctance appeard to be based partly on the sense that "_if it works well, why fix it?_" and partly on a reluctance to teach with Python rather than the more familiar MatLab.

The conversion was eventually carried out during the final 3 mths of the OCESE project in order to (a) meet the needs of future students, and (b) take advantage of the fact that OCESE project resources (a skilled student worker) were available to carry out the bulk of first-pass conversion to Python and Jupyter Notebooks.

## Actions taken

A prototype for one lab was prepared in late 2021. This was reviewed by the instructor a year later.

During January 2023, there were several email exchanges to choose options such as the preferred graphics library (the "standard" matplotlib was chosen), to discuss whether animated and intereactive figures were needed, and to determine whether custom special-pupose libraries (such as tide modelling) were to be employed for some of the labs.

During the January-April term of 2023, all labs and projects were converted. Most were checked by the instructor, and at least one needed completing before the course was to be taught, starting September 2023. It was assumed that a graduate student teaching assistant (or the instructor) would complete this before the lab was needed.

By mid-april, 2023, progress was summarized as:

>* Labs 1, 2, 3, 6, and 8 are "done".
>* Lab 4 is in progress with some unresolved challenges.
>* Labs 5 and 7 will be started shortly, with the goal of getting as far as possible and identifying any bottlenecks.

>Excellent progress has been made, including finding workarounds for several challenges with reproducing the MatLab behaviors in Python Jupyter Notebooks. He has found some challenges especially with Lab 4.

>We could simply forge ahead, but we want to ensure that effort is appropriate. You might have solutions, or pointers to people or codes, or there may be adjustments to what students see or do. We want to be sure the remaining available time is well spent so that this Python version of the course is as near to ready as possible.

## Students’ experiences

Not known since first deployment of converted labs (Python and Jupyter Notebooks) occured after the OCESE project was completed.

## Instructors’ experiences

Completing this project involved virtual interactions between the instructor and the student carrying out the code conversions. It was critical in this case that both were comfortable using GitHub for sharing and version control.

Interactions between the student doing the conversions and the instructor were efficient and effective. For example, to quote from an email exchanges while fine tuning last few labs:

>_Well, Lab 4 was significantly more work [to review]. However, I would like congratulate Iddo on the transformation of the PWP model: nicely done! I have now pushed my changes back to the repo._

## Costs

Several email exchanges were needed to resolve aspects of translation that would ensure consistency with instructors' expectations (see lessons learned below).

The project took a skilled undergraduate student ~80hrs to convert 8 of 9 labs from MatLab to Python. This was very - little "learning" and nearly all production, refining and debugging to get the labs to work as desired in Python as Jupyter Notebooks.

## Lessons learned

As in other OCESE projects, a critical aspect for success is instructor engagement with project workers at two stages: first at project beginning to ensure instructional design or development is targeting the needs of corresponding students and the styles and priorities of the instructor. Without instructor's participation at this stage, all development work stalls and goals are not achieved.

The second stage during which instructor engagement is critical is when resources are first deployed for learning in a classroom or assignment. This is no different from any adjustment to a course. The instructor needs to be ready and able to react to challenges that arise when students first make use of resources. This is a barrier when instructors worry that "change" will mean "lots of work" - HOWEVER - costs in time and energy at this stage of aproject (piloting with students) can be minimized by attention to detail during development.

Comments from the student who carried out most of these conversions:

>* The plotly dash website has very comprehensive and accesible resources (Examples, documentation, forum etc.) to build dashboards and visualize data.
>* The Jupytr community seems to be very active, questions on stack overflow get answered and taken seriously by members for the Jupytr team.
>* For matplotlib animations, the documentation isn’t always clear. The code in EOSC 471 and the documentation can be very helpful.
