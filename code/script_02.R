

# # setup -----------------------------------------------------------------

rm(list = ls())



# # exercise 1-vector -----------------------------------------------------

# Numeric vector 1 function
numeric_vector1 <- c(1.1, 2.2, 3.3)

# 2nd function 
numeric_vector2 <- seq(from = 1, to = 6, by = 1)

#3rd numeric vector 

numeric_vector3 <-rnorm(20)


# Character vector 1
character_vector1 <- c("rain", "mountain", "mouse")

# Character vector 2
character_vector2 <- rep("biostat", times = 6)

character_vector3 <- letters[1:20]

set.seed(1)
x <- rnorm(100)






# exercise 2-matrix -------------------------------------------------------


nm1 <- matrix(1:9, nrow = 4, ncol = 4)
nm1


nm2 <- matrix(rep(1:4, times = 4), 
              nrow = 4, 
              ncol = 4, 
              byrow = TRUE)
nm2



cm1 <- matrix(rep(letters[1:4], each = 4), 
              nrow = 4, 
              ncol = 4)
cm1


cm2 <- matrix(rep(letters[1:4], times = 4), 
              nrow = 4, 
              ncol = 4, 
              byrow = TRUE)
cm2



# Set seed and generate the matrix
set.seed(1)
x <- matrix(rnorm(100), nrow = 10, ncol = 10)

#indice

indices <- which(x > 2.0, arr.ind = TRUE)
indices

# Identify element values of x that are greater than 2.0 and calculate the mean
v1 <- x[x > 2.0]
v1

mean_v<- mean(v1)
mean_v





# exercise 3- data frame  -------------------------------------------------


# Creating the data frame
df <- data.frame(
  x = as.character(letters[1:10]),  
  y = rnorm(10),                    
  z = rpois(10, lambda = 5)         
)

df

#structure of the data frame 
str(df)



set.seed(1)
x <- rnorm(100, mean = 10, sd = 3)
y <- rpois(100, lambda = 10)
z <- rep(c("VA", "NC"), 50)
df0 <- data.frame(temperature = x, abundance = y, state = z)


#calculating temp for VA

va <- aggregate(cbind(temperature, abundance) ~ state, 
                      data = df0, 
                      subset = (state == "VA"), 
                      FUN = mean)
va

#calculating tem for NC

nc <- aggregate(cbind(temperature, abundance) ~ state, 
                data = df0, 
                subset = (state == "NC"), 
                FUN = mean)
nc
