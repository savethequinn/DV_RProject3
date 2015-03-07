OUTERJOIN <- left_join(GENDER_COUNT, AVE_INC_ZIP, by = "ZIPCODE") %>% filter(AverageContribution>0, AverageWages>0, AverageIncome>0, AverageTax>0, AverageIncomeTax>0) %>% group_by(GENDER, PARTY) %>% summarise_each(funs(mean)) %>% select (PARTY, GENDER, AverageContribution, AverageWages, AverageIncome, AverageTax, AverageIncomeTax)
head(OUTERJOIN)

## This data set joined GENDER_COUNT data set & AVE_INC_ZIP data set by zipcode. Then grouped the joined data by GENDER & PARTY and took the average of each columns depending on GENDER & PARTY