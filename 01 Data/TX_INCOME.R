TX_INCOME <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from TEXAS_INCOME"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_jc58247', PASS='orcl_jc58247', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))
head(TX_INCOME)
