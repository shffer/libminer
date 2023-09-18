#' R Library Summary
#'
#' Provides a brief summary of the package libraries on your machine
#'
#' @param size A logical value indicating whether to calculate sizes. Defaul = `FALSE`
#'
#' @return A `data.fame` containing the count of packages in each of the user's libraries. If `sizes = TRUE`, a column of library sizes will be added.
#' @export
#'
#' @examples
#' lib_summary()
#' lib_summary(size = TRUE)
lib_summary <- function(size = FALSE) {
  if (!is.logical(size)){
    stop("sizes must be a logical")
  }

  pkgs <- utils::installed.packages()
  pkg_tbl <- table(pkgs[, "LibPath"])
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")

  if (isTRUE(size)) {
    pkg_df$lib_size <- vapply(
      pkg_df$Library,
      function(x){
        sum(fs::file_size(fs::dir_ls(x, recurse = TRUE)))
      },
      FUN.VALUE = numeric(1)
    )
  }

  pkg_df
}