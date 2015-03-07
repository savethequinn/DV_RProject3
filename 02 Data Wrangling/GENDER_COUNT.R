GENDER_COUNT <- TX_CONT %>% group_by(ZIPCODE, GENDER, PARTY) %>% summarise(Count = n(), AverageContribution = mean(AMOUNT)) %>% filter(ZIPCODE >= 73301, ZIPCODE <= 88589)

head(GENDER_COUNT)
## this data set has the AVERAGE AMOUNT contributed by the NUMBER of people of different GENDER to different PARTIES for each ZIPCODE