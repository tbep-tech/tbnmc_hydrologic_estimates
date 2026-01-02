library(tbeptools)

noaa_key <- Sys.getenv('NOAA_KEY')

# complete, doesn't work anymore -----------------------------------------

yrs <- seq(2012, 2025)

yrests <- anlz_hydroload(yrs, noaa_key, trace = T)

save(yrests, file = 'data/yrests.RData')

# add current year to existing -------------------------------------------

data(yrests)

toadd <- anlz_hydroload(2025, noaa_key, trace = T)

yrests <- dplyr::bind_rows(yrests, toadd)

save(yrests, file = here::here('data/yrests.RData'))
