#tyding up stuff
require(data.table)

tidy_UP<- function(data,HP,ID,Y) {

     data %>%
     group_by(!!Y,!!ID) %>%
     mutate(shp := !!ntile(HP,100))

}





