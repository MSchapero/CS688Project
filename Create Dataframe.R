rm(list=ls()); cat("\014") # clear all


library(dplyr)
library(data.table)
library(tidyverse)


##Create file paths and file lists within project directory

can.list <-  list.files(path = "Data",
                        pattern = "*.csv",
                        full.names = TRUE)

yearpath <- file.path("Data", "Data by Year")

election.list <-  list.files(path = yearpath,
                    pattern = "*.csv",
                    full.names = TRUE)

#Candidate information

Candidates <- read.csv(can.list,
                       header = TRUE, sep = ",")

# read file name and get election year

year_filenames <- election.list %>%
  basename() %>%
  as.list()

year.name <- gsub(".csv", "", year_filenames)

#read in files

CSVlist <- lapply(election.list, read.csv)
names(CSVlist) <- year.name

Edata <- bind_rows(CSVlist, .id = "Origin")

Edata$Origin <- as.numeric(Edata$Origin)
Edata$State <- as.factor(Edata$State)

#Set names of data.frame

Names <- colnames(Edata)

Names[1] <- "Year"
Names[10] <- "Margin.of.Victory.Percent"
Names[14] <- "Percent.Vote.Republican"

Edata <- setNames(Edata, Names)

Edata$Electoral.Vote.Democrat[is.na(Edata$Electoral.Vote.Democrat)] <- 0
Edata$Electoral.Vote.Republican[is.na(Edata$Electoral.Vote.Republican)] <- 0

#add variable indicating winner of sate

Edata$Winner <- ifelse(Edata$Rank.Democrat == 1, "Democrat", 
                      ifelse(Edata$Rank.Republican == 1, "Republican", "Check"))

length(which(Edata$Winner == "Check"))

Edata$Winner <- ifelse(Edata$Rank.Democrat == 1, "Democrat", 
                ifelse(Edata$Rank.Republican == 1, "Republican",
                ifelse(Edata$Electoral.Vote.Republican > Edata$Electoral.Vote.Democrat,
                "Republican", "Other")))

#add variable with color indicating winner

Edata$Color <- ifelse(Edata$Winner == "Democrat", "Blue", 
               ifelse(Edata$Winner == "Republican", "Red", 
               ifelse(Edata$Winner == "Other", "Yellow",      
                      "White")))

#add state abbreviation


#Edata$ST <- state.abb[Edata$State] initially used - mismatch of state abbreviations

st.list <-  list.files(path = "Data",
                        pattern = "*.txt",
                        full.names = TRUE)
st.ab <- read_tsv(st.list)

Edata$ST <- st.ab$Abbreviation[match(Edata$State, st.ab$State)]

Edata$ST <- as.factor(Edata$ST)

View(Edata)

save(Candidates, Edata, file = "Election data.RData")

