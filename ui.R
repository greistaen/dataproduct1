#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
fluidPage(

  
  # Application title
  titlePanel("Histogram"),
  
  # Show a slider input for bin size
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins", "Select bin size:", min = 1, max = 50, value = 10)
    ),
    
    # Show the histogram in the main panel
    mainPanel(
      plotOutput("hist")
    )
  )
)
