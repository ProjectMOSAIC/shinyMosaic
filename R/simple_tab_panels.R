#' generate a very simple UI with a plot, a slider, and a selector
#' 
#' @rdname example_panels
#' @name example_panels
#' @param uniqueID a character string serving as a unique ID for the 
#' widgets in this panel.
#' 
#' @rdname example_panels
#' @export
simple_tab_panel_1 <- function(title="I'm the title", uniqueID){
  res <-
    tabPanel(title = title, 
      sliderInput(inputId = paste0("slider_", uniqueID),
                  label = "Slide me!", min=0, max=10, value=2),
      plotOutput(outputId = paste0("plot_", uniqueID), 
                 width="50%", height="200px")
    )
  
  res
}
#' @rdname example_panels
#' @export
simple_tab_panel_2 <- function(title = "number 2", uniqueID){
  tabPanel(title = title, 
    plotOutput(outputId = paste0("plot_", uniqueID), 
               width="50%", height="200px")
  )
}
