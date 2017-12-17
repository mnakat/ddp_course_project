#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# load mtcars dataset
data(mtcars)

# Define UI for application that draws a scatter plot and a correlation
shinyUI(fluidPage(
  
  # Application title
  titlePanel("MTCARS feature correlation"),
  
  # Sidebar with instructions, inputs 
  sidebarLayout(
    sidebarPanel(
      h3("Instructions"),
      p("Choose X Axis and Y Axis"),
      p("The application displays a scatter plot and a correlation with two features of mtcars sample dataset."),
      p(""),
      h4("Choose X Axis"),
      selectInput("x_axis", "X Axis", sort(colnames(mtcars))),
      h4("Choose Y Axis"),
      selectInput("y_axis", "Y Axis", sort(colnames(mtcars)))
    ),
    
    # Show a plot and a corretaion
    mainPanel(
      plotOutput("distPlot"),
      textOutput("corr")
    )
  ))
)
