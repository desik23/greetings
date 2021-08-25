
#' Says Aloah to a friend
#'
#' @param name - a character
#' @param color - a character
#' @param print - a logical
#'
#' @return (character) An aloha message
#' @export
#'
#' @examples say_aloha("Allison")
say_aloha <- function(name, color){
  message1 <- paste("Aloha,",
                   name,
                   emo::ji("palm_tree"),
                   emo::ji("sunny"),
                   emo::ji("ocean"))

  crayon_bgcolor <-c("black", "red", "green", "yellow", "blue", "magenta", "cyan", "white")
  crayon_bg <- c("bgBlack", "bgRed", "bgGreen", "bgYellow", "bgBlue", "bgMagenta", "bgCyan", "bgWhite")


  bgcolor <- data.frame(crayon_bgcolor, crayon_bg)

  for(i in seq_along(crayon_bgcolor)) {
    if (crayon_bgcolor[i] == color) {
      parse(cat(paste0("crayon::", bgcolor[i,2], "(", message1)))
    }

  }

}
