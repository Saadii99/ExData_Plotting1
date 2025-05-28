# load_data.R
# This will be used inside all 4 plot scripts

# Read the full dataset
data <- read.table("household_power_consumption.txt", 
                   sep=";", header=TRUE, na.strings="?", 
                   stringsAsFactors=FALSE)

# Convert Date and filter by two days
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
filtered_data <- subset(data, Date == as.Date("2007-02-01") | 
                          Date == as.Date("2007-02-02"))

# Combine Date and Time into a POSIX datetime object
filtered_data$DateTime <- strptime(paste(filtered_data$Date, filtered_data$Time), 
                                   format="%Y-%m-%d %H:%M:%S")
