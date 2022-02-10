# Deploying dashboards to Heroku

This is an outline of steps to deploy Dash app to a free account at the Heroku servers for public online access.

Although serving from Heroku has limitations, it is one way  to make apps accessible to the whole design team (eg. instructors, TAs etc.) without requiring them to have a personal Python installation. 

Eventually OCESE dashboard apps will be housed either on a local (EOAS) server or in "managed" cloud-space. 

---

## List of Steps
See the tutorial [here](https://austinlasseter.medium.com/deploy-a-plotly-dash-app-on-heroku-4d2c3224230) for deploying dashboards apps to heroku. This is a summary of steps from the tutorial. 

- Make a heroku account [here](https://www.heroku.com/)
- Download and install [the heroku CLI](https://devcenter.heroku.com/articles/heroku-cli). If using Mac, you need to install [brew](https://brew.sh/) first. (I used Windows)
- In terminal type `heroku login` and follow the instructions to log in to your account.
- Your project should already be set up on github. It should have the following files:
     - app.py (should have already to run Dash locally)
     - requirements.txt (needs to have gunicorn)
     - runtime.txt (I've been using a file which just contains "python-3.7.12")
     - Procfile (I've been using a file which just contains "web: gunicorn app:server")
 - Navigate to your project's root folder. In terminal type `heroku create project-name`, where "project-name" will be in the url.
 - Make sure your project is up to date and everything is pushed to github
 - In the terminal `git push heroku main`
 - The terminal will tell you the url of your project but it will have the format "https://project-name.herokuapp.com/"
 
---
## Summary of Costs
From the [heroku limits page](https://devcenter.heroku.com/articles/limits) and the [pricing page](https://www.heroku.com/pricing):

- Free accounts can create at most 5 apps. Paid accounts can create no more than 100 apps
- A single app can have up to 1000 custom domains assigned to it (??)
- Maximum RAM for different Dynos
     - free, hobby, and standard-1x have 512 MB
     - standard-2x has 1024 MB
     - performance-m has 2.5 GB
     - performance-l has 14 GB
 - Max concurrent users is 50 (for hobby, standard-1x, standard-2x)
 - Free accounts: 550-1000 hours per month