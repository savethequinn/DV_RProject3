# this function melts the dataframes so that there can be multiple y values per x value
MELTEDDF <- melt(OUTERJOIN, id = "PARTY", measure = c("AverageIncome", "AverageWages", "AverageTax", "AverageIncomeTax"))
# the first plot is the average amounts from the TX_INCOME plot in relation to the party of the contributors 
ggplot(MELTEDDF, aes(PARTY, value, color = variable)) + geom_bar(stat="identity") + facet_wrap(~variable) + ggtitle('Averages Fiscal Variables Related to Party') + theme_calc() + labs(x = "Party", y = "Average" ) 
# this second plot is the average contribution based on the party identity of the contributor
ggplot(OUTERJOIN, aes(PARTY, AverageContribution, color = PARTY)) + geom_bar(stat="identity") + ggtitle('Averages Contribution Related to Party') + theme_calc() + labs(x = "Party", y = "Average Contribution" ) 
