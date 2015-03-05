# this plot is a faceted bar chart that explains the number of contributors to each party separated by gender
ggplot(fulljoin, aes(x=PARTY, y=n)) + geom_bar(stat = "identity", color = "#FF00CC") + ggtitle('Gender and Party') + theme_calc() + labs(x = "Party", y = "Number of Contributors" ) + facet_wrap(~GENDER)
