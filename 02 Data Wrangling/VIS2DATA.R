VIS2DF <- TX_CONT %>% group_by(PARTY) %>% summarise(AVE_CONT = mean(AMOUNT))
