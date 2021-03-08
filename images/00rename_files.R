# rename files: renmove spaces and parens
library(tidyverse)

#setwd("//udrive.uw.edu/udrive/csde502_winter_2021_course/images")
setwd("C:/users/phurvitz/OneDrive/uw/courses/csde502/csde502_winter_2021_course/images/week05/")

fnames <- list.files(path = ".", pattern = "^2.*png")
fnames_new <- fnames %>% str_sub(start = 1, end = 19) %>%
    str_c(".png")

fx <- data.frame(fnames, fnames_new)

for(i in 1:(nrow(fx))){
    o <- fx$fnames[i]
    n <- fx$fnames_new[i]
    if(o != n){
        message(paste("file.rename", o, n))
        file.rename(o, n)
    }
}
