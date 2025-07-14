if (require(NMF)) {
  library(doFuture)
  
  message("*** NMF w / doFuture ...")

  ## From NMF vignette
  ## run on all workers using the current parallel backend
  data("esGolub", package = "NMF")

  res0 <- NULL

  res_truth <- nmf(esGolub, rank = 3L, method = "brunet", nrun = 2L, .opt = "p", seed = 0xBEEF)

  for (strategy in test_strategies()) {
    message(sprintf("- plan('%s') ...", strategy))
    plan(strategy)

    ## The 'NMF' package assumes that the foreach adaptor is provided
    ## by a package of the same name, which is not always the case, e.g.
    ## the adapter name for %dofuture% is 'doFuture2'.
    ## https://github.com/renozao/NMF/issues/195
    for (flavor in c("%dopar%", "%dofuture%")[1]) {
      message(sprintf("- registerDoFuture('%s') ...", flavor))
      doFuture::registerDoFuture(flavor)

      res <- nmf(esGolub, rank = 3L, method = "brunet", nrun = 2L, .opt = "p",
                 seed = 0xBEEF, .pbackend = NULL)
      str(res)
      stopifnot(all.equal(res, res_truth, check.attributes = FALSE))
    
      message(sprintf("- registerDoFuture('%s') ... DONE", flavor))
    } ## for (flavor in c("%dopar%", "%dofuture%"))
    mprintf("- plan('%s') ... DONE", strategy)
  } ## for (strategy ...)
  
  message("*** NMF w / doFuture ... DONE")
}
