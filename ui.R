library(shiny)
shinyUI(
  pageWithSidebar(
  # Application title
  headerPanel("Backlog Management Index"),
  
  sidebarPanel(
    numericInput('closed', 'Problems closed this month', 10, min = 1, max = 1000, step = 1),
    numericInput('open', 'Problems opened this month', 10, min = 50, max = 1000, step = 1),
    submitButton('Submit')
  ),
  mainPanel(
    h3('Results of Calculation'),
    h4('Your entry for problems closed this month'),
    verbatimTextOutput("inputValue1"),
    h4('Your entry for problems opened this month'),
    verbatimTextOutput("inputValue2"),
    h4('Which resulted in a Backlog Management Index of '),
    verbatimTextOutput("BMI")
    )
  )
)
