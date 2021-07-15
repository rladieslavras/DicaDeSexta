
# Dica de Sexta RLadies Lavras (15/07/2021)

install.packages(c("ggplot2","gganimate","gapminder"))
library(dplyr) 
library(knitr) 
library(gapminder) #Apresenta a estrutura do Banco de Dados Gapminder
library(ggplot2)
library(gganimate)


str(gapminder)

p <- ggplot(gapminder,aes(x = gdpPercap, y=lifeExp, size = pop, colour = continent)) +
  geom_point(show.legend = TRUE, alpha = 0.7) +
  scale_color_viridis_d() +
  scale_size(range = c(2, 12)) +
  scale_x_log10() +
  labs(x = "PIB per capita", y = "Expectativa de vida")+ 
  geom_jitter(alpha = 1/3, size = 3)+
  transition_time(year) +
  labs(title = "Ano: {frame_time}") +
  view_follow(fixed_y = TRUE)

p + transition_time(year)
