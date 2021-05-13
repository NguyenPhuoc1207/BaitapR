setwd("C:/Users/DELL/Desktop/PHUOC")
#bai1
answer <- 0
for (j in 3:5) {answer <- j+answer}
answer
answer <- 10
for (j in 3:5) {answer <- j+answer}
answer
answer <- 10
for (j in 3:5) {answer <- j*answer}
answer
#bai2
answer <- 10
for (j in 3:5) {answer <- j*answer}
prod(3:5,10)
help("prod")
#bài 3
answer <-0
for (j in 1:100){answer <- j+answer}
answer
sum(1:100)
#bài 4
answer <-10
for (j in 1:50){answer <- j*answer}
answer
prod(1:50, 10)
#bài 5
r <- 3:20
thetich <- (4*r*r*r)/3
dulieu <- data.frame(r=r, thetich=thetich )
print(dulieu)
#bai 6
help(sapply)
tinting <- dulieu
sapply(tinting, factor)
sapply(tinting[, 1:2], levels)
sapply(tinting[, 1:2], ordered)

