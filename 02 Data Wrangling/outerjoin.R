outerjoin <- TX_CONT %>% group_by(ZIPCODE, GENDER, PARTY) %>% summarise(AverageContribution = mean(AMOUNT)) %>% filter(ZIPCODE >= 73301, ZIPCODE <= 88589)
temp <- TX_INCOME %>% group_by(ZIPCODE) %>% summarise(AverageIncome = mean(GROSS_INCOME), AverageWages = mean(WAGES), AverageTax = mean(TAXES), AverageIncomeTax = mean(INCOME_TAX))
outerjoin <- left_join(outerjoin, temp, by = "ZIPCODE") %>% filter(AverageContribution>0, AverageWages>0, AverageIncome>0, AverageTax>0, AverageIncomeTax>0) %>% group_by(GENDER, PARTY) %>% summarise_each(funs(mean))

