# save data
source("01_data.R")

# load data
data <- get(load("data/data.RData"))

# do some predicting
library(xgboost)

## An 'xgboost' interface example:
bst <- xgboost(data = as.matrix(data), label = data$disp,
               max_depth = 2, eta = 1, nthread = 2, nrounds = 2)

# print the fit
print(bst)               
