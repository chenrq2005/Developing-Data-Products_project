library(shiny)
shinyUI(
    pageWithSidebar(
        headerPanel("R for protein analysis"),
        sidebarPanel(
            h3('Search parameters input'),
            numericInput("id1",'Numeric input, you want to calculate sqare root', 0, min=0, max=1000, step=1),
            checkboxGroupInput("id2", "Checkbox",
                               c("Value 1"="1",
                               "Value 2"="2",
                                "Value 3"="3")),
            dateInput("date", "Date:"),
            fileInput("FASTA_file", "Load FASTA", multiple = FALSE, accept = NULL),
            fileInput("MGF_file", "Load MGF (multiple is OK)", multiple = TRUE, accept = NULL)
            
        ),
        mainPanel(

            h4('sqare root of your entered number'),
            verbatimTextOutput("oid1"),
            h4('Your entered value in checkbox'),
            verbatimTextOutput("oid2"),
            h4('Your picked date is'),
            verbatimTextOutput("odate")
        )
    )
)