# ui.R
library(shiny)
library(plotly)
shinyUI(navbarPage('Electoral College',
                   # Create a title
                   tabPanel('Map',
                            titlePanel('Electoral College Votes'),
                            # Create sidebar layout
                            sidebarLayout(
                              
                              # Side panel for controls
                              sidebarPanel(
                                
                                # Input to select variable to map
                                selectInput('mapvar', label = 'Variable to Map', choices = list("Population" = 'population', 'Electoral Votes' = 'votes', 'Votes / Population' = 'ratio'))
                              ),
                              
                              # Main panel: display plotly map
                              mainPanel(
                                plotlyOutput('map')
                              )
                            )
                   ), 
                   tabPanel('Scatter',
                            titlePanel('Population v.s. Vote Power'),
                            # Create sidebar layout
                            sidebarLayout(
                              
                              # Side panel for controls
                              sidebarPanel(
                                
                                # Text input for searching for a state
                                textInput('search', label="Find a State", value = '')
                              ),
                              
                              # Main panel: display plotly Scatter plot
                              mainPanel(
                                plotlyOutput('scatter')
                              )
                            )
                   )
))
