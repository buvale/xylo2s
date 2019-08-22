#tyding up stuff
require(dplyr)
require(ggplot2)

tidy_UP<- function(data,HP,ID,Y) {

  enquohp<-enquo(HP)
  enquoy<-enquo(Y)
  enquoid<-enquo(ID)

    data %>%
    group_by(!!enquoy) %>%
    mutate(shp = ntile(!!enquohp,100))

}


test3<-tidy_UP(test,test$HorizontalPosition,test$SampleId,test$Year)

mean_by <- function(data, var, group) {
  var <- sym(var)
  group <- sym(group)

  data %>%
    group_by(!! group) %>%
    summarise(avg = mean(!! var))
}

test3<-tidy_UP(test1,test1$HorizontalPosition,test1$SampleId,test1$Year)

ggplot(test3, aes(shp, LumenArea, colour = SampleId)) + geom_point()


my_summarise <- function(df, group_var) {
  quo_group_var <- quo(group_var)
  print(quo_group_var)

  df %>%
    group_by(!! quo_group_var) %>%
    summarise(a = mean(a))
}

my_summarise(df, g1)



