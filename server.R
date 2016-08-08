# function to predict the MPG consumption based on transmission type, horsepower and weight
carprediction <- function(am, hp, wt) {
        app.data <- data.frame(as.factor(am),hp,wt)
        fit <- lm(mpg ~ as.factor(am) + hp + wt, data = mtcars)
        predict(fit, new=app.data)
}

shinyServer(
        function(input, output) {
                output$am <- renderText({if (input$am == 1) "Manual" else "Automatic"})
                output$hp <- renderPrint({input$hp})
                output$wt <- renderPrint({input$wt})
                output$prediction <- renderPrint({carprediction(input$am, input$hp, input$wt)})
        }
)