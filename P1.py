#Recreate the two graphics in this repo using the gapminder dataset from library(gapminder) 
# (get them to match as closely as you can).
#Export the data from R and import it into your Python environment.
#Use plotnine or Altair to mimic the two graphics as close as possible.
#Build a weighted average data set using GDP, the black continent average line on the second plot.

#### Git config 
git config --global user.name 'ashleyrabanales'
git config --global user.email 'arabana2@students.edu'
#%%
import sys
!{sys.executable} -m pip install altair_saver 
#%%
#pip install  altair_saver
#%%
#import sys
#!{sys.executable} -m pip install numpy pandas scikit-learn plotnine altair 
# %%
!{sys.executable} -m pip install pyarrow
#%%
import matplotlib as plt
#%%
import sys
from altair.vegalite.v4.schema.channels import X
!{sys.executable} -m pip install --upgrade pip
# %%
import pandas as pd
import numpy as np
import altair as alt
from plotnine import *
#%%

gapminder = pd.read_csv("gapminder.csv").assign(
    pop100k = lambda x: x['pop']/ 100000
)
#%% 
#Python imagine 1


p1 = (alt.Chart(gapminder)
    .encode(
      x = alt.X('lifeExp', title = 'Life Expectancy',
      scale=alt.Scale(zero=False)),
      y = alt.Y('gdpPercap', title = "GDP per captia"),
    color = alt.Color ('continent', title = "Continent"),
    size = alt.Size('pop100k', title = "Population (100k)"
    ))
  .mark_circle()
  .properties(width = (125))
  .facet(column = 'year'))

p1
#%%
p1.savefig('p1_python1.png')
#%%
## calculated weight avg
(gapminder
    .groupby(['continent', 'year'])).apply(lambda x: 
    np.average(x.gdpPercap, weights = x 
    ['pop'])).reset_index()
#%%
(gapminder 

    .groupby(['continent', 'year'])
    .agg(gdpPercap = ('gdpPercap', np.mean))
   )
 #.apply(lambda x: np.average(x.gdpPercap, weights = x 
   # ['pop']))).reset_index() 
#%%
# 2nd alternate but is not running
(gapminder 
    .assign(
         gdppop = lambda x: x.gdpPerCap * x['pop'])
    .groupby(['continent', 'year'])
    .agg(
        sumgdppop = ("gdppop", "sum"),
        totalpop = ("pop", "sum"))
        )
.reset_index()
.assign(gdpPercapWeighted = lambda x: x.sumgdppop / x.totalpop))
##not running due to some errors
#%%

(gapminder)
#Python image 2
#renaming data to convert into a new one
(gapminder

    .groupby(['continent', 'year'])
    .agg(gdpPercap = ('gdpPercap', np.mean))
   )
#%%


# %%
