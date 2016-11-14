# Demo 3: Simple RadioInput element
shinyUI(fluidPage(
  
  # Radio buttons
  radioButtons("color", label = "Color",
               choices = list("Green" = 'green', "Blue" = 'blue'), 
               selected = 'green'),
  plotOutput('histogram')
))