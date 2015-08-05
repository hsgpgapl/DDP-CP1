library(shiny)
# calculate risk for last visit

rating <- function(factors){

    n <- length(factors)

if (n == 0) {"you need help"} else
    if (n == 1) {"mild"}          else
        if (n == 2) {"crazy"}         else
            if (n == 3) {"meshuggenah"}   else
                if (n == 4) {"normal"}
}

tags <- function(factors){

    t <- C() # initialize

    if ('star'    %in% factors) {t <- c(t,"Trekkie!")}
    if ('button'  %in% factors) {t <- c(t,"Your Tardis is here.")}
    if ('rhps'    %in% factors) {t <- c(t,"Meatloaf for Dinner?")}
    if ('rhps'    %in% factors) {t <- c(t,"Meatloaf for Dinner?")}
    if ('podcast' %in% factors) {t <- c(t,"Black Jack Justice!")}

    if (length(t) == 0) {t <- "None selected"}

    return(t)
}

shinyServer(
    function(input, output) {
        #output$ofactors   <- renderprint({tags(input$factors)})
        output$orating    <- renderPrint({rating(input$factors)})
    }
)