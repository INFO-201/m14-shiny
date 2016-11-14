# BuildMap file: function that returns a plotly map
library(plotly)
library(stringr)
### Build Scatter ###
BuildScatter <- function(data,  search = '', xvar = 'population', yvar = 'votes') {
  # Filter down to state, then graph
  
  # Get x and y max
  xmax <- max(data[,xvar]) * 1.5
  ymax <- max(data[,yvar]) * 1.5
  x.equation <- paste0('~', xvar)
  y.equation <- paste0('~', yvar)
  data <- data %>% 
    filter(grepl(search, state))
    
    plot_ly(data=data, x = eval(parse(text = x.equation)), 
            y = eval(parse(text = y.equation)), 
            mode='markers', 
            marker = list(
              opacity = .4, 
              size = 10
            )) %>% 
    layout(xaxis = list(range = c(0, xmax), title = xvar), 
           yaxis = list(range = c(0, ymax), title = yvar)
    ) %>% 
    return()
}