#Anuja Joshi
#IST 687: Dataframes Lab #2

#Assigning the value of dataset mtcars to variable mycars1
myCars <- mtcars

#Step 1: Which car has the best HP (hp stands for "horse power")  

#1)	Is higher or lower HP best?
#Higher HP is Best

#2)	Which car has the best hp?
a <- which.max(myCars$hp)
a

row.names(myCars)[a]

#Step 2: Explore mpg (mpg stands for "miles per gallon")  

# 3)What is the highest mpg?
max(myCars$mpg)

# 4)Which car has the highest mpg?
b <- which.max(myCars$mpg)
row.names(myCars)[b]

# 5)Create a sorted dataframe, based on mpg
Sorteddataframe <- myCars[order(myCars$mpg),]
View(Sorteddataframe)

# Step 3: Which car has the "best" combination of mpg and hp?
#6)	What logic did you use?
# dividing mpg to hp
myCars$newCol <- myCars$mpg / myCars$hp
myCars

#Sorting with Newcol
bestcombsorteddataframe<- myCars[order(myCars$newCol),]
View(bestcombsorteddataframe)

#7)Which Car
bestComb<- myCars[which.max(myCars$newCol),]
row.names.data.frame(bestComb)

#Step 4:  Which car has "best" car combination of mpg and hp, where mpg 
#and hp must be given equal weight?
#Define a variable that states how much mpg should count[range 0 to 1]
percentMPG<- 0.5

#first for each attribute scale between 0-1
mpgScaled <- (myCars$mpg - min(myCars$mpg))/(max(myCars$mpg)-min(myCars$mpg))
hpScaled <- (myCars$hp - min(myCars$hp))/(max(myCars$hp)-min(myCars$hp))

#Combine them
myCars$rating <- mpgScaled*percentMPG + hpScaled*(1.0-percentMPG)

###which is the highest
top<- which.max(myCars$rating)

##print out top
myCars[top,]

#Creat the sorted list(negative sign puts highest first)
myCars<- myCars[order(-myCars$rating),]

#list the top cars - top one is your best
head(myCars)