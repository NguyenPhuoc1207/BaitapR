library(ISwR) 
igfdata <- juul
head(igfdata)
igfdata
View(igfdata)
names(igfdata)
age <- igfdata$age
menarche <- igfdata$menarche
sex <- igfdata$sex
igf1 <- igfdata$igf1
tanner <- igfdata$tanner
testvol <- igfdata$testvol
summary(igfdata)
# tinh gia tri trung binh
mean(age)
by(igfdata, sex, summary)
op <- par(mfrow=c(2,3))
hist (age)
hist (menarche)
hist (sex)
hist (igf1)
hist(tanner)
hist(testvol)
#thong ke mo ta theo tung nhom
tapply(igf1, list(sex), mean)
#kiem dinh t.test
t.test(age, mu=30)
# kiem dinh t.test 2 mau
t.test(igf1~ sex)
#kiem dinh wilcoxon cho hai mau
shapiro.test(igf1)

wilcox.test(igf1 ~ sex)

#kiem dinh cho cac bien so theo cap
# nh???p d??? ki???n
before <- c(180, 140, 160, 160, 220, 185, 145, 160, 160, 170)
after <- c(170, 145, 145, 125, 205, 185, 150, 150, 145, 155)

bp <- data.frame(before, after)
# ki???m d???nh t
t.test(before, after, paired=TRUE)

t.test(before, after)
# Kiem dinh Wilcoxon cho cac bien so theo c???p (wilcox.test) 

wilcox.test(before, after, paired=FALSE)
# Tan so (frequency)
table(sex)
table(tanner)
freq <- table(sex, tanner)
freq
# dung ham margin.table de xem ket qua
margin.table(freq, 1)
margin.table(freq, 2)
# tinh phan tram bang ham prop.table
prop.table(freq, 1)

prop.table(freq, 2)
# tinh phan tram cho toan bo bang
freq/sum(freq)

# Kiem dinh ti le (proportion test, prop.test, binom.test)
prop.test(621, 713, 0.50)

# kiem dinh nhi phan
binom.test(621, 713, 0.50)
# so sanh hai ty le (prop.test, binom.test)

fracture <- c(7, 20)
 total <- c(100, 110)
 prop.test(fracture, total)

#so sanh nhieu ti le (prop.test, chisq.test)
table(sex, tanner)
female <- c(291, 55, 34, 41, 124)
total <- c(515, 103, 72, 81, 308)
prop.test(female, total)

# kiem dinh binh phuong(Chi squared test, chisq.test)

chisq.test(sex, tanner)

#Kiem dinh Fisher (Fisher's exact test, fisher.test)

fisher.test(sex, tanner)

#phan tich hoi quy tuyen tinh
age <- c(46,20,52,30,57,25,28,36,22,43,57,33,22,63,40,48,28,49)
bmi <-c(25.4,20.6,26.2,22.6,25.4,23.1,22.7,24.9,19.8,25.3,23.2,
          21.8,20.9,26.7,26.4,21.2,21.2,22.8)
chol <- c(3.5,1.9,4.0,2.6,4.5,3.0,2.9,3.8,2.1,3.8,4.1,3.0,
            2.5,4.6,3.2, 4.2,2.3,4.0)
data <- data.frame(age, bmi, chol)
plot(chol ~ age, pch=16)

