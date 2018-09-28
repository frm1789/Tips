library(ggplot2)
library(viridis)

visualization <- ggplot(diamonds, aes(carat, fill = cut)) +
                    geom_histogram(bins = 30)

visualization <- visualization +
                    labs(
                        title ="Histogram for Diamond dataset", subtitle = "This is a general example in order to show the distribution of carats.", 
                        caption = "source: gglopt2 package\nauthor: thinkingondata.com") 

visualization <- visualization +
                    scale_fill_viridis(discrete = TRUE)
  
visualization <- visualization +
                    theme_minimal() 

  
visualization <- visualization +
                    theme(axis.title.x=element_blank(),
                          axis.title.y=element_blank())
