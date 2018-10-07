source("init.R")

png("plot4.png")

par(mfrow = c(2,2))

# 1
plot(
  feb$datetime,
  feb$Global_active_power,
  type = "l",
  xlab = "",
  ylab = "Global Active Power (kilowatts)"
)

# 2
plot(
  feb$datetime,
  feb$Voltage,
  type = "l",
  xlab = "datetime",
  ylab = "Voltage"
)

# 3
plot(
  feb$datetime,
  feb$Sub_metering_1,
  type = "l",
  xlab = "",
  ylab = "Energy sub metering",
  col = "black"
)

lines(
  feb$datetime,
  feb$Sub_metering_2,
  type = "l",
  col = "red"
)

lines(
  feb$datetime,
  feb$Sub_metering_3,
  type = "l",
  col = "blue"
)

legend(
  "topright", 
  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
  col = c("black", "red", "blue"),
  lty = 1,
  bty = "n"
)

# 4
with(feb, plot(
  datetime,
  Global_reactive_power,
  type = "l"
))

dev.off()

