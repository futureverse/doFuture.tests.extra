if (require(plyr)) {
  library(doFuture)
  
  if (length(testsets) == 0 || "plyr" %in% testsets) {
    ## Avoid giant log out (~ 4 GB)
    options(doFuture.debug = FALSE, future.debug = FALSE)
    doFuture.tests.extra::plyr_examples()
  }
}
