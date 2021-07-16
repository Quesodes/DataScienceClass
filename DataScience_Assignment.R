install.packages("tidyverse")
library(tidyverse)
install.packages("remotes")
remotes::install_github("allisonhorst/palmerpenguins")
library(palmerpenguins)
penguins

ggplot(data=penguins,
       aes(x=bill_length_mm,
           y=bill_depth_mm))+
  geom_point(aes(color=island, 
                 shape = species),
             size=3,
             alpha = 0.8)+
  #theme_minimal()+
  scale_color_manual(values= c("darkorange","purple", "cyan4"))+
  labs(title = "Penguin Size, Palmer Station LTER",
       subtitle = "Bill length and Bill Depth for Adelie, Chinstrap 
       and Gentoo Penguins ",
       x= "Bill length (mm)",
       y = "Bill Depth (mm)",
       color = "Peguin Island", 
       shape = "Penguin Species")+
  theme_minimal()


