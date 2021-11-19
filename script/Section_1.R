# Laura Barraclough 19/11/2021
# Professional Skills Assignment
# email:s1729795

# SECTION 1

#Load libraries and data ----

library(tidyverse)  #for data manipulation and visualization

inga<- read.csv("data/Inga_traits.csv")

# PART a: make a histogram for leaf area 
(leaf_hist<- ggplot(inga, aes(x=Leaf_Area)) +
  geom_histogram(bins = 40, colour= "#9400D3", fill= "#00EE00") +
    theme_bw() +
    ylab("Count\n") +
    xlab("\nLeaf Area"))
ggsave(leaf_hist, filename = "graphs/histogram_1.png")

(leaf_hist_2<- hist(inga$Leaf_Area, breaks = 37))
summary(inga$Leaf_Area)
  
# PART b
inga<- mutate(inga, log(Leaf_Area)) #log leaf areas

leaf_hist_3<- hist(inga$`log(Leaf_Area)`, breaks = 37)

  