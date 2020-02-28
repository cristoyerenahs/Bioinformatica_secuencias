

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
   
   # Application title
   titlePanel("HALLO MY NAME IST CRISTOPHER YERENA, ICH BIN MEXICANO AND HAVE FEITO UM SHINY FOR YOU!"),
   
   # Sidebar with a slider input for number of bins 
   sidebarLayout(
      sidebarPanel(
         sliderInput("Entradas",
                     "NUmero de entradas:",
                     min = 1,
                     max = 400,
                     value = 30)
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
         plotOutput("distPlot")
      )
   )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
   
   output$distPlot <- renderPlot({
      # generate bins based on input$bins from ui.R
      x    <- faithful[, 2] 
      bins <- seq(min(x), max(x), length.out = input$Entradas + 1)
      
      # draw the histogram with the specified number of bins
      hist(x, breaks = bins, col = 'orange', border = 'blue')
   })
}

# Run the application 
shinyApp(ui = ui, server = server)

