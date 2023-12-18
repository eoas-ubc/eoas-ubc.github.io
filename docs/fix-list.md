# Fixes to documentation

See also **[issues](https://github.com/eoas-ubc/eoas-ubc.github.io/issues)** at the host repository, **[requirements](https://docs.google.com/spreadsheets/d/1DL2YDthzEbZijx35nVyveSstU5frQdzA/edit#gid=173746334)** (Google sheet) for each project component, and **[accomplishments & data](https://docs.google.com/spreadsheets/d/1BUk1_FHItUgzuyg2aJ-dX6XpMABmFSPe/edit#gid=979565415)** (Google sheet) for project outcomes.

## Ideas

* Do tutorials need to be more like precedent, i.e. modular such as [Helsinki "short course"](https://autogis-site.readthedocs.io/en/latest/index.html), [Project Pythia](https://projectpythia.org/), or Atlasian tutorials, etc.? In fact, some may best be referenced to these types of existing ones tutorials?
* Review and update of [teaching with Jupyter NBs](tut-teachwith-jnbs.md).
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

## Improvements

* Add Zhiyong Wang to list of student contributors.
* add creative commons to docs.
* Refer to Spectrum’s top programming languages charts. 
* Review and update of [teaching with Jupyter NBs](tut-teachwith-jnbs.md).
* dashboards:
  * Review and update of [Third party dashboards ...](refs-otherapps.md), including reference to the spreadsheet indicated on the top of that page.
   * The [teaching with ...](tut-teachwith-dashboards.md) page needs updating. Include a framework (maybe a template) for use. E.g. activity components such as "fosters questioning", "provides meaningful context", include anticipated time to complete, game-ify? etc.
   * Add licensing info to each (CC with details).
   * need a clear statement of responsibility - from Philippe? Compstaff? And where are documentation, and what permissions are needed? 
   * remove dashboard feedback links (global temperatures, and maybe others).
   * maintenance commitment? add a note to dashboards page to contact help desk with problems?
* Servers and hubs: move, rename & rewrite; it's not really a how-to since we & others are still iterating towards optimal choices. It needs to be more like "lessons learned".
* [automating assessments](openassessment.md): not yet complete
* The [faculty training](facultydev.md) page needs work. The perspective is training as a project outcome.
* ToDo for PA? 
  * add to ATSC301 page?
  * update status on two CMIP dashboards

## Additions

* Add the Nov 2023 [edubytes](https://mailchi.mp/ubc/edubytes-newsletter-november2023?e=f1df481e69) piece to presentations page.
* Need a show and tell, emphasizing "implications for you and students". maybe split into "direct impacts" and "implied or potential impacts"
* Incorporate references about "Fidelity of Implementation" when discussing dashboards, JNBs, questioning strategies (PrairieLearn, etc.), Open Ed. Resources, and so on. Google it for refs. [Here is one from 2017](https://www.lifescied.org/doi/10.1187/cbe.16-03-0113).
* Gather repositories with PA, FJ, JB, IS and collect at eoas-ubc. Maybe start by using tags (i.e. "topics") in FJ's GitHub account.
* [Cited references](refs-citations.md) should be added throughout, as needed, based on QuEST project and FJ's Zotero collection. Or, a bibliography might be adequate unless an official publication is prpduced. This could be done using BibTex reference files - see the [Jupyter Books citation tutorial](https://jupyterbook.org/en/stable/tutorials/references.html).
* More about open-source, with examples, especially w.r.t. earth sciences. Eg: pangeo, SimpEG, Fatiango, geosci.xyz, (find ocgy and atsc examples), Jupyter books (again, referring to UBC's examples open.ubc.ca. [Numerical Techniques for AOE scientists](https://rhwhite.github.io/numeric_2022/), R. White and S. Allen, DSCI100 [python text](https://python.datasciencebook.ca/intro.html)  & [repo](https://github.com/UBC-DSCI/introduction-to-datascience-python).
* Revisit first-year accomplishments, including [md2canvas](https://github.com/eoas-ubc/md2canvas), AL's tutorials, and others. The [projects page](https://github.com/orgs/eoas-ubc/projects/1), and list of repositories may reveal items that need including or summarizing. Needs a walk-through with Phil.
* List courses that could leverage lessons we learned to align with students' needs, efficiency, and departmental/curricular norms.
* Gather quotes from workers (AL, BJ, IS) then place them in corresponding course pages, or in project evaluation pages. (Project eval pages may need consolidating.
* Convert “Project evaluation” into “lessons learned”? Or add a lessons learned page?
* dashboards
  * "ozone" dashboard to the collection. Maybe envr300 or others can use it?
  * image annotation app: needs a page, and explanation. Iddo's repo. This doesn't really address a specific OCESE goal, but it is an attempt to reproduce the LiterallyCanvas approach with is no longer supported. Although it does still work. See sketch examples on the EOAS website at 1, 2, 3, and 4.
  * eosec429 - when ready.
  * ocgy - Rich P had a suggestion: lines between dots to identify cruises. See email 231120. He suggests a student might be able to fix that up.
* List candidates for OER, especially via SERC. Note they review but it takes time.
* references - zotero for OCESE? Consider using Zotero [report formatting](http://jasonpriem.com/projects/report_cleaner.php).
* Add [EDUCE](https://educe-ubc.github.io/about.html) to references somehow.

## Specific courses

* eosc211,
  * Add piazza data?
  * e211's startup docs, lock files and how-tos or tutorials.
* eosc429
* eosc373 (describe actions and outcomes with Hal's JNB)
* eosc442:
  * are climate datasets an OCESE outcome? Not really, except that upgrading the course's project activity was a separately funded project carried out at the same time as OCESE, and with a little support from OCESE staff (FJ).
  * Do they want more climate data sets? Are EDDIE modules a source? Is the climate emergency committee still addressing data sets?
  * Mention labs. Not OCESE work, other than consulting a few times with Becca and Michael. However, labs were re-written to account for students Python skills. See FJ files:
    * ...\courses\eosc442\projects\Final Project Course Page_ EOSC 442 101 2022W1 Climate Measurement and Analysis.pdf
    * ...\courses\eosc442\projects\Sample Datasets and Analysis Questions_ EOSC 442 101 2022W1 Climate Measur...alysis.pdf
    * Climate data sets: Becca's datasets list online here, or FJ's version: ...\courses\climate\Climate datasets - Rebecca 230310.docx.
* envr 300: adapting the CO2 activity to become an "Eddie Module" would serve as "completion" step for dashboard development. Needs permission. Submission as an Eddie module is done by completing the form [here](https://serc.carleton.edu/eddie/participate/contribute_activity.html), then editing resulting webpage at SERC. Early effort was carried out on day 5 of EER.

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