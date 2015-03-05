VIS2DF <- TX_CONT %>% group_by(ZIPCODE,PARTY) %>% summarise(AVE_CONT = mean(AMOUNT)) %>% filter(ZIPCODE > 73301, ZIPCODE < 88589)
