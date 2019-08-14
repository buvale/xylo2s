tidy_UP(test1,test1$HorizontalPosition,test1$SampleId,test1$Year)
library(dplyr)

mydata<-mtcars
df1 = mutate(mydata, percentile_rank = ntile(mydata$mpg,100))
df1


cut(HP, unique(quantile(HP, seq(0, 1, by= 0.01))),
    labels = FALSE, include.lowest = TRUE)



prompt(tidy_UP)
subset(data,)
data1 <-mutate(data,shp = ntile(HP,100))
