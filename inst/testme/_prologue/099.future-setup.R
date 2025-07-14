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
