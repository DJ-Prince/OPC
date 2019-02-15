@echo off
"C:\Program Files\R\R-3.5.1\bin\x64\Rscript.exe" -e "library(knitr); knit('TestMoistureLogv2CleanData.Rmd')" 
"C:\Program Files\R\R-3.5.1\bin\x64\R.exe" CMD BATCH --vanilla --slave "C:\Users\DJ\Desktop\OPC\MoistureAnalysis R files\TestMoistureLogv2CleanData.R" "C:\Users\DJ\Desktop\OPC\MoistureAnalysis R files\TestMoistureLogv2CleanData.Rout"


@echo off
Rscript -e "require ('knitr'); knit ('TestMoistureLogv2CleanData.Rmd')" 
Rscript -e "render ('TestMoistureLogv2CleanData.md')"

blat -to dj.prince@ohpatientschoice.com -server smtp.example.com -f batch_script@example.com -subject "subject" -body "body"