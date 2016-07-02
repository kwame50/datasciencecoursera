CalcBMI <- function(closed, open) (closed * 100)/open

library(shiny)
shinyServer(
  function(input, output) {
     output$inputValue1 = renderPrint({input$closed}) 
     output$inputValue2 = renderPrint({input$open}) 
     output$BMI = renderPrint({CalcBMI(input$closed, input$open)})
  }
  )
