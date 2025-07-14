options(future.debug = FALSE)
options(doFuture.debug = FALSE)
if (require(caret)) {
  library(doFuture)
  
  if (length(testsets) == 0 || "caret" %in% testsets) {
    doFuture.tests.extra::caret_examples()
  }
}
