a<-download.file("http://finance.yahoo.com/q/hp?s=YHOO&a=03&b=12&c=2014&d=05&e=23&f=2014&g=d","tmp.csv",
                 quiet = TRUE)
b<-read.csv("tmp.csv")

url<-"http://ichart.finance.yahoo.com/table.csv?s=YHOO&a=02&b=12&c=2014&d=05&e=23&f=2014&g=d&ignore=.csv"
a<-read.csv(url)
x<-a[,1]
class(x)
n<-nrow(x)
xx<-as.numeric(difftime(as.Date(as.character(x)),as.Date(as.character(x[n])),units="days"))

