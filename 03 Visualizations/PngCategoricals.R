categorical <- function(df, i) {
  names(df) <- c("i", "n")
  ggplot(df, aes(x=i, y=n)) + geom_point() + labs(title = paste("NUMBER of CONTRIBUTORS by", i)) + labs(x = i, y = "Number of Contributors") + theme(plot.title=element_text(size=20, face="bold", vjust=1, family="Bauhaus 93"))
}

categoricals <- eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from texas_fed"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_jc58247', PASS='orcl_jc58247', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'True'), verbose = TRUE), 1, 2^31-1)))

l <- list()
for (i in names(TX_CONT)) { 
  if (i %in% categoricals[[1]]) {
    r <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select \\\""i"\\\", count(*) n from texas_fed group by \\\""i"\\\" "'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_jc58247', PASS='orcl_jc58247', MODE='native_mode',MODEL='model',returnDimensions = 'False',returnFor = 'JSON', i=i),verbose = TRUE)))
    p <- categorical(r,i)
    print(p) 
    l[[i]] <- p
  }
}

png("Categoricals.png", width = 15, height = 10, units = "in", res = 70)
grid.newpage()
pushViewport(viewport(layout=grid.layout(1,4)))
print(l[[1]],vp=viewport(layout.pos.row=1,layout.pos.col=1:2))
print(l[[2]],vp=viewport(layout.pos.row=1,layout.pos.col=3:4))

dev.off()

quantitative <- function(df, x) {
  names(df) <- c("x")
  ggplot(df, aes(x=x)) + geom_histogram() + labs(title = paste("NUMBER of CONTRIBUTORS by", i)) + labs(x = i) + theme(plot.title=element_text(size=15, face="bold", vjust=1, family = "Bauhaus 93"))
}
l1 <- list()
for (i in names(TX_CONT)) {   
  if (i %in% categoricals[[2]]) {
    r1 <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select \\\""i"\\\", count(*) n from texas_fed group by \\\""i"\\\" "'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_jc58247', PASS='orcl_jc58247', MODE='native_mode',MODEL='model',returnDimensions = 'False',returnFor = 'JSON', i=i),verbose = TRUE)))
    q <- quantitative(r1,i)
    print(q) 
    l1[[i]] <- q
  }
}
png("Quantitative.png", width = 25, height = 10, units = "in", res = 72)
grid.newpage()
pushViewport(viewport(layout=grid.layout(1,6)))
print(l1[[1]],vp=viewport(layout.pos.row=1,layout.pos.col=1:2))
print(l1[[2]],vp=viewport(layout.pos.row=1,layout.pos.col=3:4))
print(l1[[3]],vp=viewport(layout.pos.row=1,layout.pos.col=5:6))

dev.off()