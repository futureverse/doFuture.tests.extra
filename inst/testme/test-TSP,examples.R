if (require(TSP)) {
  library(doFuture)
  
  if (length(testsets) == 0 || "TSP" %in% testsets) {
    for (flavor in supportedFlavors()) {
      doFuture.tests.extra::TSP_examples(flavor = flavor)
    }
  }
}
