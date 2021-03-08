# make a stupid directory
stupid_dir <- file.path(Sys.getenv("TEMP"), "delete_me_later")

if(!dir.exists(stupid_dir)){
    dir.create(path = stupid_dir)
}

# move into the directory
setwd(stupid_dir)

# a data frame to write to a file
x <- data.frame(foo = "bar")

# make some stupidly named files, Dec 16, 2021
write.csv(x = x, file = file.path(stupid_dir, "file 121621.csv"), quote = FALSE, row.names = FALSE)
write.csv(x = x, file = file.path(stupid_dir, "file 12_16_21.csv"), quote = FALSE, row.names = FALSE)
write.csv(x = x, file = file.path(stupid_dir, "file 12-16-21.csv"), quote = FALSE, row.names = FALSE)
write.csv(x = x, file = file.path(stupid_dir, "file 16-12-21.csv"), quote = FALSE, row.names = FALSE)
write.csv(x = x, file = file.path(stupid_dir, "file_121621.csv"), quote = FALSE, row.names = FALSE)

# make some stupidly named files, Dec 17, 2021
write.csv(x = x, file = file.path(stupid_dir, "file 121721.csv"), quote = FALSE, row.names = FALSE)
write.csv(x = x, file = file.path(stupid_dir, "file 12_17_21.csv"), quote = FALSE, row.names = FALSE)
write.csv(x = x, file = file.path(stupid_dir, "file 12-17-21.csv"), quote = FALSE, row.names = FALSE)
write.csv(x = x, file = file.path(stupid_dir, "file 17-12-21.csv"), quote = FALSE, row.names = FALSE)
write.csv(x = x, file = file.path(stupid_dir, "file_121721.csv"), quote = FALSE, row.names = FALSE)

# write two logically named files
write.csv(x = x, file = file.path(stupid_dir, "file_20211216.csv"), quote = FALSE, row.names = FALSE)
write.csv(x = x, file = file.path(stupid_dir, "file_20211217.csv"), quote = FALSE, row.names = FALSE)

message("which file is newer?")
write.csv(list.files(stupid_dir), quote = FALSE, row.names = FALSE)
message("which file is older?")
write.csv(sort(list.files(stupid_dir), decreasing = TRUE), quote = FALSE, row.names = FALSE)

message(paste("You should be convinced that yyyymmdd is a better way to name files by date.\nYour reward will be to delete", stupid_dir))
