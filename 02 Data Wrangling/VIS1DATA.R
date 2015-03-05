AVE_INC_ZIP <- TX_INCOME %>% group_by(ZIPCODE) %>% summarise(AVE_INCOME = mean(GROSS_INCOME), AVE_TAX = mean(TAXES))
