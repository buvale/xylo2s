require(dplyr)

tidy_UPY<- function(data,HP,ID,Y) {
  newname<-"shp"
  newID<-enquo(ID)
  newY<-enquo(Y)
  dataset = data %>%
    group_by(!!!newID,!!!newY) %>%
    mutate(!!newname :=!!ntile(!!HP,100))
  return(dataset)

}
