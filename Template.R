# Title: XXX
# Date: xx/xx/xx
# Modified: xx, xx, xx/xx/xx
# URL: XX
# File (Data Source):          
#                                    
# Author: BGS
# 

#--LIBRARIES AND DIRECTORIES--------------------------------

  # load libraries
  library(ggplot2)
  library(dplyr)
  library(magrittr)
  library(data.table)
  library(scales)


  # The palette with black and grey and additional deep red 
  # ("#990000"):
  cbbPalette <- c("#E69F00", "#56B4E9", "#009E73", 
                  "#F0E442", "#0072B2", "#D55E00", 
                  "#CC79A7", "#990000","#000000", 
                  "#999999")

  # Set working directory # Insert working directory location
  setwd("C:/Users/bsmall/OneDrive - Certara/FAERS/faers_ascii_2019Q4/ascii")

  # load data
  #load("x.RData") # Uncomment this line if you want to load 
  # data

#--DATA - READING, CLEANING, RE-FORMATTING------------------

#--DATA: Description----------------------------------------

  # Read in Data
  # to go up and get a file from another directory...
  #../Cell_Baselines/combined.csv
  # to go down and get a file from another directory...
  #./Cell_Baselines/combined.csv

  xxx.d <- read.csv("filename.csv",
                  sep = ",",
                  header = T,
                  stringsAsFactors = F)

  # melt 'xxx.d' to long format as 'xxx.d2'
  xxx.d2 <- melt(xxx.d, id.vars = c("?????"))


#--PLOT: xxx.g1 - Plot of ...-------------------------------

  xxx.g2 <- ggplot() + 
    geom_point(aes(x = variable,
                   y = value,
                   colour = Subject),
               data = xxx.d2) +
    geom_line(aes(x = variable,
                  y = value,
                  colour = Subject),
              data = xxx.d2) +
    xlab("xxx (d)") +
    ylab(expression("xxx (pg/mL)")) +
    theme(axis.text.x = element_text(colour="black",
                                     size=12,angle=0,hjust=.5,
                                     vjust=.5,face="plain")) +
    theme(axis.title.x = element_text(colour="black",
                                      size=14,angle=0,hjust=.5,
                                      vjust=.5,face="plain")) +
    theme(axis.text.y = element_text(colour="black",
                                     size=12,angle=0,hjust=.5,
                                     vjust=.5,face="plain")) +
    theme(axis.title.y = element_text(colour="black",
                                      size=11,angle=90,hjust=.5,
                                      vjust=.5,face="plain")) +
    theme(legend.title = element_text(size = 8)) +
    theme(legend.text =  element_text(size = 8))
  
  # Print plot
  png("Title.png", 
      width = 8.27, height = 11.69, 
      units = 'in', res = 600)
  xxx.g2
  dev.off()



#--SAVE DATA------------------------------------------------ 

  #save.image("x.RData")
  
  
  