# Version (development version)

## Bug Fixes

 * `caret_examples()` would fail on `example("avNNet")` with **caret**
   7.1-0, because that example is no longer in `\dontrun{}`. It is now
   skipped also when `run.dontrun = FALSE`, because the example relies
   on a conditionally assigned global that is not identified by the
   **globals** package.


# Version 0.2.0 (2025-07-15)

## New Features

 * Add tests with `registerDoFuture("%dofuture%")`.
 
 * Add tests with **future.mirai**.
 
 * No longer skipping some tests with **future.callr**.


# Version 0.1.1 (2023-12-11)

## Significant Changes

 * The archived legacy package **maptools** is no longer suggested.
 

# Version 0.1.0 (2022-12-20)

## Significant Changes

 * First release.
 
