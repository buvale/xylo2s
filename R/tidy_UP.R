#tyding up stuff
require(dplyr)

  tidy_UP<- function(data,HP,ID) {
       newname<-"shp"
       newID<-enquo(ID)
       dataset = data %>%
       group_by(!!!newID) %>%
       mutate(!!newname :=!!ntile(!!HP,100))
       return(dataset)

  }



