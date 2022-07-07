#barplot
barplot((as.table(as.matrix(GMO_theo))), beside = TRUE, main="effectifs theoriques", col=c("brown","palevioletred2", "chartreuse4","gold1", "dodgerblue3"))
legend("topleft", inset=.02, title="Political Party", c("Extreme left", "Left","Greens",'Liberal', 'Right'), horiz=TRUE, cex=0.8, fill=c("brown","palevioletred2", "chartreuse4","gold1", "dodgerblue3"))

barplot(t(table(GMO.Al.A.Sample))/135, beside = TRUE, main="sample", col=c("brown","palevioletred2", "chartreuse4","gold1", "dodgerblue3"))
legend("topleft", inset=.02, title="Political Party", c("Extreme left", "Left", "Greens", 'Liberal', 'Right'), horiz=TRUE, cex=0.8, fill=c("brown","palevioletred2", "chartreuse4","gold1", "dodgerblue3"))
#
barplot((table(GMO.Al.A)/135), beside = TRUE,main="non sample", col=c("brown","palevioletred2", "chartreuse4","gold1", "dodgerblue3"))
legend("topleft", inset=.02, title="Political Party", c("Extreme left", "Left", "Greens", 'Liberal', 'Right'), horiz=TRUE, cex=0.8, fill=c("brown","palevioletred2", "chartreuse4","gold1", "dodgerblue3"))