source("init.R")

png("plot1.png")

hist(
  feb$Global_active_power,
  col = "red",
  xlab = "Global Active Power (kilowatts)",
  main = "Global Active Power"
)

dev.off()

