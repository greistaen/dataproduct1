#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
function(input, output, session) {
  
  # Generate sample data
  sample_data <- data.frame(x = rnorm(100))
  
  # Reactive expression to create the histogram
  hist_data <- reactive({
    hist_data <- hist(sample_data$x, breaks = seq(min(sample_data$x), max(sample_data$x), length.out = input$bins + 1), main = "Histogram", xlab = "Values", ylab = "Frequency", col = "blue")
    hist_data
  })
  
  # Render the histogram
  output$hist <- renderPlot({
    hist_data()
  })
}