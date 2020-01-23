#' Grade
#'
#' Assigns a grade (pass/fail) to the projects for the exam "Coding for Data Science and Data Management", R module (2019/2020).
#' Master in Data Science and Economics, University of Milan.
#'
#' @param ids character. One or more repo ids to check. If \code{NULL} (the default) checks all repositories. See also \code{\link{repo}}
#' @param file character. Filename to store results (csv format)
#' @param verbose logical. Print on progress?
#'
#' @return data.frame
#' \describe{
#'   \item{id}{GitHub repo id}
#'   \item{pkg}{Name of the package}
#'   \item{grade}{PASS or FAIL}
#' }
#'
#' @examples
#' \dontrun{
#'  grade()
#' }
#'
#' @export
#'
grade <- function(ids = NULL, file = NULL, verbose = TRUE) {

  # if no id is provided, use all repositories
  # (type ?repo for information about the dataset)
  if(is.null(ids))
    ids <- sample::repo

  # store id, package and grade
  x <- NULL
  for(id in ids){

    # install pkg
    test <- try(devtools::install_github(repo    = sprintf('unimi-dse/%s', id),
                                         upgrade = FALSE,
                                         force   = TRUE,
                                         quiet   = !verbose))

    # check and score
    res <- data.frame(id = id, pkg = "", grade = "FAIL")
    if(class(test)!='try-error'){
      res$pkg   <- test
      res$grade <- "PASS"
    }

    # print result
    if(verbose)
      print(res)

    # append
    x <- rbind(x, res)

  }

  # write to file
  if(!is.null(file))
    utils::write.csv(x, file = paste0(file,'.csv'), row.names = FALSE)

  # return
  return(x)

}
