# this plot is a faceted bar chart that explains the number of contributors to each party separated by gender
g <- ggplot(SEMI_JOIN, aes(x=PARTY, y=Count)) + geom_bar(stat = "identity", color = "#FF00CC") + ggtitle('Gender and Party') + theme_calc() + labs(x = "Party", y = "Number of Contributors" ) + facet_wrap(~GENDER)
