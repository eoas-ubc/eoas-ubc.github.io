# Fixes to documentation

See also **[issues](https://github.com/eoas-ubc/eoas-ubc.github.io/issues)** at the host repository, **[requirements](https://docs.google.com/spreadsheets/d/1DL2YDthzEbZijx35nVyveSstU5frQdzA/edit#gid=173746334)** (Google sheet) for each project component, and **[accomplishments & data](https://docs.google.com/spreadsheets/d/1BUk1_FHItUgzuyg2aJ-dX6XpMABmFSPe/edit#gid=979565415)** (Google sheet) for project outcomes.

## Updates, additions & corrections

* The [faculty training](facultydev.md) page needs work. The perspective is training as a project outcome.
* The [teaching with dashboards ...](tut-teachwith-dashboards.md) page needs updating.
  * Include a framework (maybe a template) for use. E.g. activity components such as "fosters questioning", "provides meaningful context", include anticipated time to complete, game-ify? etc.
  * reference "Fidelity of Implementation" when discussing dashboards, JNBs, questioning strategies (PrairieLearn, etc.), Open Ed. Resources, and so on. Google it for refs. [Here is one from 2017](https://www.lifescied.org/doi/10.1187/cbe.16-03-0113).
* ToDo for PA?
  * Revisit first-year accomplishments, including [md2canvas](https://github.com/eoas-ubc/md2canvas), AL's tutorials, and others. The [projects page](https://github.com/orgs/eoas-ubc/projects/1), and list of repositories may reveal items that need including or summarizing. Needs a walk-through with Phil.
  * add to ATSC301 page?
  * update status on two CMIP dashboards

## Dealing with dasboards

* new / updated dashboards
  * "ozone" dashboard to the collection. Maybe envr300 or others can use it?
  * image annotation app: needs a page, and explanation. Iddo's repo. This doesn't really address a specific OCESE goal, but it is an attempt to reproduce the LiterallyCanvas approach with is no longer supported. Although it does still work. See sketch examples on the EOAS website at 1, 2, 3, and 4.
  * eosec429 - needs to be demo'd with Roger.
  * ocgy - Rich P had a suggestion: lines between dots to identify cruises. See email 231120. He suggests a student might be able to fix that up.
  * Add licensing info to each (CC with details).
  * remove dashboard feedback links (global temperatures, and maybe others).
* need a clear statement of responsibility - from Philippe? Compstaff? And where are documentation, and what permissions are needed?
* maintenance commitment? add a note to dashboards page to contact help desk with problems?
* List candidates for OER, especially via SERC. Note they review but it takes time. First review https://oer.open.ubc.ca/ for ways this collection can be used.

## Ideas

* Should we be using a ubc-based Github organization for OCESE repositories [UBC GitHub instructor guide](https://lthub.ubc.ca/guides/github-instructor-guide/)?
* Do tutorials need to be more like precedent, i.e. modular such as [Helsinki "short course"](https://autogis-site.readthedocs.io/en/latest/index.html), [Project Pythia](https://projectpythia.org/), or Atlasian tutorials, etc.? In fact, some may best be referenced to these types of existing ones tutorials?
* Review and update of [Third party dashboards ...](refs-otherapps.md), including reference to the spreadsheet indicated on the top of that page.
* dashboards:
  * Build use-cases for each relevant course?
  * Explore [JB's cmip6 book?](https://github.com/fhmjones/cmip6_book),
  * review project notes about dashboards (FJ's OneNote).
  * build SERC resources? See ENVR 300 below.
  * Do SERC resources (eg EDDIE) inspire other dashboards?
* Jupyter startup: consider material from eosc442 and dsci100? How does this compare to docs used in EOSC 211? Should [Project Pythia's foundations book](https://foundations.projectpythia.org/landing-page.html) be used instead?
* explore stand-alone apps - via PyIinstaller? See for example [here](https://www.mssqltips.com/sqlservertip/7608/python-executable-standalone-application/).
* professional development - offer workshops at CTLT on dashboard development and use?
* Need a show and tell, emphasizing "implications for you and students". maybe split into "direct impacts" and "implied or potential impacts".
* Gather repositories with PA, FJ, JB, IS and collect at eoas-ubc. Maybe start by using tags (i.e. "topics") in FJ's GitHub account.
* Gather quotes from workers (AL, BJ, IS) then place them in corresponding course pages, or in project evaluation pages. (Project eval pages may need consolidating.
* courses to "pester" about use of OCESE outcomes & resources? eosc310, eosc329, eosc340, eosc350 (standalone apps - maybe magnetics dipole?), eosc373?

---

## Done

* Executive summary rebuilt
* "Course Enhancements" top page: Change tables from "goals" to "delivered". Use "actions" listed in file `showcase notes 230215.docx`.
* Jupyter / Python install based on EOSC 211 (and maybe EOSC 354). Does this include use of condalock?.
* Project outcomes summary (Executive summary) needs reconfiguring more like the poster and showcase outline. Priorities are not efficient, and the whole thing is long winded.
* Merge "dashboard deployment" onto "Developing dashboards".
* merged Python startup and jupyternotebook startup. Python needs no "startup" but it can reference a few courses and resources.
* Upgrade and 'rationalize' the two environments pages.
* "Rationalize" project evaluation pages.
* DSCI 100 page updated.
* reorganize *three github pages*.
* Add report (without budget) to progress reports section.
* dashboards: other ideas added. Needs augmenting.
* EER poster done.
* This "improvememnt" was simply dropped: *Conda & environments* and *Using environments* need rationalizing and updating.
* Jupytext added to the Other Software Tools page.
* The [Atlasian tutorials](https://www.atlassian.com/git/tutorials/comparing-workflows) & [Ch.12 of the DSCI100 text](https://python.datasciencebook.ca/version-control.html) were referenced on the Git tutorial [top page](tut-git-github.md) and the [Git/GitHub resources](tut-gitrefs.md) page.
* Andrew's crash course content added from [here](https://github.com/AndrewLoeppky/crash_course/blob/master/coding_crash_course.md) (dated ~2020).
* added creative commons to docs.
* Added Zhiyong Wang to list of student contributors.
* Added the Nov 2023 [edubytes](https://mailchi.mp/ubc/edubytes-newsletter-november2023?e=f1df481e69) piece to presentations page.
* Reference page removed - not needed. Should more refs be added throughout? QuEST project has many but OCESE zotero collection is short. Or, a bibliography might be adequate unless an official publication is produced. This could be done using BibTex reference files - see the [Jupyter Books citation tutorial](https://jupyterbook.org/en/stable/tutorials/references.html).
* eosc114 page generated and PPTX + PDF of the mind-map thinking was included.
* eosc211 page cleaned up, and survey data added.
* On the "project-outline.md" page, added a reference to the data science recommendations from 2019 (mentioned at the start of the [edubyts piece](https://ctlt.ubc.ca/2023/11/30/edubytes-implementing-computational-tools-for-learning/)) and to Spectrum’s top programming languages charts.
* Courses finished: 442 (including reference to climate data sets for projects) & 471.
* Servers and hubs shortened to Jupyter Hubs.
* [automating assessments](openassessment.md): finished - not optimal, but at least not "notes".
* The "Other software tools" page has been redistributed to other pages with sensible contexts.
