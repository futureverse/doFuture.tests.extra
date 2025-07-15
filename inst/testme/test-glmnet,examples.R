if (require(glmnet)) {
  library(doFuture)
  
  if (length(testsets) == 0 || "glmnet" %in% testsets) {
    for (flavor in supportedFlavors()) {
      doFuture.tests.extra::glmnet_examples(flavor = flavor)
    }
  }
}
