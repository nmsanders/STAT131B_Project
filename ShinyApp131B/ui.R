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
                       min = 0, max = 360, value = 0),
           sliderInput("slider2", "",
                       min = -3, max = 3, value = c(-1, 1)),
           sliderInput("slider3", "",
                      min = -10, max = 10, value = c(-1,1))
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
                
                strong("This is a gamma distribution downloaded from the web."),
                br(),
        img(src="http://upload.wikimedia.org/wikipedia/commons/1/1f/Inverse_gamma_pdf.png", height = 400, width = 400)
    )
  )
))
