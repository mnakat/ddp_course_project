#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a scatter plot and a correlation
shinyServer(function(input, output) {
   
  # Show scatter plot with selectec features
  output$distPlot <- renderPlot({
    plot(mtcars[,input$x_axis], mtcars[,input$y_axis], xlab=input$x_axis, ylab=input$y_axis)
  })

  # Show correlation with selectec features
  output$corr <- renderText({
    paste("Correlation ", cor(mtcars[,input$x_axis], mtcars[,input$y_axis]))
  })
  
})
