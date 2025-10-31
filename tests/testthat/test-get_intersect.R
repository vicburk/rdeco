test_that("get_intersect works", {
  expect_equal(c("c", "d"), get_intersect( list( c("a","b","c","d"),c("f","e","d","c")), type = "vector"))
})
