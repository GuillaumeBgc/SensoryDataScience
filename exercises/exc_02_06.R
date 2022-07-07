#Re-order levels
GMO.Al.A.Sample$Position.Al.A <- as.factor(GMO.Al.A.Sample$Position.Al.A)
GMO.Al.A.Sample$Political.Party <- as.factor(GMO.Al.A.Sample$Political.Party)
GMO.Al.A.Sample$Position.Al.A <- ordered(GMO.Al.A.Sample$Position.Al.A,c("Totally opposed", "Somewhat Against", "Favourable", "Very Favourable"))
GMO.Al.A.Sample$Political.Party  <- ordered(GMO.Al.A.Sample$Political.Party,c("Extreme left", "Left", "Greens", "Liberal", "Right"))

#visualization
ggplot(GMO.Al.A.Sample, aes(Position.Al.A, ..count..)) + geom_bar(aes(fill = Political.Party), color="black", position = "dodge") + ggtitle("Barplot of cross-categories sampled") +
  scale_fill_manual(values=c("Extreme left"="brown", "Left"="palevioletred2", "Greens"="chartreuse4", "Liberal"="gold1", "Right"="dodgerblue3"))