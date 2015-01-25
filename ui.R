
library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Predict Type of Iris"),
  sidebarPanel(
    h3('Please Enter The Measurements of the flower'),
    textInput("petalLength", "Petal Length:", "3.8"),
    textInput("petalWidth", "Petal Width:", "1.2"),
    submitButton('Submit')
  ),
  mainPanel(
   h3('This Application will predict the type of iris based on flower parameters.'),
   p('The Iris flower is Classified as'),
   h3(verbatimTextOutput("prediction"))
  )
))

