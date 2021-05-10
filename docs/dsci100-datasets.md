# UBC course DSCI 100
An outline of **Data Science 100: Introduction to Data Science**, based on materials at their [GitHub DSCI-100 repo](https://github.com/UBC-DSCI/dsci-100).

## Description

Officially, "*Use of data science tools to summarize, visualize, and analyze data. Sensible workflows and clear interpretations are emphasized*". 

**Prerequisites**: At least first year standing in Science at UBC. No previous programming skills necessary; beginners are welcome!

## Official learning outcomes:

   1. **Read data** using computation from various sources (local and remote plain text files, spreadsheets and databases)
   2. **Wrangle data** from their original format into a fit-for-purpose format.
   3. Identify the most **common types of research/statistical questions** and map them to the appropriate type of data analysis.
   4. Create, and interpret, meaningful **tables** from wrangled data.
   5. Create, and interpret, impactful **figures** from wrangled data.
   6. Apply, and interpret the output of simple **classifier and regression models**.
   7. Make and evaluate **predictions** using a simple classifier and a regression model.
   8. Apply, and interpret the output of, a simple **clustering algorithm**.
   9. Distinguish between in-sample **prediction**, out-of-sample prediction, and **cross-validation**.
   10. Calculate a **point estimate** in the context of statistical inference and explain how that relates to the population quantity being estimated.
   11. Accomplish all of the above using **workflows and communication strategies** that are sensible, clear, reproducible, and shareable.

## Course Outline

An succinct weekly outline is given under the "**Schedule**" heading in the course's GitHub repository [readme file](https://github.com/UBC-DSCI/dsci-100).

## Weekly topic coverage and corresponding data sets

These datasets were found by browsing repository folders and examining files named: "*tutorial_n, tutorial_activity_n, worksheet_n* and *worksheet_activity_n*". Tutorials have numbered headings and subheadings and a new heading sometimes involves a new data set. It seems helpful to explore these folders by considering "*worksheet_activity_0n*" first, then "*worksheet_n*", then "*tutorial_activity_n*", then "*tutorial_n*".

|Week no. and Topic|Data Sets. Those with a climate or EOAS flavour are *bold*.|
|---|---|
|1. **introduction** to R and Jupyter notebooks by doing some data preparation and scatter plotting.|-marathon runners, <br>-bike-share (**climate mitigation mentioned**), <br>-R's built-in "Iris" data, |
|2. one **complete sequence** of fetching, wrangling visualizing and interpreting various data sets.|-[Happiness Report, Kaggle, 2017](https://www.kaggle.com/unsdsn/world-happiness); <br>-a filtered version of [Airline On-Time Performance Dataset](https://www.kaggle.com/usdot/flight-delays); <br>-scraped data from the [Wikipedia Gross world product page](https://en.wikipedia.org/wiki/Gross_world_product); <br>-**Environment Canada weather (snow) for Whistler**; <br>-[books to scrape](http://books.toscrape.com/).|
|3. tools for **cleaning and wrangling** data - another complete realworld case.|-Avocado prices, <br>-**Sea Surface Temperatures** & **salinity** in Departure Bay, <br>-**Pollution in Madrid**, <br>-"*mtcars*" (built into R)| 
|4. **plotting**: beyond scatter plots|-World Vaccination Trends (from WHO); <br>-Fast-Food Chains in the USA; <br>-diamond prices; <br>-Personal Medical Costs (from [curated data sets for machine learning](https://github.com/stedy/Machine-Learning-with-R-datasets)).|
|5. quiz 1|NA|
|6. **classification** ("training") using K-nearest neighbours (k-nn)|-Breast Cancer Data, <br>-"Iris", <br>-[fruit quality prediction](https://www.kaggle.com/mjamilmoughal/k-nearest-neighbor-classifier-to-predict-fruits/notebook) (at Kaggle, including Python code); <br>-[Wheat Seed characteristics](https://archive.ics.uci.edu/ml/datasets/seeds); |
|7. classification continued|handwritten digits (from [here](https://tensorflow.rstudio.com/tutorials/beginners/))|
|8. **regression** using K-nearest neighbours (k-nn) and prediction of a response variable of interest with a single explanatory variable.|-avocadoes again, <br>-marathon running, |
|9. k-nn regression in higher dimensions, and comparison to linear models|-marathon data again; <br>-simulated data to predict customer credit card balance; <br>-housing in Ames, Iowa.|
|10. quiz 2|NA|
|11. **clustering** using K-means (labelled as week 10)|<br>-[craft beer data set from Kaggle](https://www.kaggle.com/nickhould/craft-cans#beers.csv); <br>-[an economics time series](https://ggplot2.tidyverse.org/reference/economics.html); <br>-[Pokemon dataset from Kaggle](https://www.kaggle.com/abcsds/pokemon); <br>-[A dataset from TripAdvisor](https://archive.ics.uci.edu/ml/datasets/Travel+Reviews)|
|12. **sampling** and **estimation** (labelled as week 11)|-simulated dataset of ages for our population;|
|13. **confidence interevales** via bootstrapping (labelled as week 12)|-simulated ages again.|

<hr> &nbsp;

## Tools and learning environment

* Open-source textbook: [Introduction to Data Science](https://ubc-dsci.github.io/introduction-to-datascience/), or see also the [corresponding GitHub repository](https://github.com/UBC-DSCI/introduction-to-datascience).
* The R programming language is used throughout. 
* Jupyter Notebooks are used for all worksheets and tutorial problem sets as well as the final project analysis, development, and reports. 
* Students require a laptop, chromebook or tablet for lectures and tutorials.
* Note that the [kaggle.com](https://www.kaggle.com/) site contains many data sets for learning, and includes notebooks to support various data science functions.
* Students are told how to take Jupyter notebook work outside of the course's Canvas environment at the end of the course. See instructions in file *worksheet_12.ipynb*. 

## Course grading breakdown

|Deliverable | Percent Grade|
|----------- |:-----:|
|Lecture worksheets; work done during each lesson |5|
|Tutorial problem sets; work done during tutorials |15|
|Group project; proposal, final report, team work, group contract 	|20|
|Two quizzes (instead of a midterm)|40|
|Formal final exam |20|

## Course materials

Materials that can be found in folders at the ["course assets" repository](https://github.com/UBC-DSCI/dsci-100-assets) include: 

* 8 tutorials, 
* 7 tutorial activities, 
* 11 worksheets, 
* 7 worksheet activities.

Folders include some data sets and *.ipynb files which expect an R-kernal if you want to run them as active Jupyter notebooks. (Without the R-kernal, you can see them by running in Jupyter notebooks, but you will not be able to run them.)
