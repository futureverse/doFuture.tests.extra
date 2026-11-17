# Version (development version)

## Bug Fixes

 * `caret_examples()` failed with **caret** 7.1-0 for several reasons:

   - `example("avNNet")` is no longer in `\dontrun{}`. It relies on a
     conditionally assigned global that the **globals** package does
     not identify, so it is now skipped also when
     `run.dontrun = FALSE`.

   - Several examples, e.g. `example("train")`, now have all code in
     `\dontrun{}` inside `@examplesIf`, which gives "Error in
     srcrefs[[1L]] : subscript out of bounds" when called with
     `run.dontrun = FALSE`. These examples are now skipped.

   - `example("yardstickSummary")` attaches **yardstick**, which masks
     `caret::precision()` and other functions used by later examples.
     **yardstick** is now detached after each example.


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
 
