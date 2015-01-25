
library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Predict Type of Iris"),
  sidebarPanel(
    h3('Please Enter The Measurements of the flower'),
    textInput("sepalLength", "Sepal Length:", "5.4"),
    textInput("sepalWidth", "Sepal Width:", "3"),
    textInput("petalLength", "Petal Length:", "3.8"),
    textInput("petalWidth", "Petal Width:", "1.2"),
    submitButton('Submit')
  ),
  mainPanel(
   h3('Please Use Chrome to view: It might take some time to load the prediction algorithms.'),
   p('This Application will predict the type of iris based on flower parameters.'),
   p('The Iris flower is Classified as'),
   h3(verbatimTextOutput("prediction"))
  )
))

