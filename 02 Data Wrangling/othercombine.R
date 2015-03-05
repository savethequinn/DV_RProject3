fulljoin <- TX_CONT %>% group_by(ZIPCODE, GENDER, PARTY) %>% summarise(n = n()) %>% filter(ZIPCODE >= 73301, ZIPCODE <= 88589)
temp <- TX_INCOME %>% group_by(ZIPCODE) %>% summarise(AverageIncome = mean(GROSS_INCOME), AverageWages = mean(WAGES), AverageTax = mean(TAXES), AverageIncomeTax = mean(INCOME_TAX))
fulljoin <- semi_join(fulljoin, temp, by = "ZIPCODE")
