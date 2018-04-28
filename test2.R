# data structure  
Airpassengers
plot(women)
?mean
?filter
x <- c(0:10, 50)
x[x==10]
#x[c(seq(1,12,2))]
?seq
xm <- mean(x)
c(xm, mean(x, trim = 0.10))

y= 0:100
y
mean(y)
y[67]

#vectors----
v1= c(1,2,3,4,5)
class(v1)
v1[v1==4]=7
v1

v2=c('a','b','c','d','e')
v2
class(v2)

v3=c(TRUE,FALSE,T,F)
class(v3)

set.seed(100)
v7=rnorm(100, mean=60, sd=15)
v7
?rnorm
mean(v7)
sd(v7)
hist(v7)
hist(v7,breaks=15,col=1:15)
hist(v7, freq=F , col='yellow',main = 'lol', sub = 'hogaya', ylim = c(0,0.05), xlim = c(0,110))
lines(density(v7), col='red',lty=4,lwd=3)
#title(main = 'chutzpa', sub = 'hogaya')


?rnorm
?hist




#Matrix----
#bycol is default an if you want byrow, byrow=T

length(100:123)
m1 =matrix(100:123,ncol=6)
m1
m1[1,]
m1[1:2,]
m1[,c(1,4)]
m1[c(2,4),c(1,4)]
colSums(m1)
rowMeans(m1)
?matrix


#Array----
length(100:123)
(a1=array(100:123,dim=c(4,3,2)))
(location=paste('loc',1:4,sep='-'))
(product=paste('pro',1:3,sep='-'))
(company=paste('com',1:2,sep='-'))

dimnames(a1)=list(location,product,company)
a1
?array
apply(a1,1,sum)
apply(a1,2,sum)
apply(a1,3,sum)

apply(a1,c(1,3),sum)

#dimention row,coloum,matrix



#dataframe----
(rollno= 1:30)
(sname= paste ('student',1:30,sep=''))
(gender=sample(c('M','F'), size=30,replace=T,prob=c(.7,.3)))
(marks=floor(runif(30,50,100)))#runif (student,min limit,max limit) uniform distribution
df1=data.frame(rollno,sname,gender,marks)
df1
head(df1)
head(df1,3)
str(df1)
class(df1)
summary(df1)
df1$rollno
df1[1:10,c(2,4)]
df1[marks>50,]
df1[marks>50&gender=='F',c(1,2)]
names(df1)
dim(df1)
aggregate(df1$marks, by=list(df1$gender),FUN=mean)
(df2=aggregate(marks~gender,data=df1,FUN=max))
pie(x=df2$marks)






#list----
v1=1:30
(m1=matrix(1:24,nrow=6))
(a1=array(1:24,dim=c(4,3,2)))
(df1=data.frame(rollno=c(1:5),sname=c(paste('s',1:5,sep='-'))))
L1=list(v1,m1,a1,df1)
L1
L1[1];L1[2];L1[3];L1[4];
(v2= c('a','b'))
L2=list(v2,L1)
L2



#factors----
(grades = sample(c('a','b','c','d'), size=30, replace=T,prob=c(.3,.2,.4,.1) ))
table(grades)
gradesF= factor(grades)
?factor
gradesF
gradesF= factor(grades, ordered=T)
gradesF
gradesF= factor(grades, ordered=T, levels = c('d','c','b','a'))
gradesF


#dataframe

rollno = 1:3
sname =c('s1','s2','s2')
(df= data.frame(rollno,sname))

(rollno=paste('s-', 1:30))
(name= paste0 ('student',1:30,'-','xyz'))
(gender=sample(c('M','F'), size=30,replace=T,prob=c(.7,.3)))
table(gender)
(Age=floor(runif(30,15,30)))#runif (student,min limit,max limit) uniform distribution
(course=sample(c('Btech','Mtech','Phd'), size=30,replace=T,prob=c(.4,.3,.3)))
pie(table(course))
(marks=floor(runif(30,30,100)))#runif (student,min limit,max limit) uniform distribution and use histogram and ogive curve for analysis
hist(marks)
hist(marks,freq=F)
lines(density(marks))
(married=sample(c('True','False'), size=30,replace=T,prob=c(.7,.3)))
table(married)
df3=data.frame(rollno,name,gender,Age,course,marks,married)
df3


#export to csv
write.csv(df3,'./data/aamir.csv',row.names = F)











