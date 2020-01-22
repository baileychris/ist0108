
# STEP 1
# Saving myCars data frame from mtcars
myCars = mtcars


# Order the dataframe based on HP with the highest 
#   HP at the top and save as hpDescend


hpDescend = myCars[order(myCars$hp, decreasing = TRUE),]

#Pull from hpDescend the top value of the first row
maxHp = hpDescend['hp'][1,]
maxHp

#Pull from hpDescend the first row name (Car name)
maxHpCar = rownames(hpDescend[1,])
maxHpCar

# STEP 2
#Order the dataframe based on MPG with
#  the highest MPG at the top

mpgDescend = myCars[order(myCars$mpg, decreasing = TRUE),]


#Pull from mpgDescend the  top value of the first row
maxMPG = mpgDescend['mpg'][1,]
maxMPG

#Pull from mpgDescend the first row name (Car name)
maxMPGCar = rownames(mpgDescend[1,])
maxMPGCar

#STEP 3

# To determine the best combination of mpg and hp I decided
# to sum together mpg and hp. I will then order it by the 
# highest value of the new hypbrid combination and select
# its maximum value

# Make the column composed of the sums of mpg and hp

hybridDataframe = myCars['mpg'] + myCars['hp']
hybridDataframe

#Order the dataframe based on the combination value with
#  the highest score at the top. It has retained the column name MPG
maxCombo = max(hybridDataframe)

hybridDesecend <- hybridDataframe[order(hybridDataframe$mpg, decreasing = TRUE), , drop = FALSE]
hybridDesecend

maxComboCar = rownames(hybridDesecend[1,, drop = FALSE])
maxComboCar
