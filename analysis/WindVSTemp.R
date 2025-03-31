# invesitating the association of wind and temperature 

data <- read.csv("./data/airquality.csv")


plot(data$Wind, data$Temp)
