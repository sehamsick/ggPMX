is_string <- function(x) {
  is.character(x) && length(x) == 1 && !is.na(x)
}

assertthat::on_failure(is_string) <-  function(call, env) {
  paste0(deparse(call$x), " is not a string")
}

is_string_or_null <- function(x) {
  is_string(x) || is.null(x)
}

assertthat::on_failure(is_string_or_null) <-  function(call, env) {
  paste0(deparse(call$x), " is not a string or NULL")
}

is_pmx_gpar <- function(x) {
  is.pmx_gpar(x)
}

assertthat::on_failure(is_pmx_gpar) <-  function(call, env) {
  paste0(deparse(call$x), " is not an object of class 'pmx_gpar'.")
}

is_configs <- function(x) {
  inherits(x, "configs")
}

assertthat::on_failure(is_configs) <-  function(call, env) {
  paste0(deparse(call$x), " is not an object of class 'configs'.")
}

is_pmxconfig <- function(x) {
  inherits(x, "pmxConfig")
}

assertthat::on_failure(is_pmxconfig) <-  function(call, env) {
  paste0(deparse(call$x), " is not an object of class 'pmxConfig'.")
}

is_pmxclass <- function(x) {
  inherits(x, "pmxClass")
}

assertthat::on_failure(is_pmxclass) <-  function(call, env) {
  paste0(deparse(call$x), " is not an object of class 'pmxClass'.")
}

is_ggplot <- function(x){
  ggplot2::is.ggplot(x)
}

assertthat::on_failure(is_ggplot) <-  function(call, env) {
  paste0(deparse(call$x), " is not an object of class 'ggplot'.")
}

is_logical <- function(x){
  is.logical(x)
}

assertthat::on_failure(is_logical) <- function(call, env) {
  paste0(deparse(call$x), " should be an logical vector.")
}

is_list <- function(x){
  is.list(x)
}

assertthat::on_failure(is_list) <- function(call, env){
  paste0(deparse(call$x), " is not a list")
}

is_list_or_null <- function(x){
  is.list(x) || is.null(x)
}

assertthat::on_failure(is_list_or_null) <- function(call, env){
  paste0(deparse(call$x), " is not a list or NULL")
}

is_integer_or_null <- function(x){
  is.integer(x) || is.null(x)
}

assertthat::on_failure(is_integer_or_null) <- function(call, env) {
  paste0(deparse(call$x), " should be an integer value or NULL.")
}

is_language_or_string <- function(x) {
  is.language(x) || is_string(x)
}

assertthat::on_failure(is_language_or_string) <-  function(call, env) {
  paste0(deparse(call$x), " should be an expression or a string")
}