#tyding up stuff
require(dplyr)

  tidy_UP<- function(data,HP,ID) {
       newname<-"shp"
       newID<-enquo(ID)
       newHP<-enquo(HP)
       dataset = data %>%
       group_by(!!!newID) %>%
       mutate(!!newname :=!!ntile(!!HP,100))
       return(dataset)

  }


  test6<-tidy_UP(test1,test1$HorizontalPosition,test1$SampleId)

  test6

  ggplot(test6, aes(HorizontalPosition, LumenArea, colour = SampleId)) + geom_point()
  ggplot(test6, aes(shp, LumenArea, colour = SampleId)) + geom_point()

