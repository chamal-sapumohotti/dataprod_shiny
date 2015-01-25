
library(shiny)

shinyServer(
  function(input, output) {

    
    prediction <- reactive({            
        pl <- as.numeric(input$petalLength)
        pw <- as.numeric(input$petalWidth)
        
        if(pl < 2.45)
            pred <- "setosa"
        else if(pl >=2.45 && pw < 1.75)
            pred <- "versicolor"
        else
            pred<- "viginica"
        
        pred
    })
    
    output$prediction <- renderText(prediction())
    
  }
)