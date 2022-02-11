# 1
df1=data.frame(Name=c('James','Paul','Richards','Marico','Samantha','Ravi','Raghu',
                      'Richards','George','Ema','Samantha','Catherine'),
               State=c('Alaska','California','Texas','North Carolina','California','Texas',
                       'Alaska','Texas','North Carolina','Alaska','California','Texas'),
               Sales=c(14,24,31,12,13,7,9,31,18,16,18,14))
aggregate(df1$Sales, by=list(df1$State), FUN=sum)
library(dplyr)
df1 %>% group_by(State) %>% summarise(sum_sales = sum(Sales))
# This code sets the names and states, aggregates them by state, and displays the state followed by the sum of the states sales


# 2
WorldCup = read.csv("C:/Users/Jorin/Desktop/School/UM/CSC302 - data viz/DATA/WorldCupMatches.csv", header=T)

# a
dim(WorldCup)
# b
summary(WorldCup)
# c
unique(WorldCup$City)
# d
mean(WorldCup$Attendance, na.rm =T)
# e
aggregate(WorldCup$Home.Team.Goals, by=list(WorldCup$Home.Team.Name), FUN=sum)
# f
aggregate(WorldCup$Attendance, by=list(WorldCup$Year), FUN=mean)



# 3
metabolite = read.csv("C:/Users/Jorin/Desktop/School/UM/CSC302 - data viz/DATA/metabolite.csv", header=T)

# a
metabolite %>% group_by(Label, "Alzheimer") %>% tally()
# b
colSums(is.na(metabolite))
# c
df2 = metabolite[is.na(metabolite$"Dopamine")==F,]
head(df2)
# d
df2$"c4.OH.Pro"[is.na(df2$"c4.OH.Pro")]<-median(df2$"c4.OH.Pro", na.rm=T)
head(df2)

