SEMI_JOIN <- semi_join(GENDER_COUNT, AVE_INC_ZIP, by = "ZIPCODE")
head(SEMI_JOIN)

## this data set has all the rows of GENDER_COUNT data set that has a match in AVE_INC_ZIP.