library(ggplot2)
library(readr)
library(lubridate)
library(dplyr)
library(checkthat)
library(ggpmisc)

air <- read_csv("data/airquality.csv")

ggplot(air, aes(x=Temp,y=Ozone
))+
  geom_point()+
  theme_classic()+
  geom_smooth(formula = y ~ x, method = "lm", color = "black", se = FALSE)+
  scale_color_manual(values = cols)+
  stat_poly_eq(use_label(c("eq", "R2")))
