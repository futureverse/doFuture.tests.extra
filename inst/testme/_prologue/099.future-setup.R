## Use sequential futures by default
oplan <- local({
  oopts <- options(future.debug = FALSE)
  on.exit(options(oopts))
  future::plan(future::sequential)
})

## Record any connections *after* the first future has been created,
## because the default plan might be a PSOCK cluster
future::value(future::future(NULL))

oldDoPar <- doFuture::registerDoFuture()

supportedFlavors <- function(exclude = NULL) {
  flavors <- getOption("doFuture.tests.extra.flavors")
  if (is.null(flavors)) {
    flavors <- Sys.getenv("R_DOFUTURE_TESTS_EXTRA_FLAVORS", NA_character_)
    if (is.na(flavors)) {
      flavors <- c("%dopar%", "%dofuture%")
    } else {
      flavors <- unlist(strsplit(flavors, split = ","))
    }
  }
  flavors <- unique(setdiff(flavors, exclude))
}
