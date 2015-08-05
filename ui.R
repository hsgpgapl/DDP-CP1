library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Model input"),
    sidebarPanel(
        checkboxGroupInput("factors", "Check all that apply",
                           c("Have you watched Star Trek?" = "star",
                             "Have you ever worn a Dr. Who button?" = "button",
                             "Have you been to a 'Rocky Horror Picture Show' screening?" = "rhps",
                             "Is Decoder Ring Theatre your favorite Podcast?" = "podcast"
                             ))#,
        #submitButton('Submit')
    ),
    mainPanel(
            h2('Results of prediction'),
            h4('Your Information'),
            #h5('Factors selected'),
            #verbatimTextOutput("ofactors"),
            h4('Which means...'),
            verbatimTextOutput("orating"),
            br(),

            br(),
            h2("Documentation"),
            p("* This normalcy predictor uses 4 specific cultural indicators."),
            p("* If no indicators are check (the default condition), you may need cultural help."),
            p("* Your score is based on the number of indicators.  Please consult the Google machine to determine what the indicators mean.")
           )
))

