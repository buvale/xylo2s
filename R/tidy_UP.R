#tyding up stuff
require(dplyr)

tidy_UP<- function(data,HP,ID,Y) {

     data %>%
     group_by(!!Y,!!ID) %>%
     dplyr::mutate(shp := !!ntile(HP,100))

}



