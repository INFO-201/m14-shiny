# server.R
library(dplyr)

# Read in data
setwd('~/Documents/info-201/m14-shiny/exercise-4/')
source('./scripts/buildMap.R')
source('./scripts/buildScatter.R')
df <- read.csv('./data/electoral_college.csv', stringsAsFactors = FALSE)
state.codes <- read.csv('./data/state_codes.csv', stringsAsFactors = FALSE)

# Join together state.codes and df
joined.data <- left_join(df, state.codes, by="state")

# Compute the electoral votes per 100K people in each state
joined.data <- joined.data %>% mutate(ratio = votes/population * 100000)

# Start shinyServer
shinyServer(function(input, output) { 
  
  # Render a plotly object that returns your map
  output$map <- renderPlotly({ 
      return(BuildMap(joined.data, input$mapvar))
  }) 
  
  # Create a `scatter` property on your `output` object. That property shoudl be a `renderPlotly` object that returns a scatterplot (`BuildScatter`)
  
})