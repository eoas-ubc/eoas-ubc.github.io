# EOSC 325

## Official course description

**Principles of Physical Hydrogeology**: Theories of storage and movement of water within groundwater systems; Groundwater-surface water interaction; Role of groundwater systems in watershed management and regulating the environmental impacts of global change; Groundwater sustainability; Impacts of climate & land use changes on groundwater resources.

**Links:**
\>[Home](https://www.eoas.ubc.ca/academics/courses/eosc325),
\>[UBC Calendar](https://courses.students.ubc.ca/cs/courseschedule?pname=subjarea&tname=subj-course&dept=EOSC&course=325),
\>[ubcexplore](https://ubcexplorer.io/course/EOSC/325),
\> [EOAS curriculum map](https://www.eoas.ubc.ca/~quest/eoas-only.html).

## OCESE project objectives

* Introduce interactive dashboard apps to classroom and assignment activities to explore specific hydrogeologic concepts, models, and data sets.
* Convert question sets for efficient upload to the new course's [Canvas](https://about.canvas.ubc.ca/) website.
* Provide geoscience education feedback on lessons for this brand new course.

## Resources produced

These are open education resources (OER) unless indicated otherwise.

* **[Storativity](https://dashboard.eoastest.xyz/store)**: compares hydrological storativity of various geologic materials. Github repository is the "store" folder [here](https://github.com/phaustin/addon_containers).

* **[Unconfined-flow](https://dashboard.eoastest.xyz/hydro)**: an interactive model of linar ("1D") groundwater flow in an unconfined acquifer between two sources, with surface recharge included. Github repository is the "hydro" folder [here](https://github.com/phaustin/addon_containers).

```{image} images/flowapp.png
:alt: \"Linear\" groundwater flow with recharge dashboard
:width: 650
:align: center
```
<br>

* **[Drawdown for confined and unconfined acquifers](https://dashboard.eoastest.xyz/drawdown)** plots 2D drawdown curves for a well in a uniform acquifer with adjustable properties. Github repository is the "drawdown" folder [here](https://github.com/phaustin/addon_containers).

## Pedagogy

**Storativity app**: first used by posing three questions to be addressed using the interactive dashboard app (slide 56 of section 7).

1. Which soil material has the largest storativity in a confined aquifer (use the max values)?
2. Which soil material has the largest storativity in an unconfined aquifer?
3. Which soil material has the largest _difference_ in storativity between unconfined and confined aquifers?

**Unconfined flow app** was first used by posing two group-discussion questions to be addressed using the interactive dashboard app (slide 48 of section 8).

Set hydraulic conductivity: K = 10m/day (Silty Sand).
* First set hydraulic conductivity: K = 50 m/day (Clean Sand).
* Compare flow behaviour if you change hydraulic conductivity to K = 100 m/day (Gravel).

By exploring visuals for these conditions consider these 2 questions:
1. What happens to the water divide? Discuss your answer mathematically and conceptually.
2. What happens to the ranges of Q values? Discuss your answer.

**Drawdown app**: The concepts are addressed in the course, the app is desired by the instructor, and it is ready for use (links above). Unfortunately, the pacing of this brand new course, and continued challenge of running a new course in a temporary online form (due to COVID) meant time ran out this term.

**Transfering question sets from prior use**: questions were first converted from various formats (PDF, MS-Word, text files, etc.) to Markdown text, then [text2qti](https://github.com/gpoore/text2qti) was used to upload to the courses's [Canvas](https://about.canvas.ubc.ca/) site. See our [tools page](tools.md) for tips.

## Project evaluation

Questions, data, results, risks and recommendations.

Benefits: projected and observed. Focus on students and learning

Costs: to instructors, departments & institutions

## Benefits, costs and recommendations

**Benefits**: Students were observed to be fully engaged during an activity that involves exploring a concept or physical process by adjusting parameters with "instant" response in graphical form.

**Costs**:

<span style="color:red">These might be better placed in a page on general guidelines which can then be referenced here.</span>

* The design cycle involved numerous iterations so working code can be developed then the instructor can explore how initial designs will work in their planned setting, adjust, revisit, and iterate until satisfied.
* There may also be a second round of adjustments after first deployment in a real course.
* Implementing as a class assignment requires the dashboard be hosted on a reasonably fast server that can handle multiple logins. Instructors also need to explore the dashboard to identify opportunities and limitations so that meaningful tasks can be set for students to apply concepts being learned in the class.
* The question of longer term maintenance, deployment and sustainability of these tools is still a question. Instructors can not be expected to handle all the coding and server technology as well as incorporate excellent, evidence-base, student-centric pedagogy. 

### Recommendations

Quotes from feedback based on a 3rd party (online) class observation:

**Re. Storativity app**: "_The activity seemed a bit rushed. That can be mitigated by suggesting that students explore the dashboard before coming to class. Maybe give them the URL, say "play with this" and suggest they come to class with 1 question, and 1 observation. That second could be posed as a specific question such as "find out which material has the largest storativity under conditions of x, y, z_".

**Re. Unconfined flow app**:

* "_Sequence of clicker questions about boundaries was great_".
* "_I like how parameters discussed earlier in lecture were related to the dashboard. Making the connection between abstract (lecture) and practical (activity) is often challenging for students_".
* "_The two-step activity that depends on the app seems well designed_".

**General feedback about using dashboards in lessons**:

<span style="color:red">This might be better placed in a page on general guidelines. Perhaps a "Teaching and Learning with Dashboards" page.</span> 

* Students cannot solve problems with a new tool unless they have time to familiarize with the tool. There are 3 aspects they are wrestling with: 1) new concepts, 2) a new tool, and 3) a "problem" to solve (eg "_what happens to the water divide, both mathematically and conceptually_"). So - students either need time in class to "play" or "explore" with the tool, or they need to have seen the tool before.
* If possible, ask them to familiarize with the tool before coming to class, perhaps with a few pointers about what to look for. Then they will come to class more ready to use the tool productively.
* Or, have them explore a little in class at the end of one lesson, then pick up the "real" task in the following lesson.
* Perhaps the first questions they are given can be "trivial" (i.e. more about the tool than the concepts). Then the real problem you want them to solve comes after that.
* Activity instructions on lecture slides works fine, although it might be nice to have a worksheet with settings, questions, and spaces for answering. But you will know what works for this class.
* Questions to solve might be more "interesting" if they are in terms of the consequences to people or property. Such as - "which water body will receive the agricultural pollution when the divide migrates due to changing recharge?" Or - "under what conditions will water table become higher than ground thus contributing to flooding?" Or - if you ask "what happens to range of Q values?", then follow up by asking something concrete about the consequences for influx of groundwater at the two sides of the scenario - eg. which waterway will have to handle the larger input of water? These are just ideas about connecting concepts to reality. It is fair to say that these ideas may not be compatible with an instructor's priorities. 

In all the courses using new dashboards we are seeing the same importance of allowing students time to familiarize with the tool before asking them to make good use of it. There are various ways of doing this, and each course will use their own approach. 