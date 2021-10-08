# Data science and visualization

> If 80% of data science work is data wrangling, 80% of your impact is through visualization. 

## Background

[Hans Rosling](http://www.gapminder.org/news/sad-to-announce-hans-rosling-passed-away-this-morning/) is one of the most popular data scientists on the web. [His original TED talk](https://www.ted.com/talks/hans_rosling_shows_the_best_stats_you_ve_ever_seen) was viral among my friends when it came out. We are going to create some graphics using his formatted data as our weekly case study. Note that we need to remove Kuwait from the data ([discussion on this](https://github.com/jennybc/gapminder/issues/9))

## Tasks

### Visualization review

- [x] Complete a review of 2-3 different data visualizations used to answer specific questions. Some fun websites are [pudding.cool](https://pudding.cool/), wonkblog, [fivethiryeight](https://fivethirtyeight.com/), and [priceonomics](https://priceonomics.com/) (but you can use any website, blog, or article with a good visualization).
 
 •	Does living in a black neighborhood has a high insurance than a predominantly white neighborhood? By using a scatterplot, I can see a weak positive correlation that can signify the correlation between prices from renters and black residents' policies that cost more than the average. Another visualization between average percentage insurance and percentage city that is black demonstrates a significantly lower correlation by using the top ten insurance in California. Another visual is a bar chart illustrating, the insurance Goodcover doesn't have much of a difference with both neighborhoods. This can also be extraneous factors that could influence the correlation such as risks of invasion, fire, or liability. The visualizations can further explain the study and to determine if there were correlation or not. It demonstrate a further explanation about housing insurance.
	https://priceonomics.com/is-insurance-more-expensive-in-black-neighborhoods/


The frustration of shopping for woman's clothes are controversial. By being held too small to knitted pockets or being pleased with have pockets in a dress or pants. While men's pockets are so deep and spacious. The study presented a comparison of pockets between men and women by demonstrating an illustration by each scroll down with addition to facts, color, and size. There is a significant difference in size and brands for both genders.
o	https://pudding.cool/2018/08/pockets/



### Slack, VScode, Rstudio, Git, and Github

- [x] Make sure you are in our Slack workspace.
- [x] Finish setting up VScode for programming in R and Python.
- [x] Finish setting up Rstudio.
- [x] Finish installing Git.
- [x] Finish creating your Github account and connecting to our organization.

### R

- [x] Recreate the two graphics in this repo using `gapminder` dataset from `library(gapminder)` (get them to match as closely as you can).
    - [x] Use `library(tidyverse)` to load ggplot2 and dplyr and the `theme_bw()` to duplicate the first plot.
    - [x] Use `scale_y_continuous(trans = "sqrt")` to get the correct scale on the y-axis.
    - [x] Build weighted average data set using `weighted.mean()` and GDP with `summarise()` and `group_by()` that will be the black continent average line on the second plot.
    - [x] Use `theme_bw()` to duplicate the second plot. You will need to use the new data to make the black lines and dots showing the continent average.
    - [x] Use `ggsave()` and save each plot as a .png with a width of 15 inches.

### Python

- [x] Recreate the two graphics in this repo using the `gapminder` dataset from `library(gapminder)` (get them to match as closely as you can).
    - [ ] Export the data from R and import it into your Python environment. 
    - [ ] Use [plotnine](https://plotnine.readthedocs.io/en/stable/) or [Altair](https://altair-viz.github.io/index.html) to mimic the two graphics as close as possible.
    - [ ] Build a weighted average data set using GDP, the black continent average line on the second plot.


## Readings



### Visualization (being)

- [John Rauser on visualization](https://youtu.be/fSgEeI2Xpdc)
- [Effectively Communicating Numbers](http://perceptualedge.com/articles/Whitepapers/Communicating_Numbers.pdf)

### Technology

- [Slack quick start guide](https://slack.com/help/articles/360059928654-How-to-use-Slack--your-quick-start-guide)
- [VScode](https://code.visualstudio.com/) and [interactive Python in VScode](https://code.visualstudio.com/docs/python/jupyter-support-py)
- [Git](https://git-scm.com/), [Python](https://www.python.org/downloads/), [R](https://cloud.r-project.org/) installation.
- [Rstudio](https://www.rstudio.com/products/rstudio/download/#download) and [Using Git within Rstudio](https://cfss.uchicago.edu/setup/git-with-rstudio/)
- [Github](https://github.com/join) (_Please carefully think about your Github username. It is for business use._)

### R

- [R4DS: Chapter 3 Data visualization](https://r4ds.had.co.nz/data-visualisation.html)
- [R4DS: Chapter 28 Graphics for communication](https://r4ds.had.co.nz/graphics-for-communication.html)

### Python

- [Py4DS: Chapter 3 Data visualization](https://byuidatascience.github.io/python4ds/data-visualisation.html)
- [Py4DS: Chapter 28 Graphics for communication](https://byuidatascience.github.io/python4ds/graphics-for-communication.html)

