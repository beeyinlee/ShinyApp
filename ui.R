#Chinese Zodiac Calculator ui.R
library(shiny)

ui<-pageWithSidebar(
  # Application title
  headerPanel("Chinese Zodiac Calculator"),
  sidebarPanel(
    numericInput('year', 'Year (1920 to 2020)', 1980, min = 1920, max = 2020, step = 1
    ),
    submitButton('Submit')
  ),
  mainPanel(
    h4('You had entered year'),
    verbatimTextOutput("inputValue"),
    h4('Your Chinese Zodiac is '),
    verbatimTextOutput("prediction")
  )
)
