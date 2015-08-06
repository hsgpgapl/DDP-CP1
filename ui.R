library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Culture Awareness Test"),
    sidebarPanel(
        checkboxGroupInput("factors", "Check all that apply",
                           c("Have you watched Star Trek?" = "star",
                             "Have you ever worn a Dr. Who button?" = "button",
                             "Have you been to a 'Rocky Horror Picture Show' screening?" = "rhps",
                             "Is Decoder Ring Theatre your favorite Podcast?" = "podcast"
                             ))#,
    ),
    mainPanel(
        h2("Documentation"),
        p("1. This normalcy predictor uses 4 specific cultural indicators."),
        p("2. If no indicators are check (the default condition), you may need cultural help."),
        p("3. Check an indicator if you your response is 'yes' to the item."),
        p("4. Your score is based on the number of indicators.  Please consult the Google machine to determine what the indicators mean."),

        br(),
        br(),

        h2('Results of prediction'),
        h4('Your selection of indicators means...'),
        #h5('Factors selected'),
        #verbatimTextOutput("ofactors"),
        #h4('Which means...'),
        verbatimTextOutput("orating")
        )
))