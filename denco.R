#dplyr

sales1=read.csv('./data/denco.csv')
sales1

sales2=read.csv(file.choose())
sales2

sales=sales1
head(sales)
str(sales)
class(sales)
dim(sales)
summary(sales)
names(sales)
?unique

#customer loyal and more revenue, product and its margin

unique(sales$custname)
length(unique(sales$custname))
length(unique(sales$region))

library(dplyr)

sales %>% group_by(custname)  %>%  summarize(revenue = sum(revenue))  %>%  arrange(desc(revenue))
#TRIUMPH INSULATION gave maximum revenue

library(dplyr)
sales  %>% dplyr::count(custname, sort = TRUE)  %>% head(n=5)

sales  %>% dplyr::group_by(custname)  %>% dplyr::summarise(n=n())  %>% dplyr::arrange(desc(n))  %>% head(n=5)

sales  %>% dplyr::group_by(partnum)  %>% dplyr::summarise(totalmargin=sum(margin))  %>% dplyr::arrange(desc(totalmargin))  %>% head(n)

df4=sales  %>% dplyr::group_by(region)  %>% dplyr::summarise(revenue=sum(revenue))  %>% dplyr::arrange(desc(revenue))

pie(x=df4$revenue)

barplot(df4$revenue)

sales %>% filter(revenue >= 7771000)  %>% select(custname, revenue)

