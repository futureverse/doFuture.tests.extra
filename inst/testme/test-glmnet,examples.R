if (require(glmnet)) {
  library(doFuture)
  
  if (length(testsets) == 0 || "glmnet" %in% testsets) {
    doFuture.tests.extra::glmnet_examples()
  }
}
