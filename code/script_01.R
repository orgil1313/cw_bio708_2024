# Biostat I testing code

c(1,2)


## produce 100 random numbers that follows a normal distribution
x <- rnorm(n=100, mean = 0, sd = 1)

## estimate mean
mean(x)

## estimate SD
sd(x)



# practice  ---------------------------------------------------------------

#ex.1a manually create a vector using c()
x <- c(1,3,4,8)
x

#ex.1b character
x <- c("a", "b", "c")
x

#ex.1c logical
x <- c(TRUE, FALSE, FALSE)
x


#ex.2 sequence of numbers
x <- 1:5
x

#ex.3a replicate same numbers or characters
x <- rep(2, 5) # replicate 2 five times
x


#ex.3b replicate same numbers or characters
x <- rep("a", 5) # replicate "a" five times
x


#ex.4a use seq() function
x <- seq(1, 5, by = 1)
x


#ex.4b use seq() function
x <- seq(1, 5, by = 0.1)
x

x <- seq(1, 5, lenght = 7)
x

# numeric vector practice  ------------------------------------------------

x <- c(1.2, 3.1, 4.0, 8.2)
x

class(x)

typeof(x)

length(x)

sum(x)

mean(x)

#element ID

x <- c(2,2,3,2,5)
x[2] # access element #2



##matrix 

#ex.1 cbind: combine objects by column
x <- cbind(c(1,2,3), c(4,5,6))

#ex.2 rbind: combine objects by row
x <- rbind(c(1,2,3), c(4,5,6))

#ex.3 matrix: specify elements and the number of rows (nrow) and columns (ncol)
x <- matrix(1:9, nrow = 3, ncol = 3)

#some func

dim(x)
rowSums(x)
colSums(x)

#access

x[1,2]
x[2,]
x[c(1,3)]


##integer matrix

x <- matrix(1:9, nrow = 3, ncol = 3)

class(x)
typeof(x)
dim(x)



#creating data frame

x <- c("Pristine", "Pristine", "Disturbed", "Disturbed", "Pristine") # Lake type
y <- c(1.2, 2.2, 10.9, 50.0, 3.0) # TSS: total suspended solids (mg/L)
df0 <- data.frame(LakeType = x, TSS = y) # x is named as "LakeType" while y is named as "TSS"


colnames(df0) # call column names
df0$LakeType # access LakeType
df0$TSS # access TSS

df0[,1] # access column #1
df0[1,] # access row #1

