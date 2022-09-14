# loading data
data <- get(data(mtcars))

# select inly two columns
data <- data[, c("disp", "hp")]

# save the data
save(data,file="data/data.RData")
