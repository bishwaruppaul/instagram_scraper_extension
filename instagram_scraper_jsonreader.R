library(jsonlite)
library(tibble)
library(tidyverse)

insta <- fromJSON("<filename>")
insta_tbl <- as_tibble(insta)

url <- insta_tbl$GraphImages$display_url
loc <- insta_tbl$GraphImages$location$name
filename <- rep("NA", length(url))

for(i in 1:length(url)){
    spl1 <- str_split(url[i], "/e../")[[1]][2]
    spl2 <- str_split(spl1, ".jpg")[[1]][1]
    spl3 <- str_split(spl2, "1080/")[[1]][2]
    if(is.na(spl3)){
        filename[i] <- spl2
    }else{
        filename[i] <- spl3
    }
}

result <- cbind(loc, url, filename)
colnames(result) <- c("location", "link", "filename")
write.csv(result, "<filename>.csv", row.names=F)