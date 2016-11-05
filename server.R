library(shiny)
library(datasets)
library(ggplot2)

# Location:
# https://herminio.shinyapps.io/Coursera-DataProduct-Week4/
shinyServer(function(input, output) {
  
  output$plot <- renderPlot({
    p <- ggplot(data=subset(diamonds, price < input$samplePrice), aes_string(x = input$x, y = input$y, color=input$color))
    p + geom_point()
  })
})
