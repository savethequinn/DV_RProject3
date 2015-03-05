ggplot(VIS2DF, aes(PARTY, AVE_CONT)) + geom_bar(stat="identity") + ggtitle('Contribution to Different Parties') + theme_solarized() + labs(x = "Party", y = "Contribution" ) 
