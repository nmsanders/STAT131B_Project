library(MASS)
library(ggplot2)
library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  #n <- input$slider1
  mu <- c(0, 0)
  #n <- 5000
  showmv <- function(sigma, n, center = mu){
    # Plot a multivariate normal with covariance matrix sigma
    s1 = mvrnorm(n, center, sigma)
    k1 = kde2d(s1[, 1], s1[, 2])
    rng = c(-3, 3)
    image(k1, xlim=rng, ylim=rng)
    contour(k1, add = TRUE)
  }
  s <- diag(1, 2)
  
  output$MainPlot<-renderPlot(
    showmv(s, n = input$slider1)
    )
    
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
 # output$distPlot <- renderPlot({
    #x    <- faithful[, 2]  # Old Faithful Geyser data
    #bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    #hist(x, breaks = bins, col = 'skyblue', border = 'white')
  })


