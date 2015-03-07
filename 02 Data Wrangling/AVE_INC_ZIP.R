AVE_INC_ZIP <- TX_INCOME %>% group_by(ZIPCODE) %>% summarise(AverageIncome = mean(GROSS_INCOME),AverageWages = mean(WAGES), AverageTax = mean(TAXES), AverageIncomeTax = mean(INCOME_TAX))

head(AVE_INC_ZIP)
## This data set has average Income, wages, paid taxes & income tax for each zipcode
