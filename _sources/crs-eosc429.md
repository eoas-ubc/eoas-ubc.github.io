# EOSC 429

## Official course description

**Groundwater Contamination**: Contaminant transport processes in groundwater flow systems; aqueous and multiphase transport; mathematical models describing migration and chemical evolution of contaminant plumes; case studies.

**Links:**
\>[Home](https://www.eoas.ubc.ca/academics/courses/eosc429),
\>[UBC Calendar](https://courses.students.ubc.ca/cs/courseschedule?pname=subjarea&tname=subj-course&dept=EOSC&course=429),
\>[ubcexplore](https://ubcexplorer.io/course/EOSC/429),
\> [EOAS curriculum map](https://www.eoas.ubc.ca/~quest/eoas-only.html).

## OCESE project objectives

This course could use hydrogeology apps developed for [EOAS 325](crs-eosc325.md), ideally with learning tasks that make more sophisticated use of the simulations or demostrations. This has not yet occured, but is recommended.

## Actions taken

After discussing options for dashboards or Jupyter Notebooks targeting specific learning objectives in this course, it was decided to build an interactive app enabling exploration of the way a dissolved contaminant dissperses down a column of porous material (working with a column makes this a "1-D problem".) The concept is normally explored in class using a spreadsheet to carry out calculations at fixed distances down the column, with the result plotted as a curve of concentration vs position along the column at a given (adjustable) time after initiating flow at one end of the column.

A prototype dashboard app was produced as a 1D solute transport visualization aid. The app plots concentration as a function of distance along a 1D column, or at a location along that column as a function of time. Users can adjust velocity and dispersion coefficient, and the contribution from each of 2 components can be compared.

The dashboard was not used but the [prototype](https://contaminants-convection.onrender.com/) was deployed on the third party hub https://render.com/. This is slow to load, but it is a free service. The app was still active as of December 2023. The dashboard looks like this with default starting values.

```{image} images/ogata-banks-app.jpg
:alt: eosc410/510 student computing experience
:align: center
```

## Costs

Building this app required some facility with Python Math functions and writing code to solve for somewhat more sophisticated equations. A fourth year engineering student did this in roughly 30hrs of work, without additional help, and a third year student with good coding skills could probably handle it with a bit of support.

## Lessons learned

This app has not been used in a course. The lesson learned is that instructors do need to stay keen on the opportunity and build learning activities for class or home-work. They also need to stay engaged during prototyping so that iteration can steer the final result towards a facility that meets their teaching needs and which helps students explore the corresponding concepts.
