### R using gapminder####
# Recreate the two graphics in this repo using `gapminder` dataset from `library(gapminder)` (get them to match as closely as you can).
#Use `library(tidyverse)` to load ggplot2 and dplyr and the `theme_bw()` to duplicate the first plot.
#Use `scale_y_continuous(trans = "sqrt")` to get the correct scale on the y-axis.
#Build weighted average data set using `weighted.mean()` and GDP with `summarise()` and `group_by()` that will be the black continent average line on the second plot.
#Use `theme_bw()` to duplicate the second plot. You will need to use the new data to make the black lines and dots showing the continent average.
#Use `ggsave()` and save each plot as a .png with a width of 15 inches.


#install.packages("tidyverse")
library(gapminder)
  library(tidyverse)#load ggplot2 and dplyr
  head (gapminder) # nolint
  gap <- gapminder::gapminder
  
#1st graph 
ggplot(gap, mapping = aes(x= lifeExp, 
                          y = gdpPercap,
                          color = continent,
                          size = pop/10000,
                          )) + geom_point() + 
    scale_y_continuous(trans = "sqrt") + 
    facet_wrap(~year, nrow = 1) +
    labs( x="Life Expectancy", y="GDP per capita") +
    labs(size + "Population (100k)", color = "Continent") +
    theme_bw()

ggsave(filename = "p1_Rproject.png", width = 8, height = 7)
  
  
########2nd graph##########
#Build weighted average data set using `weighted.mean()` and GDP with `summarise()` and `group_by()` 
#that will be the black continent average line on the second plot.
library(gapminder)
library(tidyverse)#load ggplot2 and dplyr
head (gapminder)

gap_count <- gapminder :: gapminder %>%
    group_by(year, continent) %>%
    summarise(
      gdpPercap = weighted.mean(gdpPercap, pop), 
      pop = sum(pop), 
      pop = sum(pop), pop_hund_thousands = (sum(pop) / 100000)) %>%
  ungroup() %>%


gap %>%
mutate(pop_hund_thousands = (pop / 100000)) %>%
  filter(gdpPercap < 50000, pop_hund_thousands < 30000,
         country != "Kuwait") %>%
ggplot(gap, mapping = aes (x = year, y = gdpPercap,
                color = continent)) + 
                geom_line(aes(group=country)) + 
                geom_point() +
                facet_wrap(~continent, nrow = 1) +
                geom_point(aes(size = pop/100000)) +
                geom_point(data = gap_count,aes(size=pop/100000),color="black") +
                geom_line(data = gap_count, color="black") + 
                labs( x="Year", y="GDP per capita", 
                size = "Population (100k)" , color = "Continent") +
                scale_y_continuous(trans = "sqrt") +
                theme_bw() 
        
  
ggsave(filename = "p1_Rproject2.png", width = 15)


##############################

write.csv(gap,file = 'gapminder.csv')

