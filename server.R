library(shiny)
# calculate risk for last visit

rating <- function(factors){

    n <- length(factors)

if (n == 0) {"you need help"} else
    if (n == 1) {"you are mildly aware"} else
        if (n == 2) {"you are crazily aware"} else
            if (n == 3) {"you are meshuggenah"} else
                if (n == 4) {"you seem normal to me"}
}


shinyServer(
    function(input, output) {
        output$orating    <- renderPrint({rating(input$factors)})
    }
)