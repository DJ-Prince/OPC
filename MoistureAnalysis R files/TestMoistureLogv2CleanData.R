library(knitr)
library(rmarkdown)
knit("TestMoistureLogv2CleanData.Rmd")

# render the generated markdown file.
render("TestMoistureLogv2CleanData.md")

Sys.sleep(3)