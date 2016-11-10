# Exercise 1: Loading functions

# Set your directory
setwd('~/Documents/info-201/m14-shiny/exercise-1/')

# Load your buildMap.R Script
source('./scripts/buildMap.R')
df <- read.csv('https://raw.githubusercontent.com/plotly/datasets/master/2014_us_cities.csv')

# Use your BuildMap function to draw a map of the data
BuildMap(df, title="Bubble Map of Cities")
