shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Miles Per Galon (MPG) consumption prediction"),
                sidebarPanel(
                        radioButtons("am", label = h3("Transmision"),
                                     choices = list("Manual" = 1, "Automatic" = 0),selected = 1),
                        numericInput('hp', 'Gross Horsepower', 75, min = 50, max = 340, step = 1),
                        numericInput('wt', 'Weight (1000 lbs)', 1.600, min = 1.500, max = 5.500, step = 0.100),
                        submitButton('Submit')
                ),
                mainPanel(
                        tabsetPanel(id = "tabs",
                                tabPanel("Application",
                                        h3('MPG Prediction'),
                                        h4('You selected the transmission'),
                                        verbatimTextOutput("am"),
                                        h4('You entered a Gross Horsepower of'),
                                        verbatimTextOutput("hp"),
                                        h4('You entered a Gross Weight (1000 lbs) of'),
                                        verbatimTextOutput("wt"),
                                        h4('Which resulted in a MPG prediction of'),
                                        verbatimTextOutput("prediction")
                                ),
                                tabPanel("Documentation",
                                         h3('MPG Prediction App'),
                                         h4('The MPG prediction App is a application developed in Shiny that predicts the gasoline 
                                            consumption of a car based on its transmission type, horsepower and vehicle weight.
                                            The prediction is performed using a linear regression model built from the 
                                            mtcars dataset.'),
                                         h4('To use the application, select the Transmission type of your vehicle, the number of 
                                            cylinders and the approximate weight of the vehicle. Next, click the submit button to 
                                            calculate the approximate miles per galon of the vehicle.'),
                                         h4('The source code of the application can be found in '
                                            , a("https://github.com/eizaguirre/DataProducts", href="https://github.com/eizaguirre/DataProducts"))
                                )         
                        )
                )
        )
)