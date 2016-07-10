library(shiny)
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Backlog Management Index - BMI is a very good indication of the success of the project work. It is calculated by (problems closed during the month * 100) / (problems opened during the month)"),
    
    sidebarPanel(
      numericInput('closed', 'Enter the number of problems closed this month', 10, min = 1, max = 1000, step = 1),
      numericInput('open', 'Enter the number of problems opened this month', 10, min = 1, max = 1000, step = 1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of Calculation'),
      h4('Your entry for problems closed this month - should include trouble tickets and work orders'),
      verbatimTextOutput("inputValue1"),
      h4('Your entry for problems opened this month - should include trouble tickets and work orders'),
      verbatimTextOutput("inputValue2"),
      h4('Which resulted in a Backlog Management Index of'),
      verbatimTextOutput("BMI")
    )
  )
)
