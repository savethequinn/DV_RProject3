TX_CONT <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from texas_fed"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_jc58247', PASS='orcl_jc58247', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))
TX_CONT <- transform(TX_CONT, ZIPCODE = as.integer(as.character(ZIPCODE)))
head(TX_CONT)
