source("../functions/range-value.R")
source("../functions/missing-values.R")

###
context("Test for range value for x")
test_that("Range works as expected for x", {
	x <- c(1,2,3,4,5)
	expect_equal(range_value(x, FALSE), 4)
	expect_length(range_value(x, FALSE), 1)
	expect_type(range_value(x, FALSE), "double")
})

context("Test for range value for y")
test_that("Range works as expected for y", {
	y <- c(1,2,3,4,NA)
	expect_length(range_value(y, FALSE), 1)
	expect_equal(range_value(y, FALSE), NA_real_)
	})

context("Test for range value for z")
test_that("Range works as expected for z", {
	z <- c(TRUE,FALSE,TRUE)
	expect_length(range_value(z, FALSE), 1)
	expect_type(range_value(z, FALSE), "integer")
	expect_equal(range_value(z, FALSE), 1L)
	})

context("Test for range value for w")
test_that("Range works as expected for w", {
	w <- letters[1:5]
	expect_error(range_value(w, FALSE))
	})

context("Test for range value for y in new range function")
test_that("Range works as expected for y in new range function", {
	y <- c(1,2,3,4,NA)
	expect_equal(range_value(y, TRUE), 3)
	expect_length(range_value(y, TRUE), 1)
	expect_type(range_value(y, TRUE), "double")
})
###


###
context("Test for missing values for x")
test_that("Missing value count works as expected for x", {
	x <- c(1,2,3,4,5)
	expect_length(missing_values(x),1)
	expect_type(missing_values(x), "double")
	expect_gte(missing_values(x), 0)
})

context("Test for missing values for y")
test_that("Missing value count works as expected for y", {
	y <- c(1,2,3,4,NA)
	expect_length(missing_values(y),1)
	expect_type(missing_values(y), "double")
	expect_gte(missing_values(y), 0)
})

context("Test for missing values for z")
test_that("Missing value count works as expected for z", {
	z <- c(TRUE,FALSE,TRUE)
	expect_length(missing_values(z),1)
	expect_type(missing_values(z), "double")
	expect_gte(missing_values(z), 0)
})

context("Test for missing values for w")
test_that("Missing value count works as expected for w", {
	w <- letters[1:5]
	expect_length(missing_values(w),1)
	expect_type(missing_values(w), "double")
	expect_gte(missing_values(w), 0)
})



