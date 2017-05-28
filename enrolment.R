setwd("rfiles/studentratios")

enrolment = read.csv("enrolment.csv", header=TRUE) 

install.packages("ggplot2")
library(ggplot2)
install.packages("ggrepel")
library(ggrepel)

newratio <- newenrolment$Females / newenrolment$Total

mycolors <- c("#000000","#800000","#FF0000","#AA6E28","#FF9900","#008080","#00BE00","#000080","#820096","#FF00FF","#4385FF")

ggplot(newenrolment, aes(y = newratio, x = Total,color=FieldBroad)) + scale_color_manual(values=mycolors) + geom_point() + geom_text_repel(aes(label=FieldNarrow),size=3) + xlab("Number of Students") + ylab("Ratio of Women") +  ggtitle("NZ Students in Bachelor Programs 2015") +theme_bw() 
