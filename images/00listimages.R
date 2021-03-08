# print image file names in a nice format for Rmd

#setwd("//udrive.uw.edu/udrive/csde502_winter_2021_course/images/week05")
setwd("C:/users/phurvitz/OneDrive/uw/courses/csde502/csde502_winter_2021_course/images/week06/")
fnames <- list.files(path = ".", pattern = "*.png")

dirname <- basename(getwd())

fnamepaths <- sprintf("images/%s/%s", dirname, fnames)

for(i in fnamepaths){
    #message(paste("\n",i))
    message(paste0("![](", i, ")"))
    cat("\n")
}

