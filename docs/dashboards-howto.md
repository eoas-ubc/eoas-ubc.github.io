# Developing dashboards

**What are "dashboards"**? These are interactive mathematical or data exploration applications hosted online and used in any standard browser. They are used by instructors and students or other learners to explore complex data sets, address problems or assignments, or experiment with challenging concepts.

## Dashboards developed as part of OCESE

There is a separate [list of dashboards](dashboards.md) generated during the OCESE project.

## Environment for develpment

Any python development environment, using the [Dash Plotly](https://dash.plotly.com/) environment and [Plotly graphing](https://plotly.com/python/) libraries. Alternatively design using Jupyter Notebooks with the [ipywidgets library](https://ipywidgets.readthedocs.io/en/latest/) for interactivity.

These two options are not always easily translated one into the other. So choose the preferred deployment environment thoughtfully.

## Design criteria

Our key design criteria are based on keeping the focus on efficient, effective learning first, and clarity for sustainable maintainance second.

  1. Keep apps simple and focused on one concept or dataset. Making tools too versatile or complex increases the learning curve which reduces the likelihood of the resource being readily incorporated into teaching or learning.
  2. Do not include teaching or learning "tasks" like specific questions or assignments. Deliver those to students separately. This will ensure that apps do not have to be re-built for different courses, assignments or use-cases.
  3. If using Jupyter Notebooks, the ipywidgets library is used instead of Plotly graphics.
  4. To hide code when writing for Jupyter Notebooks, write the interactive app as a *.py file and call it in the Notebook.
  5. Ensure that graphs and controls can be seen on a single screen that is 1920 x 1080 pixels. If there are two interactive sections of the dashboard, that might mean putting instructions for both together above or below the interactive sections of the page.
  6. Ensure code is properly documented with pointers to sources of inspiration or coding techniques. Someone other than the original developer will very likely be the next person to update the dashboard app.
  7. A second iteration following first real use by students can be expected because feedback from students often includes good suggestions, and instructors think of improvements only after seening students use the resource.
  8. Deploying on a public “slow” server helps with the design cycle when there is no in-house sever, but this will hopefully not be necessary with an EOAS-managed dashboard server.

Ideally these kinds of learning resources should include "think aloud" sessions with student users to determine what aspects of the interface need improving, and whether there are misconceptions that are poorly addressed by the tool. However these are small-scale resources and time is rarely available for this step.

## Deploying dashboards

### To run only on your own computer

This choice makes sense when you are experimenting with the dashboard or planning (if only temporarily) to use it for presentations in a class or presentation.

### Free server

We have used [render.com](https://render.com/) to share intermediate versions with instructors, developers, teaching assistants and other stakeholders, during the design, test, iterate cycle. There is a free version of this service, but it has limited space and bandwidth and is relatively slow to spin up the server each time the app is called. There are likely alternative approaches for temporary sharing or demonstrating, but this has worked for us during the OCESE project.

### Deploying for permanent use by students

As of June 2023, the repository we are using for deploying our collection, see scripts and Docker files at the [addon_containers](https://github.com/phaustin/addon_containers) GitHub repository.

* **Hardware**: server with 24 cores, 132 Gbytes of RAM. This has worked well during the 2022-23 academic season. Ideally there would also be a twin available, to be used as a hot spare if needed.

* **Administration**:  Someone needs to be able to monitor the processes, respond to "help" calls, restart the server if necessary, fetch updates from github and launch those, etc. "Costs" have not been assessed carefully, but this may involve something like 5 hours per month for 10-15 apps.

* **Software**: serving the dashboards involves creating docker containers, building them and pushing to the docker repository. This currently involves adding folders to https://github.com/phaustin/addon_containers. It is currently done "manually", but could be templated using github actions to make this essentially automatic. As of June 2023, we have not refined this procedure.

## Some "costs" of developing dashboard for teaching/learning

* The design cycle involved numerous iterations so working code can be developed then the instructor can explore how initial designs will work in their planned setting, adjust, revisit, and iterate until satisfied.
* There may also be a second round of adjustments after first deployment in a real course.
* Implementing as a class assignment requires the dashboard be hosted on a reasonably fast server that can handle multiple logins. Instructors also need to explore the dashboard to identify opportunities and limitations so that meaningful tasks can be set for students to apply concepts being learned in the class.
* The question of longer term maintenance, deployment and sustainability of these tools is still a question. Instructors can not be expected to handle all the coding and server technology as well as incorporate excellent, evidence-base, student-centric pedagogy.

## References and resources

* [Here is a](https://towardsdatascience.com/bring-your-jupyter-notebook-to-life-with-interactive-widgets-bc12e03f0916) reasonably complete, succinct introduction to `ipywidgets` dated May 3, 2019. This article is at "towardsdatascience.com" which is delivered as part of a subscription to the [Medium](https://medium.com/) digital publishing group. (But you can see this using an incognito browser window as often as you like ... )
* ipywidgets [documentation](https://ipywidgets.readthedocs.io/en/latest/) although, like many docs, it is a technical reference, not a tutorial.
  * See in particular the [using interact](https://ipywidgets.readthedocs.io/en/latest/examples/Using%20Interact.html) page.
* others?
