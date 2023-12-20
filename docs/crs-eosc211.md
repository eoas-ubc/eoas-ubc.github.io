# EOSC 211

## Official description

**Computer Methods in Earth, Ocean and Atmospheric Sciences**: Mathematical computer-based problem solving in the physical, chemical, and biological sciences. Problems drawn from studies of the earth, the oceans and the atmosphere.

**Links:**
\>[Home](https://www.eoas.ubc.ca/academics/courses/eosc211),
\>[UBC Calendar](https://courses.students.ubc.ca/cs/courseschedule?pname=subjarea&tname=subj-course&dept=EOSC&course=211),
\>[ubcexplore](https://ubcexplorer.io/course/EOSC/211),
\>[EOAS curriculum map](https://www.eoas.ubc.ca/~quest/eoas-only.html).

## OCESE project goals and Corresponding Actions

Five project goals are listed with summaries of actions taken for each.

1. **Python conversion**: Convert classroom, lab and homework teaching and learning materials from MatLab to Python, deployed as Jupyter Notebooks.
   * Completed largely by one graduate student employed part time, who then served as teaching assistant during the first deployment of the course's new Python version.
2. **Jupyter Hubs**: Establish which cloud-based approaches for serving Jupyter Notebooks will be the most stable, sustainable, scaleable.
   * First hub was deployed on Departmental server as UBC did not yet have a dedicated hub for undergraduate learning.
   * UBC's [open Jupyter hub](https://lthub.ubc.ca/guides/jupyterhub-instructor-guide/) was piloted fall 2022. Students were given the option of loading Python and Jupyter on their own laptops or using the UBC hub. Roughly 50% of students chose each option. 
   * **Experiences were mixed with student feedback about hubs obtained by survey, <a href="files/e211-feedback-221209.pdf">with results summarized on a 2-page PDF here</a>**.
3. **Grading**: Introduce automatic (or semiautomatic) grading practices, probably using the Jupyter Notebook plugin [nbgrader](https://github.com/jupyter/nbgrader).
   * Grading using nbgrader was attempted in fall 2021 but results were disappointing as getting the plugin to work reliably proved challenging.
   * Fall 2022 saw a more add-hoc approach developed, improving efficienty and removing dependance on irregularly mantained 3rd party software (nbgrader).
4. **Textbook & resources**: Introduce an [opensource textbook](https://phaustin.github.io/Problem-Solving-with-Python/Preface/Motivation.html), and deliver course content with similar open source technology.
   * [Text book](https://phaustin.github.io/Problem-Solving-with-Python/), mainly python programming for beginners. Adapted from [Problem Solving with Python-37](https://github.com/professorkazarinoff/Problem-Solving-with-Python-37-Edition) by Dr. Peter Kazarinof.
   * For fall 2021, a Jupyter Book was built for delivering content such as syllabus, calendar of topics, links into relevant sections of the text book, and the Jupyter Notebooks for assignments & labs provided. This proved inefficient, partly because maintaining a Jupyter Book requires significant expertise with opensource software development practices.
   * The second iteration (Fall 2022) reverted to use of UBC's [Canvas](https://about.canvas.ubc.ca/) Learning management system for delivery and submission of lecture materials, assignments, assessments, and other course content.
5. **Documentation**: Prepare documentation for procedures that teachers and students need for using open source resources, Jupyter hubs, installing Python, and preparing assessments for sem-automated grading.
   * Getting-started instructions for students to install Python and Jupyter Notebooks on Windows or Mac laptops. This was done with 90 students in one  1.5-hour lecture session.
   * See the [Teaching with Jupyter NBs](tut-teachwith-jnbs.md) page.
   * See also tutorials on commandline, environments, Git/Github in this website's tutorials section.

## Instructors' experiences

Outcomes and experiences are outlined above adjacent to corresponding OCSE project goals for transforming EOSC211.

### Necessary instructor and TA skills

Requirements include:

* Maintain the text (Jupyter book).
* Maintain Jupyter notebooks used for class, lab and homework.
* Manage assignment update, delivery, collection, grading & feedback cycle.
* Run labs and promote paired-programming.

## Students' experiences

See notes above, including link to feedbac about Jupyter hubs.

### a) Questions, data, results

* Compare student success using Python to earlier using similar questions in assignments, labs and exams.
* Instructor interview: eg, what is working well? What are 'pain points'? What needs fixing or improving?
  * notes from "installfest feedback"
* TA interview: same questions as instructors.
* What student feedback is available? What do they say?
  * midterm survey with ~100% response rate: MC and open questions. Summarized.
  * Standard UBC end of term "Student Experience of Instruction" survey.

### b) Discussion board activity

Piazza discussion board topics from the first and second year after transforming eosc211 are illustrated in the figure here. Apparently, student concerns raised on the Piazza platform were relatively similar in both terms.

```{image} images/eosc211-piazzadata.png
:alt: eosc211 Piazza data
:align: right
```

* Most discussions were related to “code”. The course is all about programming for beginners and this is reflected in the consistent, high proportion of posts for both years.
* A major challenge of deploying Python with Jupyter notebooks for 100 students was providing stable Jupyter Hubs. However, if counting the types of posts on Piazza is any indication, the relatively few posts about hubs in both 2021 and 2022 suggests that students may have been less concerned about these difficulties than instructors.
* The main challenge for teachers in 2021 related to difficulties with the autograding software. This explains why there were more than twice as many posts about quizzes or exams in 2021 compared to 2022.


## Costs & Risks

* Auto-grading is essential for a programing course with ~100+ students. Prior to Python (i.e. before 2021) MatLab was the language and grading involved custom MatLab parsing code by Prof. R. Pawlowicz.
* The Jupyter book text book needs the ability to write in markdown and maintain the GitHub repository.

## Lessons learned

Probably the biggest lesson was to avoid planning on deployment of Jupyter-based learning resources without a well-established Jupyter hub read to accept, deploy and maintain the materials.

The issue or auto-grading is an ongoing challenge that many courses in many institutions are facing. It is being addressed, with solutions ranging from custom to broadly based open-source. The choice depends on abilities of instructors.
