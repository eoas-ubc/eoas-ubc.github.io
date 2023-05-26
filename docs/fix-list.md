# Fixes to documentation

See also **[issues](https://github.com/eoas-ubc/eoas-ubc.github.io/issues)** at the host repository, **[requirements](https://docs.google.com/spreadsheets/d/1DL2YDthzEbZijx35nVyveSstU5frQdzA/edit#gid=173746334)** (Google sheet) for each project component, and **[accomplishments & data](https://docs.google.com/spreadsheets/d/1BUk1_FHItUgzuyg2aJ-dX6XpMABmFSPe/edit#gid=979565415)** (Google sheet) for project outcomes.

## Improvements

* Consolidate ocese reporting threads:
   * website,
   * Dep't showcase,
   * TLEF poster,
   * EER poster
* Do tutorials need to be more like precedent, i.e. modular such as [Helsinki "short course"](https://autogis-site.readthedocs.io/en/latest/index.html), [Project Pythia](https://projectpythia.org/), or Atlasian tutorials, etc.? In fact, some may best be referenced to these types of existing ones tutorials?
* Merge two github pages. They could be rewritten as summaries, perhaps based on (or simply pointing to?) the [Atlasian tutorials](https://www.atlassian.com/git/tutorials/comparing-workflows). Maybe also refer to [Ch.12 of the DSCI100 text](https://python.datasciencebook.ca/version-control.html) (still wiht R as context, but updates in progress).
* Merge two environment pages
* Merge "dashboard deployment" onto "Developing dashboards".
* Merging Jupyter NB pages:
  * The [Jupyterhub Tutorial](tut-jhubs.md) is mis-named. Combine this with [Jupyter NB startup](jnotebooks-startup.md) and possibly some of [teaching with Jupyter NBs](tut-teachwith-jnbs.md).
  * Combine parts of *Jupyterhub Tutorial* into *Servers and hubs*.
  * Jupyter startup page needs updating to use material from eosc442 and dsci100 material. How does this compare to docs used in EOSC 211? Should [Project Pythia's foundations book](https://foundations.projectpythia.org/landing-page.html) be used instead?
  * Jupyter Hubs: what options? Needs PA's input. Refer to 2i2c's documentation.
  * Jupyter notebook vs emerging Jupyter lab? This might need no more than a mention of this evolution as an example of the "moving target" for instructors. Notebook is being "sunset" - replaced with a one-page version of lab.
  * *GitHub & Git workflows* and *Git introduction* pages need rationalizing.
  * *Conda & environments* and *Using environments* need rationalizing and updating.
  * Refine the inclusion of Jupyter Notebooks. Python Skills check is included but I'm not sure if it's done the best way possible. And there may be other notebooks for tutorials or guidelines. But get one right first.
* Add jupytext to pages about setting up J-notebooks, using notebooks for teaching, how J-Books uses it, and likely others.
* Servers and hubs: move, rename & rewrite; it's not really a how-to since we & others are still iterating towards optimal choices. It needs to be more like "lessons learned".
* Other software tools - add quiz management for Canvas, PrairieLearn, support for JupyterBooks - others on the EOAS-UBC project board and elsewhere?
* "Rationalize" project evaluation pages.
* The faculty training page needs to incorporate "student training", including feedback and reflections from students. It has been renamed in the ToC, but needs reworking. The perspective is training as a project outcome.

## Additions

* Gather repositories with PA, FJ, JB, IS and collect at eoas-ubc.
* [Cited references](refs-citations.md) should be added throughout, as needed, based on QuEST project and FJ's Zotero collection. Or, a bibliography might be adequate unless an official publication is prpduced. This could be done using BibTex reference files - see the [Jupyter Books citation tutorial](https://jupyterbook.org/en/stable/tutorials/references.html).
* More about open-source, with examples, esepcially w.r.t. earth sciences. Eg: pangeo, SimpEG, Fatiango, geosci.xyz, (find ocgy and atsc examples), Jupyter books (again, referring to UBC's examples open.ubc.ca. [Numerical Techniques for AOE scientists](https://rhwhite.github.io/numeric_2022/), R. White and S. Allen, DSCI100 [python text](https://python.datasciencebook.ca/intro.html)  & [repo](https://github.com/UBC-DSCI/introduction-to-datascience-python).
* Review Andrew L.'s two tutorials in "not used". They may have good content but are perhaps a bit "long-winded".
* Revisit first-year accomplishments, including [md2canvas](https://github.com/eoas-ubc/md2canvas), AL's tutorials, and others. The [projects page](https://github.com/orgs/eoas-ubc/projects/1), and list of repositories may reveal items that need including or summarizing. Needs a walk-through with Phil.
* List courses that could leverage lessons we learned to align with students' needs, efficiency, and departmental/curricular norms.
* Gather quotes from workers (AL, BJ, IS) then place them in corresponding course pages, or in project evaluation pages. (Project eval pages may need consolidating.
* Convert “Project evaluation” into “lessons learned”? Or add a lessons learned page?

## Specific courses

* DSCI 100:
  * notes from Lindsey
  * capture the slack thread. Done to Jan 6, 2023, file "dsci100-slack-230106.xlsx".
  * new [text book](https://python.datasciencebook.ca/intro.html) & [repo](https://github.com/UBC-DSCI/introduction-to-datascience-python).
  * [Student's course repo](https://github.com/UBC-DSCI/dsci-100-student-python).
* eosc442,
* atsc301,
* eosc211,
  * Add piazza data to eosc211
  * e211's startup docs, lock files and how-tos or tutorials.
* eosc429
* eosc471
* eosc373 (describe actions and outcomes with Hal's JNB)
* others?

## Done
* Courses top page: Change tables from "goals" to "delivered". Use "actions" listed in file `showcase notes 230215.docx`.
* Jupyter / Python install based on EOSC 211 (and maybe EOSC 354). Does this include use of condalock? - see [Jupyer NB Startup](jnb-startup-win.md).
* Project outcomes summary (Executive summary) needs reconfiguring more like the poster and showcase outline. Priorities are not efficient, and the whole thing is long winded.
