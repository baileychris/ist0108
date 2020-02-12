## Homework 4

## Step 1

## Summarizing vector

printVecInfo = function(distribution){
  meanDist = mean(distribution)
  medDist = median(distribution)
  maxDist = max(distribution)
  minDist = min(distribution)
  stdDist = sd(distribution)
  quant05 = quantile(distribution, .05)
  quant95 = quantile(distribution, .95)
  skew = moments::skewness(distribution)
  values = c(meanDist, medDist, maxDist, minDist, stdDist, quant05, quant95, skew)
  return(print(values))
}

test = c(1,2,3,4,5,6,7,8,9,10,50)

printVecInfo(test)

## Step 2

## Intialize the jar then repeat it 50 times to populate it

i_jar <- c('blue','red')

jar <- rep(i_jar,50)

## Verify that there are 50 red samples
length(which(jar == 'red'))

Xsamp <- 10

samp <- sample(jar,Xsamp, replace = TRUE)

## Return the percentage red samples

red_per <- length(which(samp == 'red' ))/Xsamp
red_per


## Replicate it 20 times

rep_samp <- replicate(20, length(which((sample(jar,Xsamp, replace = TRUE)) == 'red'))/Xsamp)

## Print the statistics
printVecInfo(rep_samp)

## Histogram it
hist(rep_samp)

## Sample the Jar 100 times

Xsamp <-100

rep_samp100 <- replicate(20, length(which((sample(jar,Xsamp, replace = TRUE)) == 'red'))/Xsamp)

printVecInfo(rep_samp100)

hist(rep_samp100)

## Now replicated 100 times

rep_samp100x100 <- replicate(100, length(which((sample(jar,Xsamp, replace = TRUE)) == 'red'))/Xsamp)

printVecInfo(rep_samp100x100)

hist(rep_samp100x100)

## STEP 3

## storing airquality as a temp set

atemp <- airquality

## Remove all the NA
atempClean <- atemp[rowSums(is.na(atemp)) <= 0,]

## For Ozone
printVecInfo(atempClean$Ozone)
hist(atempClean$Ozone)

## For Wind
printVecInfo(atempClean$Wind)
hist(atempClean$Wind)

## For Temp
printVecInfo(atempClean$Temp)
hist(atempClean$Temp)
