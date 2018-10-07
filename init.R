library(tidyverse)

# Source: https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
power <- read_csv2(
  "household_power_consumption.zip", 
  na = "?", n_max = 1e5,
  col_types = cols(
    Date = col_character(),
    Time = col_time(format = "%T"),
    Global_active_power = col_number(),
    Global_reactive_power = col_number(),
    Voltage = col_number(),
    Global_intensity = col_number(),
    Sub_metering_1 = col_number(),
    Sub_metering_2 = col_number(),
    Sub_metering_3 = col_number()))

# Fix Date and create datetime
power$Date <- lubridate::dmy(power$Date)
power$datetime <- lubridate::as_datetime(power$Date) + power$Time

# Convert to kw or kv
power$Global_active_power <- power$Global_active_power / 1e3
power$Global_reactive_power <- power$Global_reactive_power / 1e3
power$Sub_metering_1 <- power$Sub_metering_1 / 1e3
power$Sub_metering_2 <- power$Sub_metering_2 / 1e3
power$Sub_metering_3 <- power$Sub_metering_3 / 1e3
power$Voltage <- power$Voltage / 1e3

feb <- subset(power, Date >= "2007-02-01" & Date <= "2007-02-02")

