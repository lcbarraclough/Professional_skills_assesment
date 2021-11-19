# Laura Barraclough 19/11/2021
# Professional Skills Assignment
# email:s1729795

# SECTION 1

#Load libraries and data ----

library(tidyverse)  #for data manipulation and visualisation

inga<- read.csv("data/Inga_traits.csv")

# PART a: make a histogram for leaf area 
(leaf_hist<- ggplot(inga, aes(x=Leaf_Area)) +
  geom_histogram(binwidth = 250, colour= "#9400D3", fill= "#00EE00") +
    theme_bw() +
    ylab("Count\n") +
    xlab("\nLeaf Area"))

(leaf_hist_2<- hist(inga$Leaf_Area, breaks = 37))
  
# PART b
inga<- mutate(inga, log(Leaf_Area)) #log leaf areas
leaf_hist_3<- hist(inga$log(Leaf_Area), breaks = 37)

  