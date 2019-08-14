#tyding up stuff



tidy_UP<- function(data,ID,HP,Y) {

data.table::as.data.frame(setDT(data)[,shp := cut(HP, unique(quantile(HP, seq(0, 1, by= 0.01))),
                             labels = FALSE, include.lowest = TRUE), by = .(ID,Y) ])

}

prompt(tidy_UP)

#bipbip
