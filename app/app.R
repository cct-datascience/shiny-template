library(shiny)
options(shiny.usecairo = TRUE) #fixes bad rendering of ggplot2 plots on Posit Connect

ui <- fluidPage(
  shiny::h1("Hello world!")
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)