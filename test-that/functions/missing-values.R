missing_values <- function(x) {
	as.double(sum(is.na(x)))
}