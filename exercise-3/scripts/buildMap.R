# BuildMap file: function that returns a plotly map
library(plotly)
library(stringr)

# BuildMap function: fill this in with a function that returns a map:
# Derived from: https://plot.ly/r/choropleth-maps/

BuildMap <- function(data, map.var) {
  # give state boundaries a white border
  l <- list(color = toRGB("white"), width = 2)
  
  # specify some map projection/options
  g <- list(
    scope = 'usa',
    projection = list(type = 'albers usa'),
    showlakes = TRUE,
    lakecolor = toRGB('white')
  )
  
  # Make equation for map color / text
  var.equation <- paste0('~', map.var)
  
  # Plot
  p <- plot_geo(data, locationmode = 'USA-states') %>%
    add_trace(
      z = eval(parse(text = var.equation)), text = ~state, locations = ~code,
      color = eval(parse(text = var.equation)), colors = 'Purples'
    ) %>%
    colorbar(title = "Color Title") %>%
    layout(
      title = str_to_title(map.var),
      geo = g
    )
   return(p)
}
