library(ggplot2)

#Re-order levels
GMO.Al.A$Position.Al.A <- as.factor(GMO.Al.A$Position.Al.A)
GMO.Al.A$Political.Party <- as.factor(GMO.Al.A$Political.Party)
GMO.Al.A$Position.Al.A <- ordered(GMO.Al.A$Position.Al.A,c("Totally opposed", "Somewhat Against", "Favourable", "Very Favourable"))
GMO.Al.A$Political.Party  <- ordered(GMO.Al.A$Political.Party,c("Extreme left", "Left", "Greens", "Liberal", "Right"))

ggplot(GMO.Al.A, aes(x=Position.Al.A, ..count..)) + geom_bar(aes(fill = Political.Party), color="black", position = "dodge") + ggtitle("Barplot of cross-categories") +
  scale_fill_manual(values=c("Extreme left"="brown", "Left"="palevioletred2", "Greens"="chartreuse4", "Liberal"="gold1", "Right"="dodgerblue3"))
## ..count.. : stat transformation of the original data set