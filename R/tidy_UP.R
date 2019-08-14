#tyding up stuff
require(data.table)

tidy_UP<- function(HP) {


  cut(HP, unique(quantile(HP, seq(0, 1, by= 0.01))),
                             labels = FALSE, include.lowest = TRUE)

}

prompt(tidy_UP)

