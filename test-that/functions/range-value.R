range_value <- function(x, na.rm = FALSE) {
	if (na.rm == TRUE) {
		max(x, na.rm = na.rm) - min(x, na.rm = na.rm)
	}
	else {
		max(x) - min(x)
	}
}