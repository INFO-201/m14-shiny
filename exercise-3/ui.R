# ui.R
shinyUI(fluidPage(
  mainPanel(
    # Add a selectInput (with a proper id) that allows you to select a variable to map
    
    # Use plotlyOutput to show your map
    plotlyOutput('map')
  )
))