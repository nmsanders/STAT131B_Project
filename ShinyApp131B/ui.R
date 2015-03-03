library("shiny")

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Title
  titlePanel("Matrix Transformations"),
  #we could add or remove gui's to change matrixes or other values
  fluidRow(
    
    column(3,
           selectInput("select", label = h3("Select box"), 
                       choices = list("Normal" = 1, "Poisson" = 2,
                                      "Gamma" = 3), selected = 1)),
    
    column(3, 
           sliderInput("slider1", label = h3("Sliders"),
                       min = 1, max = 1000, value = 500)
    ),
    
    column(3, 
           fileInput("Data file", label = h3("File Input"))
    )   
  ),
  # SideBar
  sidebarLayout(position = "right",
    sidebarPanel(
      "write stuff here"
                 ),
    mainPanel(  h6("Examining Transofrmations and Orthogonal Matrixes", 
                   align = "center"),
                br(),
                br(),
                br(),
                
        
        plotOutput("MainPlot")
        )
  )
))
