#' Get the intersection of a list of sets
#'
#' @param sets Either a list of matrices with named rows and columns, or a list of named vectors
#' @param type The type of sets that you want to get the intersection of. Either "row", "col", or "vector"
#'
#' @return A vector of the intersection of the sets
#' @export
#'
#' @examples
#' s <- list(c("a","b","c","d"), c("f","e","d","c"))
#' get_intersect(s, type = "vector")
#'
get_intersect <- function(sets, type = c("row", "col", "vector")) {
  # This will throw an error if the type is not valid
  type <- match.arg(type)
  if (type == "row") {
    sets <- lapply(sets, rownames)
  } else if (type == "col") {
    sets <- lapply(sets, colnames)
  }
  Reduce(intersect, sets)
}
