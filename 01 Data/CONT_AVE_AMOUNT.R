CONT_AVE_ZIP <- TX_CONT %>% group_by(ZIPCODE, PARTY) %>% summarise(AVE_AMOUNT = mean(AMOUNT))
