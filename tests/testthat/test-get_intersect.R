s <- list(c("a","b","c","d"), c("f","e","d","c"))

test_that("get_intersect works for vectors", {
  expect_equal(c("c", "d"), get_intersect(s, type = "vector"))
})

dat1 <- matrix(rep(0,25), nrow = 5)
rownames(dat1) <- letters[1:5]
colnames(dat1) <- LETTERS[1:5]
dat2 <- matrix(rep(0,49), nrow = 7)
rownames(dat2) <- letters[3:9]
colnames(dat2) <- LETTERS[2:8]

s <- list(dat1, dat2)

test_that("get_intersect works for matrices", {
  expect_equal(c("c", "d", "e"), get_intersect(list(dat1, dat2), type = "row"))
  expect_equal(c("B", "C", "D", "E"), get_intersect(list(dat1, dat2), type = "col"))
})
