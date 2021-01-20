setHook("rstudio.sessionInit", function(newSession) {
  if (newSession && identical(getwd(), path.expand("~")))
  {
    message("Ouverture du projet utilitR")
    rstudioapi::openProject('~/utilitR')
  }
}, action = "append")

.libPaths(c("/usr/local/lib/R/site-library", "/usr/local/lib/R/library"))
