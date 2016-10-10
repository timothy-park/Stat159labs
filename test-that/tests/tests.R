source("../functions/range-value.R")

context("Test for range value")
test_that("Range works as expected for x", {
	x <- c(1,2,3,4,5)
	expect_equal(range_value(x), 4)
	expect_length(range_value(x), 1)
	expect_type(range_value(x), "double")
})

context("Test for range value")
test_that("Range works as expected for y in new range function", {
	y <- c(1,2,3,4,NA)
	expect_equal(range_value(y, TRUE), 3)
	expect_length(range_value(y, TRUE), 1)
	expect_type(range_value(y, TRUE), "double")
})


source("../functions/missing-values.R")

context("Test for the number of NAs")
test_that("Missing values works as expected for y", {
	y <- c(1,2,3,4,NA)
	expect_length(missing_values(y), 1)
	expect_type(missing_values(y), "NA_real_")
	})

context("Test for the number of NAs")
test_that("Missing values works as expected for z", {
	z <- c(TRUE,FALSE,TRUE)
	expect_length(missing_values(z), 1)
	expect_type(missing_values(z), "integer")
	expect_equal(missing_values(z), 1L)
	})

context("Test for the number of NAs")
test_that("Missing values works as expected for w", {
	w <- letters[1:5]
	expect_error(missing_values(w))

	})




