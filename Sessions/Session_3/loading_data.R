library(data.table)
library(ggplot2)


############
#  LAB 2_1
############

# FILE
######
file <- "C:/Users/eduta37/Documents/Projects_IAS_2023/Teaching_2023/ABM_2024/UNITS/Unit_2/session_1/lab2_1 world.csv"

# turtles information
######################
start_line <- 13
end_line <- 63
data_turtles <- fread(input = file, skip = (start_line - 1), nrows = (end_line - start_line))

# patches information
#####################
start_line <- 66
end_line <- 1155
data_patches <- fread(input = file, skip = (start_line - 1), nrows = (end_line - start_line))

# Plotting
##########
ggplot() +
  geom_tile(data = data_patches, aes(pxcor, pycor , fill= as.factor(pcolor))) + 
  geom_point(data = data_turtles,aes(xcor,ycor),color = "black")
  guides(fill="none")

############
#  LAB 2_2
############


# FILE
######
file <- "C:/Users/eduta37/Documents/Projects_IAS_2023/Teaching_2023/ABM_2024/UNITS/Unit_2/session_1/lab2_2 world.csv"
file <- "C:/Users/eduta37/Desktop/lab2_2 world.csv"  

# turtles information
######################
start_line <- 13
end_line <- 113
data_turtles <- fread(input = file, skip = (start_line - 1), nrows = (end_line - start_line))
ggplot(data = data_turtles,aes(x = money)) + geom_density()





###################################
#  LAB 2_3      MODEL: Fire Model
###################################

# Open the data
#--------------
# set your working directory
file <- "C:/Users/eduta37/Documents/Projects_IAS_2023/Teaching_2023/ABM_2024/UNITS/Unit_2/session_1/lab2_3 experiment-table.csv"
file <- "C:/Users/eduta37/Desktop/lab2_3 experiment-table.csv"
data <- fread(input = file,skip = 6) # skip the first 6 rows of the data which only provide a description

# taking a look at the data
str(data)

# 'run number' is the id of each realization (number of simulations for each parameter combination)
data[`[run number]` == 1]
table(data$`[run number]`)

# Changing the type to some variables
data[, step := as.numeric(`[step]`)]
data[, Perc_Burned := as.numeric(Perc_burned)]
data[, density_parameter := as.numeric(density_parameter)]
data[density_parameter == 10 & step == 1]


# taking the average
data[, run_number := `[run number]`]
setkeyv(data,c("density_parameter","run_number"))
data <- data[, .SD[which.max(step)], by = key(data)]
data[density_parameter == 10]
table(data$step)
setkey(data,"density_parameter")
data[, Mean_Perc_Burn := mean(Perc_burned),by=key(data)]
# Plotting
ggplot(data,aes(density_parameter,Mean_Perc_Burn)) + geom_line() 
