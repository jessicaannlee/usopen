# Relevant commands for RStudio (Mac OS X 10.9.1)

# set your working directory

setwd("[file path]")

# reads the data file

uso.f<-read.csv("USO_f.csv")

# loads ggplot

library(ggplot2)

# for determining number of ticks:

number_ticks <- function(n) {function(limits) pretty(limits, n)}

# makes horizontal bar chart for use

ggplot(data = uso.f, aes(x = uso.f$Year, y = uso.f$FPW)) + geom_bar(stat="identity", fill="#2ca25f") + scale_x_continuous(breaks=number_ticks(11)) + scale_y_continuous(limits=c(0,4),breaks=number_ticks(4)) + coord_flip()

# assigns a name to the hbar

p.f <- ggplot(data = uso.f, aes(x = uso.f$Year, y = uso.f$FPW))+geom_bar(stat="identity", fill="#2ca25f") + scale_x_continuous(breaks=number_ticks(11)) + scale_y_continuous(breaks=number_ticks(4)) + coord_flip()

# renaming the axes

update_labels(p.f, list(x = "Year", y = "First point won ratio, player 1 to 2"))

# makes hbar (reverse side) for corresponding points

ggplot(data = uso.f, aes(x = uso.f$Year, y = uso.f$Break))+geom_bar(stat="identity", fill="#99d8c9") + scale_y_continuous(trans="reverse") + scale_x_continuous(breaks=number_ticks(11)) + coord_flip()

# assign the graph

q.f <- ggplot(data = uso.f, aes(x = uso.f$Year, y = uso.f$Break))+geom_bar(stat="identity", fill="#99d8c9") + scale_y_continuous(trans="reverse") + scale_x_continuous(breaks=number_ticks(11)) + scale_y_continuous(breaks=number_ticks(4)) + coord_flip()


# working with the other dataset

uso.m<-read.csv("USO_m.csv")

#fpw

ggplot(data = uso.m, aes(x = uso.m$Year, y = uso.m$FPW)) + geom_bar(stat="identity", fill="#2ca25f") + scale_x_continuous(breaks=number_ticks(11)) + scale_y_continuous(limits=c(0,4),breaks=number_ticks(4)) + coord_flip()

#break

ggplot(data = uso.m, aes(x = uso.m$Year, y = uso.m$Break))+geom_bar(stat="identity", fill="#99d8c9") + scale_y_continuous(trans="reverse") + scale_x_continuous(breaks=number_ticks(11)) + coord_flip()

