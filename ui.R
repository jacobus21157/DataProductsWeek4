## Week 4 project for Coursera's Developing Data Products
## PW Jacobus
## 2/25/2020

library(shiny)

# Initialize the ShinyUI
shinyUI(fluidPage(
# Add title
    titlePanel("Iris Data Set Exploration"),
# Add the sidebar layout and panel
    sidebarLayout(
        sidebarPanel(
            
            h4("Instructions for using the App"),
            p("1. Select the X Variable using the five choices on the drop-down menu"),
            p("2. Select the Y Variable using the five choices on the drop-down menu"),
            p("3. Check the 'Show Linear Model' box, if desired."),
            p("After selecting the variables and options, a plot of the selected variables
              and the Linear Model Output values will be displayed (see note below).  
              View different combination of X and Y variables to explore this data set."),
            h3(""),
            selectInput('xcol', 'X Variable', names(iris)),
            selectInput('ycol', 'Y Variable', names(iris),
                    selected=names(iris)[[2]]),
            checkboxInput("lmShow", "Show Linear Model", value = TRUE),
            h3(""),
            p(strong("Note: "),
                "The Linear model will not display if the ",
               strong("Species"),   
               " variable is selected"),
            h3(""),
            h4("Data Set"),
            p("The Iris data set contains four measurements for 150
               flowers representing three species.")
        ),
# Add the main panel        
        mainPanel(
            plotOutput('plot1'),
            h3("Linear Model Output"),
            h4("The selected variables generate a linear model with the following coefficients:"),
            h4(strong("Intercept: ")),
            textOutput("lmInt"),
            h4(strong("Slope:")),
            textOutput("lmSlope")
        )
    )
))