library(tbeptools)

noaa_key <- Sys.getenv('NOAA_KEY')

yrs <- seq(2012, 2020)

yrests <- anlz_hydroload(yrs, noaa_key, trace = T)

save(yrests, file = 'data/yrests.RData')
