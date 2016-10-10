range_value <- function(x, na.rm = NULL) {
	if (na.rm == TRUE) {
		max(x, na.rm = TRUE) - min(x, na.rm = TRUE)
	}
	else {
		max(x) - min(x)
	}
}