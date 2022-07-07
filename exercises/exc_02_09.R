df_theo <- as.data.frame.matrix(GMO_theo)
library(tibble)
library(tidyr)
df <- rownames_to_column(df_theo, "Political.Party")

df <- df %>% pivot_longer(!Political.Party, names_to="Position.Al.A", values_to = "frequence")

#Re-order levels
df$Position.Al.A <- as.factor(df$Position.Al.A)
df$Political.Party <- as.factor(df$Political.Party)
df$Position.Al.A <- ordered(df$Position.Al.A,levels=c("Totally opposed", "Somewhat Against", "Favourable", "Very Favourable"))
df$Political.Party <- ordered(df$Political.Party, levels=c("Extreme left", "Left", "Greens", "Liberal", "Right"))

ggplot(df, aes(y=frequence,x=Position.Al.A, fill=Political.Party))+
         geom_col( position = "dodge", color="black")+ggtitle("Barplot of theorical table")+
  scale_fill_manual(values=c("Extreme left"="brown", "Left"="palevioletred2", "Greens"="chartreuse4", "Liberal"="gold1", "Right"="dodgerblue3"))