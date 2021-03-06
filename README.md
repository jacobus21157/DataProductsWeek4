# Iris Data Set Exploration Shiny App
Coursera Developing Data Products Week 4 Project
P.W. Jacobus
2/25/2020

## Background
This is an RStudio Shiny application for the final project of the Coursera Developing Data Products course.  This App is a data explorer, focused on exploring the data in the Iris data set, which contains four measurements for 150 flowers representing three species.

The project includes:
* Selection of X and Y variables fomr the Iris data set
* Selection of whether to display the linear model output

The App is avaiable at:
https://jacobus21157.shinyapps.io/DataProductsWeek4/

The code for the project is available at:
https://github.com/jacobus21157/DataProductsWeek4


When comparing the Sepal {length, width} variables and the Petal {length, width}
variables, a linear model is generated and displayed, if the "show Linear Model" box is checked.

When the **Species** variable is selected, the plot shifts to either a Box Plot or a series of data points per Species. In these cases, the linear model is not a part of the plot and is not displayed.

## Instructions for using the App
1. Select the X Variable using the five choices on the drop-down menu
2. Select the Y Variable using the five choices on the drop-down menu
3. Check the "Show Linear Model" box, if desired.

## Widgets

- selectInput: X and Y axis variable selections
- checkboxInput: Options to display the linea model

## Output
When comparing the Sepal {length, width} variables and the Petal {length, width}
variables, a linear model is generated and displayed, if the "show Linear Model" box is checked.

When the **Species** variable is selected, the plot shifts to either a Box Plot or a series of data points per Species. In these cases, the linear model is not a part of the plot and is not displayed.