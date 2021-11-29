# Laura Barraclough 19/11/2021
# Professional Skills Assignment
# email:s1729795

# SECTION 4: Generalized Linear Models

# PART (a)
  #model 1: leaf expansion rate and presence/absence of mevalonic acid
expand_acid_m<- glm(Mevalonic_Acid ~ Expansion,
                    data= inga, family = "binomial") #there is no option for bernoulli
summary(expand_acid_m)

  #model 2: Leaf trichome density and mevalonic acid presence/absence
trichome_acid_m<- glm(Mevalonic_Acid ~ Trichome_Density,
                      data = inga, family = "binomial")
summary(trichome_acid_m)


# PART (b)
  #model 3: both expansion rate and trichome density
m3<- glm(Mevalonic_Acid ~ Expansion + Trichome_Density,
         data = inga, family = "binomial")
summary(m3)
