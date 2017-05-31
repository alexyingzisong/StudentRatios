<<<<<<< HEAD
setwd("C:/Users/yingzi/Documents/rfiles/studentratios")

=======
>>>>>>> df00df176c76f727909b903f115568ad5572296b
enrolment = read.csv("enrolment.csv", header=TRUE) 

library(ggplot2)
library(ggrepel)

enrolment$newratio <- enrolment$Females / enrolment$Total
newenrolment <- subset(enrolment,Total>100)

mycolors <- c("#000000","#800000","#FF0000","#AA6E28","#FF9900","#008080","#00BE00","#000080","#820096","#FF00FF","#4385FF")

ggplot(newenrolment, aes(y = newratio, x = Total,color=FieldBroad)) + scale_color_manual(values=mycolors) + geom_point() + geom_text_repel(aes(label=FieldNarrow),size=3) + xlab("Number of Students") + ylab("Ratio of Women") +  ggtitle("NZ Students in Bachelor Programs 2015") +theme_bw() 
