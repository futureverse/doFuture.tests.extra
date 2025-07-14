if (require(TSP)) {
  library(doFuture)
  
  if (length(testsets) == 0 || "TSP" %in% testsets) {
    doFuture.tests.extra::TSP_examples()
  }
}
