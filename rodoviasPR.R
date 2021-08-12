install.packages("readr")
install.packages("data.table")
install.packages("dplyr")
install.packages("ggplot2", dependencies = TRUE)
install.packages("scales")
install.packages("magrittr")
install.packages("psych")

library(readr)
library(dplyr)
library(ggplot2)
library(scales)
library(data.table)
library(magrittr)
library(psych)


rd <- fread("datatran2020.csv") 

rodoviasPR <- rd %>% subset(rd$uf == 'PR')

br376 <- rodoviasPR %>% subset(rodoviasPR$br == '376')

glimpse(br376)

quilometro <- as.integer(gsub(",", ".", br376$km))

prop.table(table(quilometro))

ll<-data.frame(table(quilometro))
ll[which.max(ll$Freq),]

