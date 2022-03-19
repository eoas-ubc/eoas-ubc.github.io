# EOSC 372

## Official course description

**Introductory Oceanography: Circulation and Plankton**: Physical and chemical processes and their controls on the distribution of plankton in the ocean. 

**Links:**
\>[Home](https://www.eoas.ubc.ca/academics/courses/eosc372),
\>[UBC Calendar](https://courses.students.ubc.ca/cs/courseschedule?pname=subjarea&tname=subj-course&dept=EOSC&course=372),
\>[ubcexplore](https://ubcexplorer.io/course/EOSC/372),
\> [EOAS curriculum map](https://www.eoas.ubc.ca/~quest/eoas-only.html).

## OCESE project objectives

* Gain experience using Plotly Dash libraries for displaying selected data sets coupled to their locations on a map. 
* Collaborate with instructors to find and deliver data sets that students can use efficiently to practice applying concepts in physical and chemical oceanography.

## Resources produced

A dashboard for observing and comparing trace element and physical properties in the water column at selected locations in the Southern Ocean, the Atlantic and the North Pacific. See **[ocgy-dataviewer](https://dashboard.eoastest.xyz/ocgy)** for the active dashboard, and the Github repository in the "ocgy-dataviewer" folder [here](https://github.com/phaustin/addon_containers). The dashboard's interactive interface looks like this:

```{image} images/ocgy-eg.png
:alt: oceanography dashboard
:width: 650
:align: center
```

## Pedagogy

When specific data sets are made easily accessible, students can focus on addressing important concepts rather than on mechanics of managing disparate data formats or new interfaces.

These are examples of questions posed as part of a weekly assignment in a 3rd year course for science majors (links above). The **132 students** taking the course were required to address these questions, then complete an online multiple choice quiz with the same questions for submitting solutions.

1. Compare the depth of the mixed layer along each of the three transects. What are deepest and shallowest depths and where are they with respect to continental margins?
2. For each transect, at which station/s do you observe the highest nitrate concentrations in the mixed layer? And the lowest? Can you think of physical/chemical/biological processes explaining these high and low values? 
3. At which station/s do you observe the highest Fe concentrations in the mixed layer? And the lowest? Can you think of physical/chemical/biological processes explaining these high and low values?
4. Nitrate to Fe concentration ratios in the upwelled water can be used to identify potential Fe limitation of phytoplankton. When this ratio is > ~5 µmol nitrate per nmol Fe, the phytoplankton are experiencing Fe limitation, and the highest ratios identify regions severely Fe-limited. Knowing this, consider the nitrate / Fe ratios (i.e., µmol nitrate per nmol Fe) at depth, just below the mixed layer, plotted in the farthest plot to the right in the dataviewer. For each transect identify the stations where phytoplankton may be the most Fe-limited. Also the least Fe-limited. What are some of the sources of Fe in those regions?

Many other questions about these data could be posed, addressing learning goals related to the physical and chemical processes in our oceans, and their controls on the distribution of plankton.

## Project evaluation

Did the dashboard serve as an effective and efficient learning resource? These questions were posed to evaluate the succecss of this project component.

1. Was the exercise that was facilitated by the dashboard suitably challenging without being too difficult? 
2. Was it "doable" in a reasonable amount of time compared to posing the same questions without the dashboard? (students were asked: "_Approximately how much time did you spend on this Assignment and Quiz?_")
3. Student were asked: "_What did you like about learning with this dashboard?_"
4. Student were asked: "_Have you any creative or constructive suggestions for improving this dashboard or the assignment?_"

**Results** from feedback questions posed as part of the assignment that used this dashboard are summarized in the figure below.

```{image} images/372studentresults-sm.png
:alt: results
:width: 650
:align: center
```
**Time to complete** was entirely consistent with expectations this portion of an assignment that students had a week to complete.

**Scores** were perhaps a little low for a "synthesis" exercise. This suggests some iteration would be worthwhile to improve clarity or efficiency of questions. It is also possible the relationship between instructions and the final multiple choice questions could be clarified.

**Quotes** from the top two "_What did you like..._" categories:

> "_I like how integrated it is and how it connects all the topics dealt with in this course so far_".

> "_It was interesting and challenging to use real-world data - I saw firsthand the difficulties that one can have in defining the two layers of a two-layer model. It is also really meaningful to see real data supporting trends and predictions learned in class. It was cool to see a profile for nitrate or Fe and not be surprised by it - and even able to explain it!_".

> "_I liked how this dashboard was applying various concepts and using real data from the world oceans. It was quite easy to use and was very clear in instructions_".

## Benefits, costs and recommendations

**Benefits**: Students evidently found this interactive dashboard resource to be a "good visualization", appreciated the use of real world data, liked the opportunity it provided for synthesis of course concepts in their learning assignments, and generally found it easy to use. Students also offered some thoughtful and creative ideas for improvements. 

There was very little negative feedback, although with 132 students there are inevitably a few who had difficulties with some aspect or other. Timely teaching assistant support goes a long way to supporting those kinds of difficulties.

**Costs**:

<span style="color:red">These might be better placed in a page on general guidelines which can then be referenced here.</span>

* The design cycle involved numerous iterations so working code can be developed then the instructor can explore how initial designs will work in their planned setting, adjust, revisit, and iterate until satisfied.
* There may also be a second round of adjustments after first deployment in a real course.
* For this oceanography dashboard, numerous iterations were needed to discover some of the 'tricks' necessary to successful deployment of the Python-based code that uses Plotly-Dash libraries. The styles of interactivity were found to be much more challenging than other dashboards. Code can be examined in the GitHub repository; see the "ocgy-dataviewer" folder [here](https://github.com/phaustin/addon_containers).
* Implementing as a class assignment requires the dashboard be hosted on a reasonably fast server that can handle multiple logins. Instructors also need to explore the dashboard to identify opportunities and limitations so that meaningful tasks can be set for students to apply concepts being learned in the class.
* The question of longer term maintenance, deployment and sustainability of these tools is still a question. Instructors can not be expected to handle all the coding and server technology as well as incorporate excellent, evidence-base, student-centric pedagogy. 

**Recommendations** for improvement suggested by students include more functionality to compare data from different cruises, spending a bit of time in class to introduce the app and its capabilities & limitations, and a few other thoughtful ideas.

For instructors, we recommend reviewing questions carefully to fine tune for efficiency and clarity. The goal would be to bring the success rate for this kind of synthesis activity up to closer to 80%. Varying the questions is also recommended, perhaps changing the emphasis from year to year and building a pool of questions (or question sets) for subsequent use.

For development purposes, this dashboard was challenging. It is also a bit slow, and it might benefit from having an someone with expertise in use of Plotly Dash libraries review and recommend adjustments to improve efficiency and code clarity.

---
