# server.R

library(shiny)

shinyServer(function(input, output) {

    Wpct <- function(rs, ra) {
      return (100 * (rs^2 / (rs^2 + ra^2)))
    }
  
    output$text1 <- renderText({ 
       paste("Predicted Win %:  ", round(Wpct(input$RS, input$RA),2))
    })

  }
)

