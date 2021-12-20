rm(list=ls()); cat("\014") # Clear Workspace and Console

library(dplyr)
library(plotly)
library(htmlwidgets)

load("Election data.RData")

##Find total popular votes overall and for each party

TotalVoteByYear <-  aggregate(Edata$Total.Popular.Vote, by=list(Category=Edata$Year), FUN=sum)
DemVoteByYear <-  aggregate(Edata$Votes.Democrat, by=list(Category=Edata$Year), FUN=sum)
RepVoteByYear <-  aggregate(Edata$Votes.Republican, by=list(Category=Edata$Year), FUN=sum)

coltitle <- c("Year", "Votes")

names(TotalVoteByYear) <- coltitle
names(DemVoteByYear) <- coltitle
names(RepVoteByYear) <- coltitle

##Find total electoral votes for each party

DemElecByYear <-  aggregate(Edata$Electoral.Vote.Democrat, by=list(Category=Edata$Year), FUN=sum)
RepElecByYear <-  aggregate(Edata$Electoral.Vote.Republican, by=list(Category=Edata$Year), FUN=sum)

TotalElectoral <- cbind.data.frame(DemElecByYear, RepElecByYear$x)

names(TotalElectoral) <- c("Year", "Democrat", "Republican")

#Election winners

TotalElectoral$Winner = ifelse(TotalElectoral$Democrat>TotalElectoral$Republican, "Democrat", "Republican")
table(TotalElectoral$Winner)

TotalElectoral$Year[TotalElectoral$Winner == "Democrat"]
TotalElectoral$Year[TotalElectoral$Winner == "Republican"]

Candidates$WinParty <- TotalElectoral$Winner[match(Candidates$Year, TotalElectoral$Year)]


#graph Electoral Vote


electoral.chart <- plot_ly()%>%
  layout(title = "Electoral College Results Over Time, 1900-2020",
         xaxis = list(title = "Year"),
         yaxis = list (title = "Number of Electoral Votes") )

electoral.chart <- electoral.chart %>% add_trace(x = TotalElectoral$Year, y = 270, name = "Electoral Votes Needed to Win",
                                     text = paste("Winner:", ifelse(TotalElectoral$Winner == "Democrat", 
                                           Candidates$Democrat[match(TotalElectoral$Year, Candidates$Year)], 
                                           Candidates$Republican[match(TotalElectoral$Year, Candidates$Year)]),
                                           "-", substr(TotalElectoral$Winner, 1,3), sep = " "),                
                                     mode = 'line+markers',
                                     type = 'scatter',
                                     line = list(color = "Black", width = 4),
                                     marker = list(color = "Black", width = 4))


electoral.chart <- electoral.chart %>% add_trace(x = TotalElectoral$Year, y = TotalElectoral$Democrat, 
                                     name = "Electoal Votes for Democrats",
                                     text = Candidates$Democrat[match(Candidates$Year, TotalElectoral$Year)],
                                     type = 'scatter',
                                     mode = 'line+markers',
                                     line = list(color = "Blue", width = 4),
                                     marker = list(color = "Blue", width = 4))

electoral.chart <- electoral.chart %>% add_trace(x = TotalElectoral$Year, y = TotalElectoral$Republican, 
                                     name = "Electoal Votes for Republicans",
                                     text = Candidates$Republican[match(Candidates$Year, TotalElectoral$Year)],
                                     type = 'scatter',
                                     mode = 'line+markers',
                                     line = list(color = "Red", width = 4),
                                     marker = list(color = "Red", width = 4)
)

electoral.chart

saveWidget(electoral.chart, 'Presidential.Winners.Over.Time.html')           


#graph Popular Vote

pop.chart <- plot_ly()%>%
  layout(title = "Presidential Election Popular Vote Over Time, 1900-2020",
         xaxis = list(title = "Year"),
         yaxis = list (title = "Number of Votes") )

pop.chart <- pop.chart %>% add_trace(x = TotalVoteByYear$Year, y = TotalVoteByYear$Votes, name = "Total Popular Vote",
                     text = paste0("Electoral Winner: ", ifelse(TotalElectoral$Winner == "Democrat", 
                            Candidates$Democrat[match(TotalElectoral$Year, Candidates$Year)], 
                            Candidates$Republican[match(TotalElectoral$Year, Candidates$Year)])),                
                     mode = 'line+markers',
                     type = 'scatter',
                     line = list(color = "Black", width = 4),
                     marker = list(color = "Black", width = 4))

pop.chart <- pop.chart %>% add_trace(x = DemVoteByYear$Year, y = DemVoteByYear$Votes, name = "Total Votes for Democrats",
                     text = Candidates$Democrat[match(Candidates$Year, DemVoteByYear$Year)],
                     type = 'scatter',
                     mode = 'line+markers',
                     line = list(color = "Blue", width = 4),
                     marker = list(color = "Blue", width = 4))

pop.chart <- pop.chart %>% add_trace(x = RepVoteByYear$Year, y = RepVoteByYear$Votes, name = "Total Votes for Republicans",
                     text = Candidates$Republican[match(Candidates$Year, RepVoteByYear$Year)],
                     type = 'scatter',
                     mode = 'line+markers',
                     line = list(color = "Red", width = 4),
                     marker = list(color = "Red", width = 4)
)

pop.chart

saveWidget(pop.chart, 'Presidential.Election.Popular.Vote.Over.Time.html')           

##Find Extremes

#Largest margin of victory by percent
Edata$State[which.max(Edata$Margin.of.Victory.Percent)];Edata$Year[which.max(Edata$Margin.of.Victory.Percent)];
Edata$Winner[which.max(Edata$Margin.of.Victory.Percent)];Candidates$Democrat[which(Candidates$Year == Edata$Year[which.max(Edata$Margin.of.Victory.Percent)])];Candidates$Republican[which(Candidates$Year == Edata$Year[which.max(Edata$Margin.of.Victory.Percent)])];
Edata$Margin.of.Victory.Percent[which.max(Edata$Margin.of.Victory.Percent)];Edata$Margin.of.Victory.Votes[which.max(Edata$Margin.of.Victory.Percent)];
Edata$Total.Popular.Vote[which.max(Edata$Margin.of.Victory.Percent)]
Edata$Votes.Democrat[which.max(Edata$Margin.of.Victory.Percent)]
Edata$Votes.Republican[which.max(Edata$Margin.of.Victory.Percent)]
#Difference in votes
Edata$Votes.Democrat[which.max(Edata$Margin.of.Victory.Percent)]- Edata$Votes.Republican[which.max(Edata$Margin.of.Victory.Percent)]

##Smallest margin of victory by percent

Edata$State[which.min(Edata$Margin.of.Victory.Percent)];Edata$Year[which.min(Edata$Margin.of.Victory.Percent)];
Edata$Winner[which.min(Edata$Margin.of.Victory.Percent)];Candidates$Democrat[which(Candidates$Year == Edata$Year[which.min(Edata$Margin.of.Victory.Percent)])]; Candidates$Republican[which(Candidates$Year == Edata$Year[which.min(Edata$Margin.of.Victory.Percent)])];
Edata$Margin.of.Victory.Percent[which.min(Edata$Margin.of.Victory.Percent)]; Edata$Total.Popular.Vote[which.min(Edata$Margin.of.Victory.Percent)]
Edata$Votes.Democrat[which.min(Edata$Margin.of.Victory.Percent)]
Edata$Votes.Republican[which.min(Edata$Margin.of.Victory.Percent)]
#Difference in votes
Edata$Votes.Republican[which.min(Edata$Margin.of.Victory.Percent)] - Edata$Votes.Democrat[which.min(Edata$Margin.of.Victory.Percent)]


#Largest margin of victory in votes
Edata$State[which.max(Edata$Margin.of.Victory.Votes)];Edata$Year[which.max(Edata$Margin.of.Victory.Votes)];
Edata$Winner[which.max(Edata$Margin.of.Victory.Votes)];Candidates$Democrat[which(Candidates$Year == Edata$Year[which.max(Edata$Margin.of.Victory.Votes)])];Candidates$Republican[which(Candidates$Year == Edata$Year[which.max(Edata$Margin.of.Victory.Votes)])];
Edata$Margin.of.Victory.Percent[which.max(Edata$Margin.of.Victory.Votes)]; 
Edata$Total.Popular.Vote[which.max(Edata$Margin.of.Victory.Votes)]; 
Edata$Votes.Democrat[which.max(Edata$Margin.of.Victory.Votes)]
Edata$Votes.Republican[which.max(Edata$Margin.of.Victory.Votes)]
Edata$Margin.of.Victory.Votes[which.max(Edata$Margin.of.Victory.Votes)]

##Smallest margin of victory in votes

Edata$State[which.min(Edata$Margin.of.Victory.Votes)];Edata$Year[which.min(Edata$Margin.of.Victory.Votes)];
Edata$Winner[which.min(Edata$Margin.of.Victory.Votes)];Candidates$Democrat[which(Candidates$Year == Edata$Year[which.min(Edata$Margin.of.Victory.Votes)])]; Candidates$Republican[which(Candidates$Year == Edata$Year[which.min(Edata$Margin.of.Victory.Votes)])];
Edata$Margin.of.Victory.Percent[which.min(Edata$Margin.of.Victory.Votes)]; 
Edata$Total.Popular.Vote[which.min(Edata$Margin.of.Victory.Votes)]; 
Edata$Votes.Democrat[which.min(Edata$Margin.of.Victory.Votes)]
Edata$Votes.Republican[which.min(Edata$Margin.of.Victory.Votes)]
Edata$Margin.of.Victory.Votes[which.min(Edata$Margin.of.Victory.Votes)]

####Divide individual state data

state.record <- split(Edata, Edata$ST)

#How Often does CA winning candidate is elected?
sum(state.record$CA$Winner == TotalElectoral$Winner)/length(state.record$CA$Winner)

#How Often does TX winning candidate is elected?
sum(state.record$TX$Winner == TotalElectoral$Winner)/length(state.record$TX$Winner)

#How Often does FL winning candidate is elected?
sum(state.record$FL$Winner == TotalElectoral$Winner)/length(state.record$FL$Winner)

#How Often does OH winning candidate is elected?
sum(state.record$OH$Winner == TotalElectoral$Winner)/length(state.record$OH$Winner)


####Divide individual election year data

TotalVoteByYear %>% slice_max(TotalVoteByYear$Votes, prop = .25)

year.record <- split(Edata, Edata$Year)

view(year.record$`1996` %>% slice_max(year.record$`1996`$Total.Popular.Vote, n = 10))
View(year.record$`1996` %>% slice_min(year.record$`1996`$Total.Popular.Vote, n = 10))

save(year.record, TotalElectoral, TotalVoteByYear, Candidates, DemElecByYear, RepElecByYear, file = "Yearly Record data.RData")

