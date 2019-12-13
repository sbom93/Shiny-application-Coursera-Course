#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
    titlePanel("Number of Airbnb's"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("priceInput", "Price", 0, 100, c(25, 40))
        ),
        mainPanel(
            plotOutput("plot"),
            br(), br()
        )
    )
)