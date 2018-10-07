source("init.R")

png("plot3.png")

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
  lty = 1
)

dev.off()

