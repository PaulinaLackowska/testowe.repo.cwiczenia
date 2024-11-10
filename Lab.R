path <- "C:/Users/pauli/OneDrive/Pulpit/Mikroekonometria"
setwd(path)

data <- read.csv("aug24pub.csv")
data[data ==-1] <- NA
View (data)
data <- data[, colSums(is.na(data)) != nrow(data)]
names(data)
table (data$prempnot)
data$prempnot <- ifelse(data$prempnot == 2, 0, ifelse(data$prempnot %in% c(3, 4), NA, data$prempnot))
view
View(table)
table (data$prtage)
data$prtage
table(data$pesex)
table(data$pemaritl)
table(data$prdisflg)
data$prdisflg<-ifelse(is.na(data$prdisflg),NA,ifelse(data$prdisflg==1,1,0))
table(data$prdisflg)
table(data$penatvty)
data$penatvty<-ifelse(is.na(data$penatvty),NA,
                      ifelse(data$penatvty== 57, 1, 0))

table(data$prcitshp)

saveRDS(censusAugust <- data, "censusAugust.rds")
