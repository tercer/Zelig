# THIS FILE CONTAINS PACKAGE HOOKS FOR ZELIG
# ------------------------------------------

# @...: nothing
# spill-over: output information about Zelig
.onAttach <- function(...) {

  package.name <- "Zelig"
  mylib <- dirname(system.file(package = package.name))
  ver <- packageDescription(package.name, lib.loc = mylib)$Version
  build.date <- packageDescription(package.name, lib.loc = mylib)$Date


  # build info
  packageStartupMessage("ZELIG (Versions ", ver, ", built: ", build.date, ")")

  # cat, for readability of the message text

  # Zelig info - do not exceed 80char/line
  packageStartupMessage("
+----------------------------------------------------------------+
|  Please refer to http://gking.harvard.edu/zelig for full       |
|  documentation or help.zelig() for help with commands and      |
|  models support by Zelig.                                      |
|                                                                |
|  Zelig project citations:                                      |
|    Kosuke Imai, Gary King, and Olivia Lau.  (2009).            |
|    ``Zelig: Everyone's Statistical Software,''                 |
|    http://gking.harvard.edu/zelig                              |
|   and                                                          |
|    Kosuke Imai, Gary King, and Olivia Lau. (2008).             |
|    ``Toward A Common Framework for Statistical Analysis        |
|    and Development,'' Journal of Computational and             |
|    Graphical Statistics, Vol. 17, No. 4 (December)             |
|    pp. 892-913.                                                |
|                                                                |
|   To cite individual Zelig models, please use the citation     |
|   format printed with each model run and in the documentation. |
+----------------------------------------------------------------+

")

  # Set class globally when the package is attached
  setClass("zelig", representation(), where=.GlobalEnv)
  setClass("MI", representation(), where=.GlobalEnv)
}

