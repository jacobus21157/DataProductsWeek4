## Week 4 project for Coursera's Developing Data Products
## PW Jacobus
## 2/25/2020

library(shiny)

shinyServer(function(input, output) {
    
    # From the input selection on the UI, create a data frame with the variables
    selectedData <- reactive({
        iris[, c(input$xcol, input$ycol)]
    })
    
    # Create the liner model
   lmCurrent <- reactive({        
       lm(iris[,input$ycol]~iris[,input$xcol])
   })

    # Create output text. Intercept doesn't make sense for Box plots with Species
   output$lmInt <- renderText({
       if(input$xcol != "Species" && input$ycol!= "Species"){
           lmCurrent()[[1]][1]
       } else {
           "NA"
       }
    }) 
 
   # Create output text. Slope doesn't make sense for Box plots with Species
   output$lmSlope <- renderText({
       if(input$xcol != "Species" && input$ycol!= "Species"){
           lmCurrent()[[1]][2]
       } else {
           "NA"
       }
   })    

   # CReate output plot. Show the linear model if the box is checked and input is not "Species"
    output$plot1 <- renderPlot({
        plot(selectedData(),
             pch = 20, cex = 3)
        if(input$lmShow && input$xcol !="Species" && input$ycol != "Species"){
            abline(lmCurrent(), col="blue", lwd=2)
        }
    })
})