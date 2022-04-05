## Function to load packages
install.custom <- function(package.name){
  if(!(package.name %in% row.names(installed.packages()))){
    install.packages(package.name)
  } else {
    print(paste0(package.name, " is already installed."))
  }
  library(package.name, character.only = T)
}

install.custom("purrr")
package_list <- c("broom"
                  , "ggplot2"
                  ,"tidyverse"
                  , "lubridate"
                  , "knitr"
                  , "janitor"
                  , "gridExtra"
                  , "sf"
                  , "dplyr"
                  , "ggpubr"
                  , "patchwork"
                  , "corrplot"
                  , "ggcorrplot"
                  , "matrixStats"
                  , "naniar"
                  , "devtools"
                  , "datapasta" # https://github.com/milesmcbain/datapasta
                  , "data.table"
                  , "dtplyr"
                  , "tidymodels"
                  , "xgboost"
                  , "vip"
                  , "GGally"
                  , "glmnet"
                  , "ggthemes"
                  , "tidytext"
                  , "rmarkdown"
                  , "openxlsx"
                  , "ROracle"
                  , "xlsx"
                  )

map(package_list, ~install.custom(.x))
# map(package_list, ~print(.x)) %>% write.csv("package_name.csv")
# map(package_list, ~packageVersion(.x)) %>% write.csv("package_ver.csv")
#########################################################################################################

## Function to place DF into a clipboard
copy_to_clip <- function(x,row.names=FALSE,col.names=TRUE,...) {
  write.table(x,"clipboard",sep="\t",row.names=row.names,col.names=col.names,...)
}
