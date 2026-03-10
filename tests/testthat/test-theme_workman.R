test_that("theme_workman returns a ggplot2 theme", {
  thm <- theme_workman()
  expect_s3_class(thm, "theme")
})

test_that("theme_workman white_bg sets white backgrounds", {
  thm <- theme_workman(white_bg = TRUE)
  expect_equal(thm$plot.background$fill, "#FFFFFF")
  expect_equal(thm$panel.background$fill, "#FFFFFF")
})

test_that("theme_workman_map returns a ggplot2 theme", {
  thm <- theme_workman_map()
  expect_s3_class(thm, "theme")
})

test_that("use_workman runs without error", {
  skip_if_not_installed("curl")
  skip_if_offline()
  expect_no_error(use_workman())
})

test_that("use_workman with white_bg runs without error", {
  skip_if_not_installed("curl")
  skip_if_offline()
  expect_no_error(use_workman(white_bg = TRUE))
})

test_that("workman_pal returns correct number of colours", {
  cols <- workman_pal(3)
  expect_length(cols, 3)
})

test_that("workman_cols returns a named colour", {
  col <- workman_cols("blue")
  expect_type(col, "character")
  expect_length(col, 1)
})
