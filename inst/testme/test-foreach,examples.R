if (length(testsets) == 0 || "foreach" %in% testsets) {
  library(doFuture)
  
  doFuture.tests.extra::foreach_examples()
}
