#Anuja Joshi

#creating vector
height <- c(59,60,61,58,67,72,70)
weight <- c(150,140,180,220,160,140,130)

# Defining a variable:
a <- 150

#Step 1- Calculating means


# Calculate average height
mean(height)
# Calculate average weight
mean(weight)

#Calculate the length of the vector 'height'
length(height)
#Calculate the length of the vector 'weight'
length(weight)

#Calculate Sum of heights
sum(height)

# Calculate average height and weight, by dividing the sum by the length of the vector 
sum(height)/length(height)
sum(weight)/length(weight)


#Step 2- Using max/min functions

#Compute the max height, store the result in 'maxH'
maxH <- max(height)
#Compute the min weight, store the results in 'minW'
minW <- min(weight)

#Step 3- Vector Math

#Create a new vector, which is the weight + 5 (every person gained 5 pounds)
newweight <- weight + 5
#Compute the weight/height for each person, using the new weight just created
newweight/height

#Step 4- Using Conditional if statements

#code to test if max height is greater than 60 (output "yes" or "no")
if (maxH > 60) print("yes") else print("No")
#code to if min weight is greater than the variable 'a' (output "yes" or "no")
if (minW > a) print("yes") else print ("No")
