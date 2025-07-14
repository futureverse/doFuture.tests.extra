if (length(testsets) == 0 || "foreach" %in% testsets) {
  library(doFuture)

  for (flavor in supportedFlavors()) {
    doFuture.tests.extra::foreach_examples(flavor = flavor)
  }
}
