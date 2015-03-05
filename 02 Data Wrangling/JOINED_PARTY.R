TX_INCOME %>% group_by(ZIPCODE) %>% summarise (AVE_INCOME = mean(GROSS_INCOME), AVE_TAXES = mean(TAXES), AVE_I_TAX = mean(INCOME_TAX))
