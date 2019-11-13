
library(xgboost)


modelo_simple <- xgb.load('modelo_banc_cendeu')


plumber::plumb(file='modelo.R')$run(port=8080)

