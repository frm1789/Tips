library(ggplot2)
library(viridis)

## Basic considerations
visualization <- ggplot(diamonds, aes(carat, fill = cut)) +
                    geom_histogram(bins = 30)

visualization <- visualization +
                    labs(
                        title ="Histogram for Diamond dataset", 
                        subtitle = "This is a general example in order to show the distribution of carats.", 
                        caption = "source: gglopt2 package\nauthor: thinkingondata.com") 

visualization <- visualization +
                    scale_fill_viridis(discrete = TRUE)
  
visualization <- visualization +
                    theme_minimal() 

  
visualization <- visualization +
                    theme(axis.title.x=element_blank(),
                          axis.title.y=element_blank())


## Considering everything as a whole

vis_text <- labs( title ="Exploring Diamond dataset", caption = "source: gglopt2 package")

## Inicial

vis_a <- ggplot(diamonds, aes(x = price, fill = cut)) + 
  geom_bar(stat = "bin")
vis_b <- ggplot(diamonds) +
  geom_bar(mapping = aes(x = cut))

## Intermedio
vis_a <- ggplot(diamonds, aes(x = price, fill = cut)) + 
  geom_bar(stat = "bin") +
  theme_minimal() +
  vis_text

vis_b <- ggplot(diamonds) +
  geom_bar(mapping = aes(x = cut)) + 
  theme_minimal() +
  vis_text

## Final
vis_a <- ggplot(diamonds, aes(x = price, fill = cut)) + 
  geom_bar(stat = "bin") +
  theme_minimal() +
  scale_fill_viridis(discrete = TRUE) +
  vis_text

## Picking manually 8 colors from Viridis Palette
  
library(scales)
q_colors <-  8 
v_colors <-  viridis(q_colors, option = "D")
  
vis_b <- ggplot(diamonds, aes(x=clarity,fill=clarity)) +  
  geom_bar()+
  scale_fill_manual(values=v_colors) +
  theme_minimal()+
  vis_text

library(gridExtra)
grid.arrange(vis_a, vis_b)



