source("../functions/range-value.R")
context("Test for range value")
test_that("Range works as expected", {
	x <- c(1,2,3,4,5)

	expect_equal(range_value(x), 4)
	expect_length(range_value(x), 1)
	expect_type(range_value(x), "double")
})


source("../functions/missing-values.R")
context("Test for the number of NAs")
test_that("Missing values works as expected", {
	y <- c(1,2,3,4,NA)
	expect_length(missing_values(y), 1)
	expect_type(missing_values(y), "NA_real_")

	z <- c(TRUE,FALSE,TRUE)
	expect_length(missing_values(y), 1)
	expect_type(missing_values(y), "integer")
	expect_equal(missing_values(y), 1L)

	w <- letters[1:5]
	expect_error(missing_values(w) == NA,'Timo')

	})

