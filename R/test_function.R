#' Wrapper to test plot.deposit_dataset
#'
#' Checks that the input is of class 'deposit_dataset' before calling
#' the plotting method. Prints a message if the input is invalid.
#'
#' @param obj Any R object
#' @return A list of ggplot2 objects if successful, otherwise NULL
#' @export
test_plot_deposit <- function(obj) {
  if (!inherits(obj, "deposit_dataset")) {
    message("Input is not a 'deposit_dataset'. Plot cannot be generated.")
    return(NULL)
  }

  # If input is valid, call the plot method
  plots <- plot(obj)

  # Optionally, print plots for visual inspection
  print(plots$total_anomalies)
  print(plots$unique_customers)

  invisible(plots)
}
