# ui.R

shinyUI(fluidPage(
  titlePanel("Bill James' Pythagorean Win Percentage Predictor"),

  sidebarLayout(
    sidebarPanel(
      h4("Select desired values:"), 
      sliderInput("RS", 
        label = "Runs Scored:",
        min = 0, max = 1000, value = 500, step = 5),
      sliderInput("RA", 
        label = "Runs Allowed:",
        min = 0, max = 1000, value = 500, step = 5)
    ),
    
        mainPanel(
      h3("Prediction Formula:"),
      img(src="pythag2.png", height = 400, width = 400),
      br(), br(),
      h3(textOutput("text1")),
      br(), br(), 
      p("Note:  Bill James is a knowledgable statistician who knows this is not really the 
                famous Pythagorean Theorem for right triangles. :)"),
      helpText("Instructions: This App can be used to predict a Major League Baseball team's winning", 
               "percentage for a season based only upon the runs scored and the runs allowed by the ",
               "team for the season.  Use the sliders to select the desired 'Runs Scored' and 'Runs Allowed'",
               "and the predicted winning percentage will be automatically calculated and displayed.")
    )
  )
))

