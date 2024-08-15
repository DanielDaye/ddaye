#' Hello there!
#' 
#' Adaptive Hello World Function
#' 
#' @param name Name to be addressed in response
#' 
#' @export

helloThere <- function(name = NULL) {
  if (is.null(name)) {name = "World"}
  print(paste0("Hello there, ",name,"!"))
}