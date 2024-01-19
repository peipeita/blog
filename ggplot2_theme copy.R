# Set ggplot theme

library(ggplot2)
library(grid)

theme_set(theme_bw(base_size = 12) %+% theme(
  text = element_text(face = "bold", family = "Helvetica"),
  panel.grid.major = element_blank(),
  panel.grid.minor = element_blank(),
  axis.ticks.length = unit(0.2, "cm"),
  axis.ticks = element_line(colour = "black", size = 0.5),
  strip.text = element_text(size = 12, face = "bold", family = "Helvetica"),
  axis.title = element_text(size = 12), 
  axis.title.y = element_text(size = 12), 
  #axis.title.x = element_blank(),
  axis.text.x = element_text(size = 12, angle = 0, color = "black", 
                             margin = margin(t = 5, b = 0, l = 0, r = 0), family = "Helvetica"),
  axis.text.y = element_text(size = 12, angle = 0, color = "black",
                             margin = margin(t = 0, b = 0, l = 0, r = 5), family = "Helvetica"),
  strip.placement = "outside",
  strip.background = element_blank(),
  plot.title = element_text(hjust = 0.5, family = "Helvetica"),
  legend.title = element_text(face = "bold", family = "Helvetica"),
  #legend.position = "none",
  panel.border = element_rect(colour = "black", fill = NA, size = 1),
  panel.background = element_rect(fill='transparent', color = NA), 
  plot.background = element_rect(fill = "transparent",color = NA),
  legend.background = element_rect(fill = "transparent",color = NA),
  legend.key = element_rect(fill = "transparent", color = NA)
))

# Sample data
df <- data.frame(x = rnorm(100), y = rnorm(100))

# Create the plot
p <- ggplot(df, aes(x = x, y = y)) +
  geom_point() +
  labs(title = "Scatterplot of Sample Data")

plot(p) # This plot will use your custom theme
