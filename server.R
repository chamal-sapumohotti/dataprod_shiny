
library(shiny)
library(randomForest)


shinyServer(
  function(input, output) {

    load("model")
    
    prediction <- reactive({            
        sl <- as.numeric(input$sepalLength)
        sw <- as.numeric(input$sepalWidth)
        pl <- as.numeric(input$petalLength)
        pw <- as.numeric(input$petalWidth)
        
        query <- data.frame(Sepal.Length=sl, Sepal.Width = sw, Petal.Length=pl, Petal.Width=pw)
        
        pred<-as.character(predict(finalModel, query, type="response"))
        as.character(pred)
    })
    
    output$prediction <- renderText(prediction())
    
  }
)