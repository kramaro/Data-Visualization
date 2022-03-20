library(mapdata)
library(ggplot2)
library(dplyr)
library(rmarkdown)

states<-map_data('state')
california<-states %>% filter(region == 'california')

load('C:/Users/Jorin/Desktop/School/UM/CSC302 - data viz/DATA/wind_turbines.rda')
wind_ca<-wind_turbines %>% filter(t_state == 'CA')

ggplot(california, aes(long, lat)) +
  geom_polygon(aes(fill="none"), show.legend = FALSE) + 
  geom_point(data=wind_ca, aes(x=xlong, y=ylat))

#render("C:/Users/Jorin/Desktop/School/UM/CSC302 - data viz/Rscripts/HW5-2.R")
