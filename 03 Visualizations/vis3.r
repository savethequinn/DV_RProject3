names(JOINED_PARTY) <- c("ZIPCODE", "PARTY", "AVERAGE AMOUNT", "AVERAGE INCOME", "AVERAGE WAGES", "AVERAGE TAXES", "AVERAGE INCOME TAX")
MELTEDDF <- melt(JOINED_PARTY, id = "ZIPCODE", measure = c("AVERAGE INCOME", "AVERAGE WAGES", "AVERAGE TAXES", "AVERAGE INCOME TAX"))

ggplot(MELTEDDF, aes(ZIPCODE, value, color = variable)) + geom_point() + facet_wrap(~variable) + ggtitle('Average Contribution to Different Parties') + theme_solarized() + labs(x = "ZipCode", y = "Average" ) 
