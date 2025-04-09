# install.R
packages <- c("tidyverse", "ggplot2", "dplyr", "readr", "lubridate", "stringr")

install_if_missing <- function(pkg) {
  if (!require(pkg, character.only = TRUE)) {
    install.packages(pkg, dependencies = TRUE)
  }
}

invisible(sapply(packages, install_if_missing))
