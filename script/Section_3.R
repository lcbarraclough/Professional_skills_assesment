# Laura Barraclough 19/11/2021
# Professional Skills Assignment
# email:s1729795

# SECTION 3

library(tidyverse)


# PART  (a)
(scatter_3a<-ggplot(inga, aes(x=C_Leaf, y=P_Leaf, shape=Habitat, colour=Habitat))+
  geom_point()+
  stat_smooth(method = "lm") +
  guides(shape = guide_legend(title = "Habitat")) +
  theme_classic() +
  labs(title = "Leaf phosphorous concentration against leaf carbon concentrations") +
  xlab("Leaf carbon concentration (mg/g)") +
    ylab("Leaf phosphorous concentartion (mg/g)"))

ggsave(scatter_3a, filename = "graphs/scatter_graph1.png")

# PART (b)
summary(inga$Max_Height)

inga<- mutate(inga, ifelse(median> Max_Height, ))