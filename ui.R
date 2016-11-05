library(shiny)
library(ggplot2)

dataset <- diamonds

# Location:
# https://herminio.shinyapps.io/Coursera-DataProduct-Week4/
shinyUI(fluidPage(
  
  title = "Diamonds Explorer",
  
  h1("Data Products: Final Assessment"),
  h4("Author: Herminio Vazquez / November 2016"),
  p("Assistance for the couples about to get married to explore the features on diamonds that influence the price."),
  plotOutput('plot'),
  br(),  
  hr(),
  
  
  fluidRow(
    column(3,
           h4("Diamonds Explorer"),
           sliderInput('samplePrice', 'Price Selector', 
                       min=1, max=max(dataset$price), value=min(500, max(dataset$price)), 
                       step=500, round=0),
           br()
    ),
    column(4, offset = 1,
           selectInput('x', 'X', names(dataset), selected = 'carat'),
           selectInput('y', 'Y', names(dataset), selected = 'price'),
           selectInput('color', 'Color', c('clarity', 'depth'))
    )
  )
))