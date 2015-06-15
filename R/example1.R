#' Calling a shiny app with inputs from the user's session
#' 
#' @param Input1 the unquoted name of an object from the session
#' @param Input2 (optional) the unquoted name of an object from the session
#' @param Input3 (optional) the unquoted name of an object from the session
#' 
#' @export
example1 <- function( Input1, Input2, Input3 ) {
  # Grab the name of the input.
  nameOfInput1 <- ifelse(missing(Input1), 
                         "*Input1 not specified*",
                         as.character(substitute( Input1 )))
  nameOfInput2 <- ifelse(missing(Input2), 
                         "*Input1 not specified*",
                         as.character(substitute( Input2 )))
  nameOfInput3 <- ifelse(missing(Input3), 
                         "*Input3 not specified*",
                         as.character(substitute( Input3 )))
  
  
  cat(paste(nameOfInput1, nameOfInput2, nameOfInput3, sep="\n"))
  
  ui=fluidPage(
    tabsetPanel(
      simple_tab_panel_1("One", 1),
      simple_tab_panel_1("Two", 2)
    )
  )
  resultString <- 
    runApp( list(ui=ui,
                 server=simple_server_1))
}