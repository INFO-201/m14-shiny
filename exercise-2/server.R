### Exercise 2 ###

library(shiny)

# We'll look into these more next week: http://shiny.rstudio.com/gallery/widget-gallery.html 

# Create a shiny server that creates a scatterplot. 

# It should takes as an input the number of observations, and a color
# It should return a rendered plot
shinyServer(function(input, output) {
  # Save a 'scatter' property which is a renderPlot object (that renders a scatterplot)
  
})