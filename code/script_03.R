
# # setup -----------------------------------------------------------------

## install.packages("tidyverse")
library(tidyverse)

iris <- as_tibble(iris)
iris

 


# # Row manipulation  -----------------------------------------------------



# single match "=="
filter(iris, Species == "virginica")


# multiple match "%in%"
filter(iris, Species %in% c("virginica", "versicolor"))

# except "!="
filter(iris, Species != "virginica")

# except multiple "!(x %in% c("a", "b"))
filter(iris, !(Species %in% c("virginica", "versicolor")))

# greater than ">"
filter(iris, Sepal.Length > 5)

# equal & greater than ">="
filter(iris, Sepal.Length >= 5)

# less than "<"
filter(iris, Sepal.Length < 5)

# equal & less than "<="
filter(iris, Sepal.Length <= 5)




# arrange in an ascending order
arrange(iris, Sepal.Length)

# arrange in an descending order
arrange(iris, desc(Sepal.Length))



# # Column manipulation  --------------------------------------------------


# select one column
select(iris, Sepal.Length)

# select multiple columns
select(iris, c(Sepal.Length, Sepal.Width))

# remove one column
select(iris, -Sepal.Length)

# remove multiple columns
select(iris, -c(Sepal.Length, Sepal.Width))

# select/remove multiple columns with a start rule
# starts_with("x")
select(iris, starts_with("Sepal"))
select(iris, -starts_with("Sepal"))

# select/remove multiple columns with an end rule
# ends_with("x")
select(iris, ends_with("Width"))
select(iris, -ends_with("Width"))

# add a new column
x <- 1:150
mutate(iris, id = x)





# #pipping  ---------------------------------------------------------------



# the following codes produce the same data frame
# apply functions separately
df_vir <- filter(iris, Species == "virginica")
df_vir_sl <- select(df_vir, Sepal.Length)
print(df_vir_sl)



df1_vir_s2<- iris %>% 
  filter(Species == "virginica")
df1_vir_s2


df_filtering <- iris %>% 
  filter(Species == "virginica") %>% 
  select(ends_with("Lenght"))
df_filtering




# # reshape ---------------------------------------------------------------


iris_w <- iris %>% 
  mutate(id = rep(1:50, 3)) %>% # add an ID column
  select(id, Sepal.Length, Species) %>% 
  pivot_wider(id_cols = "id", # unique row ID based on
              values_from = "Sepal.Length", # values in each cell from
              names_from = "Species") # new column names from

print(iris_w)


iris_l <- iris_w %>% 
  pivot_longer(cols = c("setosa",
                        "versicolor",
                        "virginica"), # columns with values to be reshaped
               names_to = "Species", # column IDs move to "Species"
               values_to = "Sepal.Length") # column values move to "Sepal.Length"

print(iris_l)




# # group operation  ------------------------------------------------------


# grouping by "Species", then take means "Speal.Length" for each species

df_A <- iris %>% 
  group_by(Species) %>% 
  summarize(mu_sl = mean(Sepal.Length))

print(df_A)




# grouping by "Species", then take means & SD "Speal.Length" for each species

iris %>% 
  group_by(Species) %>% 
  summarize(mu_sl = mean(Sepal.Length),
            sd_sl = sd(Sepal.Length))




