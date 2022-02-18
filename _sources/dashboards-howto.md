# Dashboard development

**What are "dashboards"**? These are interactive mathematical or data exploration applications hosted online and used in any standard browser. They are used by instructors and students or other learners to explore complex data sets, address problems or assignments, or experiment with challenging concepts.

## Dashboards developed as part of OCESE

There is a [separate [list of dashboards](dashboards.md) generated during the OCESE project.

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

## Deploying dashboards

### To run only on your own computer

This choice makes sense when you are experimenting with the dashboard or planning (if only temporarily) on using it for presentations for a class or presentation.

### Sharing during development

To enable users and developers to share a working copy and discuss design and pedagogic aspects, deploying to a free Heroku account works well. Each such account can only house five apps. See separate [instructions for deploying to Heroku](./heroku.html).

### Deploying to a suitable Hub 

This will be required if more than 5-10 people might use the dashboard at once. This is non-trivial, and details will be documented later, hopefully during summer 2022. For now, if you need to see the repository used for deploying our collection, see scripts and Docker files at the [addon_containers](https://github.com/phaustin/addon_containers) repo. 

## References and resources

* [Here is a](https://towardsdatascience.com/bring-your-jupyter-notebook-to-life-with-interactive-widgets-bc12e03f0916) reasonably complete, succinct introduction to `ipywidgets` dated May 3, 2019. This article is at "towardsdatascience.com" which is delivered as part of a subscription to the [Medium](https://medium.com/) digital publishing group. (But you can see this using an incognito browser window as often as you like ... )
* ipywidgets [documentation](https://ipywidgets.readthedocs.io/en/latest/) although, like many docs, it is a technical reference, not a tutorial. 
  * See in particular the [using interact](https://ipywidgets.readthedocs.io/en/latest/examples/Using%20Interact.html) page.
* others?