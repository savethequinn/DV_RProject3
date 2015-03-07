# this plot is a point plot that shows the relationship between Contribution amounts from each contributor and the average taxes in their zipcode

g <- ggplot(INNERJOIN, aes(AverageTaxes, Amount)) + geom_point(size = 1.5, colour="#226F45") + ggtitle('Contributions vs. Average Taxes') + theme_calc() + labs(x = "Average Taxes", y = "Contribution" ) + scale_y_continuous(limits=c(0,275000))
