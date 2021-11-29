# Laura Barraclough 19/11/2021
# Professional Skills Assignment
# email:s1729795

# SECTION 2
#PART (a) i
(box_2a1<- ggplot(inga, aes(x=Habitat, y=P_Leaf))+
  geom_boxplot()+
  labs(title ="Leaf Phosphorous Content By Habitat")+
  xlab("Habitat type")+
  ylab("Phosphorous Concentration (mg/g)") +
  theme_dark())

#ggsave(box_2a1, filename = "graphs/ boxplot_1.png")

#PART (a) ii
phos_lm<- lm(P_Leaf ~ Habitat, data = inga)
anova(phos_lm)

#PART (b)
shapiro.test(inga$P_Leaf)
bartlett.test(P_Leaf ~ Habitat, data= inga)

#PART (c)
library(dplyr)
library(lme4)
#install.packages("MuMIn")
library(MuMIn)


phos_null<- lm(P_Leaf ~ 1, data=inga) #our null hypothesis 
AIC(phos_lm, phos_null)

phos_lm.2<- lm(P_Leaf ~ Habitat*Clade, data = inga)
anova(phos_lm.2)

phos_lm.3<- lm(P_Leaf ~ Habitat + Clade, data = inga)
anova(phos_lm.3)

AIC(phos_lm, phos_null, phos_lm.2, phos_lm.3) #phos_lm has the best AIC still
AICc(phos_lm, phos_null, phos_lm.2, phos_lm.3)

phos_lmer.1<- lmer(P_Leaf ~ Habitat + (1|Clade),
                   data = inga,
                   REML = FALSE)


summary(inga$Max_Height)  #median is 18

inga<- inga %>% 
  mutate(Height.cat = 
           case_when(Max_Height %in% c(3:18) ~ "Short",
                     Max_Height %in% c(18.1:44.2) ~ "Tall")
         )

