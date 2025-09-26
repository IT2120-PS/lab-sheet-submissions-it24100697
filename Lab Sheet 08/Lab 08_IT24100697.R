setwd("C:\\Users\\kamsh\\OneDrive\\Desktop\\Lab  08_IT24100697")

data<-read.table("Data - Lab 8.txt",header=TRUE)
fix(data)
attach(data)

#Q1
popmn<- mean(Nicotine)
popmn
popvar<-var(Nicotine)
popvar

#Q2
samples<-c()
n<-c()

for(i in 1:30){
  s<-sample(Nicotine,5,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)=n
s
n
samples


s.means<-apply(samples,2,mean)
s.means

s.vars<-apply(samples,2,var)
s.vars


#Q3
samplemean<-mean(s.means)
samplemean

samplevars<-var(s.means)
samplevars

#Q4
popmn
samplemean

#Q5
truevar=popvar/5
samplevars


#Exercise
data<- read.table("Exercise - LaptopsWeights.txt" , header = TRUE)
fix(data)
attach(data)

#Q1
#Q1
pop_mean <- mean(Weight.kg.)
pop_mean
pop_sd <- sd(Weight.kg.)
pop_sd 

#Q2
samples <- c()
sample_names <- c()


for(i in 1:25) {
  s <- sample(Weight.kg., 6, replace=TRUE)
  samples <- cbind(samples, s)
  sample_names <- c(sample_names, paste("s", i))
}

colnames(samples) <- sample_names
s
samples
sample_names


#Q3
sample_means <- apply(samples, 2, mean)
sample_means
sample_sds <- apply(samples, 2, sd)
sample_sds

mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)


pop_mean
pop_sd
mean_of_sample_means
sd_of_sample_means