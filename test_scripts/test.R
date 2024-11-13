#!/usr/bin/env Rscript

# Package management keywords
library(stats)
require(utils)
if (!require(pacman)) install.packages("pacman")
suppressPackageStartupMessages(library(dplyr))
attachNamespace("tools")

# Basic variable types and assignments
numeric_var <- 42.5
integer_var <- 42L
character_var <- "Hello, world!"
logical_var <- TRUE
complex_var <- 3 + 4i
raw_var <- charToRaw("Raw bytes")
NULL_var <- NULL
NA_var <- NA
NaN_var <- NaN
Inf_var <- Inf

# Function keywords
return(42)
function(x) x
invisible(TRUE)

# Control flow keywords
repeat {
  break
}

switch("case",
  case = "result",
  default = "default"
)

# Environment and namespace keywords
environment()
parent.frame()
attach(list(x = 1))
detach(name = "package:stats")
assign("x", 42)
remove(numeric_var)
exists("character_var")

# Special operators
`%my_operator%` <- function(x, y) x + y
5 %my_operator% 3

# Data structures
vector_example <- c(1, 2, 3, 4, 5)
matrix_example <- matrix(1:9, nrow = 3)
array_example <- array(1:24, dim = c(2, 3, 4))
list_example <- list(
  numbers = 1:3,
  text = "string",
  nested = list(a = 1, b = 2)
)
df_example <- data.frame(
  id = 1:3,
  name = c("Alice", "Bob", "Charlie"),
  score = c(95.2, 82.5, 91.3),
  stringsAsFactors = FALSE
)

# Functions and control structures
my_function <- function(x, y = 10, ...) {
  # Function with default argument and ellipsis
  if (is.numeric(x)) {
    result <- switch(as.character(x),
      "1" = "one",
      "2" = "two",
      "default"
    )
  } else {
    warning("Non-numeric input")
    return(NULL)
  }
  
  invisible(result)
}

# Loops and iterations
for (i in seq_along(vector_example)) {
  if (i %% 2 == 0) next
  if (i > 4) break
  print(i)
}

while (FALSE) {
  # Never executed
  break
}

# Error handling
tryCatch(
  expr = {
    stop("Custom error")
  },
  error = function(e) {
    message("Error caught: ", conditionMessage(e))
  },
  warning = function(w) {
    message("Warning caught: ", conditionMessage(w))
  },
  finally = {
    # Cleanup code
  }
)

# S3 class
my_class <- list(value = 42)
class(my_class) <- "MyClass"
print.MyClass <- function(x, ...) {
  cat("MyClass object with value:", x$value, "\n")
}

# S4 class
setClass(
  "Person",
  slots = list(
    name = "character",
    age = "numeric"
  )
)

# Regular expressions
pattern <- "^[A-Za-z]+$"
grepl(pattern, "Test123")
gsub("\\s+", "_", "multiple   spaces   here")

# Pipes (requires magrittr or R 4.1+)
# 1:10 |> 
#   mean() |>
#   round(2)

# Special syntax for formulas
formula_example <- y ~ x1 + x2 + I(x3^2)

# Package namespace operations
base::sum
utils::data

# Roxygen documentation example
#' @title Example Function
#' @param x Numeric input
#' @return Processed value
#' @export
example_function <- function(x) {
  return(x * 2)
}

# Unicode variables (R supports UTF-8)
π <- 3.14159
α <- 0.05

# Raw string literals (R 4.0+)
raw_string <- R"(This is a "raw" string with \n and {brackets})"

# Special constants and reserved words
reserved <- list(
  inf = Inf,
  na = NA,
  nan = NaN,
  null = NULL
)

# Debug keywords
debug(my_function)
debugonce(example_function)
trace("mean")
untrace("mean")
browser()