#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
library(dplyr)

data <- data.frame(read.csv('data_neighborhood.csv'))
data2 <- subset(data, !is.na(number_of_reviews)) 
data3 <- subset(data2, !is.na(price))

server <- function(input, output) {
    output$plot <- renderPlot({
        filtered <-
            data3 %>%
            filter(price >= input$priceInput[1],
                   price <= input$priceInput[2],
            )
        ggplot(filtered, aes(minimum_nights)) +
            geom_histogram()
    })
}
