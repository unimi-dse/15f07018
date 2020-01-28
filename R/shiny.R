#' Sample GUI
#' 
#' Runs a Graphical User Interface to evaluate the projects for the exam "Coding for Data Science and Data Management", R module (2019/2020).
#' Master in Data Science and Economics, University of Milan.
#' 
#' @return shiny app
#' 
#' @export
sampleGUI <- function(){
  
  shiny::runApp(system.file("shiny/sampleGUI", package = "sample"))
  
}