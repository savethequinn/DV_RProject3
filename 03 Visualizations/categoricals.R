categoricals <- eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from texas_fed"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_jc58247', PASS='orcl_jc58247', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'True'), verbose = TRUE), 1, 2^31-1)))

png("categoricals.png", width = 15, height = 10, units = "in", res = 72)
grid.newpage()
pushViewport(viewport(layout=grid.layout(2,4)))
print(categoricals[[1]],vp=viewport(layout.pos.row=1,layout.pos.col=1:2))
print(categoricals[[2]],vp=viewport(layout.pos.row=1,layout.pos.col=3:4))

dev.off()
