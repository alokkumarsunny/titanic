train.df = read.csv("Data/train.csv", stringsAsFactors = FALSE, header = T , na.strings = c(""))  
test.df = read.csv("Data/test.csv", stringsAsFactors = FALSE, header = T , na.strings = c(""))

head(train.df)

train.df[which(train.df$Age > 50), 'Survived']

sapply(train.df, function(x) sum(is.na(x)))
train.df$Cabin

barplot(table(factor(train.df$Cabin)))
barplot(table(factor(train.df$Pclass)))

show.df = train.df
train.df['CabinMissing'] =  sapply(train.df$Cabin, function(x) ifelse(is.na(x),"Missing","Avalable"))



barplot(table(factor(train.df$CabinMissing)), main = "Cabin Missing vs Avalable")

train.df['AgeMissing'] =  sapply(train.df$Age, function(x) ifelse(is.na(x),"Missing","Avalable"))
barplot(table(factor(train.df$AgeMissing)), main = "Age Missing vs Avalable")

boxplot(train.df$Age)

plot(train.df$Age , train.df$Survived)


res.aov2 <- aov(train.df$Survived ~ train.df$Age + train.df$Pclass, data = train.df)
summary(res.aov2)


mydata <- train.df[, c(1:8)]

na.omit(your.data.frame)

check = train.df

cormat <- round(cor(check[, c('Age','Fare', 'SibSp' , 'Parch' )]),2)
cormat

y = lm (check$Age ~ check$Fare , data = check)
summary(y)
plot(check$Fare , check$Age)

str(check)







