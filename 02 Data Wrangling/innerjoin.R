INNERJOIN <- inner_join(TX_CONT, TX_INCOME, by = "ZIPCODE") %>% group_by (ID, ZIPCODE) %>% summarise(Amount = mean(AMOUNT), AverageIncome = mean(GROSS_INCOME), AverageWages = mean(WAGES), AverageTaxes = mean(TAXES), AverageIncomeTax = mean(INCOME_TAX))

head(INNERJOIN)
## This is a joined data set of contribution data set and income data set. it's been joined by zipcode and grouped by ID and ZIPCODE. It shows each ID's CONTRIBUTED AMOUNT and AVERAGE INCOME, WAGES, TAXES and INCOME TAXES