#' Simple server example
#' 
#' @export
simple_server_1 <- 
  function(input, output, session) {
    do_plot <- function(k){
        n <- round(input[[paste0("slider_",k)]])
        plot(1:n)
      } 
    
    observe({
      input$slider_1; input$slider_2 # for dependencies

      for (k in 1:2) output[[paste0("plot_",k)]] <- renderPlot(do_plot(k))
    })
#     observe({
#       input$slider_2 # for dependencies
#       k = 2 # unique ID
#       output[[paste0("plot_",k)]] <<- renderPlot({
#         n <- round(input[[paste0("slider_",k)]])
#         plot(1:n)
#       })
#     })
}
  