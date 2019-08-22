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



  tidy_UP_y<- function(data,HP,ID,Y) {
    newname<-"shp"
    newID<-enquo(ID)
    newY<-enquo(Y)
    dataset = data %>%
      group_by(!!!newID,!!!newY) %>%
      mutate(!!newname :=!!ntile(!!HP,100))
    return(dataset)

  }

  test7<-tidy_UP_y(test1,test1$HorizontalPosition,test1$SampleId,test1$Year)

  test7

  ggplot(test7, aes(HorizontalPosition, LumenArea, colour = SampleId)) + geom_point()
  ggplot(test7, aes(shp, LumenArea, colour = SampleId)) + geom_point()

