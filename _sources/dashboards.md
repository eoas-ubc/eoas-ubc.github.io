# Dashboard learning resources

## Building and deploying dashboards

**What are "dashboards"**? These are interactive mathematical or data exploration applications hosted online and used in any standard browser. They are used by instructors and students or other learners to explore complex data sets or experiment with challenging concepts.

This page will eventually provide guidelines and pointers to documentation for building and deploying dashboards for use in classes, student activities or assignments. But first some examples:

## Dashboards being developed as of November, 2021

Climate science & oceanography:
* **[ocgy-dataviewer](https://ocgy-dataviewer.herokuapp.com/)**, on github at [repo](https://github.com/jamiebyer/ocgy-dataviewer), observe and compare trace element and physical properties in the water column at selected locations in the Southern Ocean, the Atlantic and the North Pacific.
* **[climate-change-graph](https://climate-change-graphs.herokuapp.com/)**, on github at [repo](https://github.com/jamiebyer/climate-change-graph), anticipated to be used in eosc112 and eosc116 in term 2021W1
* **climate-mind-map**, on github at [repo](https://github.com/jamiebyer/climate-mind-map), instructors want to do a "paper" activity based on these ideas first.
* **[climate-maunaloa](https://climate-maunaloa.herokuapp.com/)**, on github at [repo](https://github.com/fhmjones/envr-maunaloa), used Jan. 2021 in envr300.
* **climate-maunaloa-jnb**, on github at [repo](https://github.com/fhmjones/envr-maunaloa-jnb), a Jupyter Notebook version of this. 
* **[climate-ozone](https://climate-ozone.herokuapp.com/)**, on github at [repo](https://github.com/fhmjones/envr-ozone), made for envr300.
* **cmip6** (climate): Explore the CMPI6 climate science data sets ... in progress
* **modtran** or **Libradtran** atmospheric radiative transfer: in progress

Geology and hydrogeology
* **[Mohr's circles](https://mohrs.herokuapp.com/)**, on github at [repo](https://github.com/fhmjones/mohrs), for exploring geological structures
* **[hydro-storativity](https://hydro-storativity.herokuapp.com/)**, on github at [repo](https://github.com/jamiebyer/hydro-storativity), anticipated use in eosc325, fall 2021.
* **[hydro-unconfined-flow](https://hydro-unconfined-flow.herokuapp.com/)**, on github at [repo](https://github.com/jamiebyer/hydro-unconfined-flow), anticipated use in eosc325, fall 2021.
* **[hydro-thiem-dupuit-frochheimer](https://hydro-thiem-dupuit-forchheimer.herokuapp.com/)**, on github at [repo](https://github.com/jamiebyer/hydro-thiem-dupuit-forchheimer), anticipated use in eosc325, fall 2021.

Geophysics or "signals"
* **[timeseries-3signals](https://timeseries-3signals.herokuapp.com/)**, on github at [repo](https://github.com/fhmjones/envr-3signals), used Jan. 2021 in envr300.
* **[timeseries-FFT](none)**, on github at [repo](https://github.com/fhmjones/timeseries-fft), works, but incomplete.
* **[interactive images](https://clickimage.herokuapp.com/)**, on github at [repo](https://github.com/fhmjones/ClickImage), simply to illustrate interactivity with figures.
* **[gpglabs (many)](https://e350hub.eoastest5.xyz)**, on github at [repo](https://github.com/geoscixyz/gpgLabs), applied geophysics. Fwd & inverse modeling and physics. Secured for course use.

---

## Environment for develpment

Any python development environment, using the [Dash Plotly](https://dash.plotly.com/) environment and [Plotly graphing](https://plotly.com/python/) libraries. Alternatively design using Jupyter Notebooks with the [ipywidgets library](https://ipywidgets.readthedocs.io/en/latest/) for interactivity.

These two options are not always easily translated one into the other. So choose the preferred deployment environment thoughtfully.

## Design criteria

Key criteria are:
 1. Keep apps simple and focused on one concept or dataset. Making tools too versatile or complex increases the learning curve which reduces the likelihood of the resource being readily incorporated into teaching or learning.
 2. Do not include teaching or learning "tasks" like specific questions or assignments. Deliver those to students separately. This will ensure that apps do not have to be re-built for different courses, assignments or use-cases.
 3. If using Jupyter Notebooks, the ipywidgets library is used instead of Plotly graphics.
 4. To hide code when writing for Jupyter Notebooks, write the interactive app as a *.py file and call it in the Notebook.
 5. More details and guidelines to come ...

## Deploying dashboards

Details yet to be written, but sections will likely include something like the following:

### To run only on your own computer

This choice makes sense when you are experimenting with the dashboard or planning (if only temporarily) on using it for presentations for a class or presentation.

### Deploy to Heroku.

See the [Heroku](https://fhmjones.github.io/heroku.html) page.

## References and resources

* [Here is a](https://towardsdatascience.com/bring-your-jupyter-notebook-to-life-with-interactive-widgets-bc12e03f0916) reasonably complete, succinct introduction to `ipywidgets` dated May 3, 2019. This article is at "towardsdatascience.com" which is delivered as part of a subscription to the [Medium](https://medium.com/) digital publishing group. (But you can see this using an incognito browser window as often as you like ... )
* ipywidgets [documentation](https://ipywidgets.readthedocs.io/en/latest/) although, like many docs, it is a technical reference, not a tutorial. 
  * See in particular the [using interact](https://ipywidgets.readthedocs.io/en/latest/examples/Using%20Interact.html) page.
* others?