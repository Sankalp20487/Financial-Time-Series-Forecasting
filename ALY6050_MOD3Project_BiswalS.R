#Loading required packages
library(quantmod)
library(forecast)
library(tseries)
library(lubridate)

# Downloading 5 years of data for HON
getSymbols("HON",  from = Sys.Date() - years(5))

# Downloading 5 years of data for AAPL
getSymbols("AAPL",  from = Sys.Date() - years(5))

# Fit AR(1) model for HON
hon_ar1 <- arima(Cl(HON), order = c(1,0,0))
# Forecast the HON data
hon_forecast <- forecast(hon_ar1, h = 120)

# Plot the actual series and forecasts for HON with a title and highlighting the forecast region
plot(hon_forecast, main="HON Stock Price Forecast", xlab="Time", ylab="Price in $", fcol="lightblue")
legend("topright", legend="Forecasted", fill="lightblue", border="lightblue")


# Fit AR(1) model for AAPL
aapl_ar1 <- arima(Cl(AAPL), order = c(1,0,0))
# Forecast the AAPL data
aapl_forecast <- forecast(aapl_ar1, h = 120)
# Plot the actual series and forecasts for AAPL
# Plot the actual series and forecasts for AAPL with enhancements
plot(aapl_forecast, main="AAPL Stock Price Forecast", xlab="Time", ylab="Price in $", fcol="lightblue")
legend("topright", legend="Forecasted", fill="lightblue", border="lightblue")


# ADF test for HON
adf.test(Cl(HON), alternative = "stationary")

# ADF test for AAPL
adf.test(Cl(AAPL), alternative = "stationary")

# Using auto.arima for HON
hon_model <- auto.arima(Cl(HON))
summary(hon_model)
# Forecasting
hon_forecast_auto <- forecast(hon_model, h = 120)
# Plotting the forecast
plot(hon_forecast_auto, main="HON Stock Price Forecast using Auto ARIMA", xlab="Time", ylab="Price in $", fcol="lightblue")
legend("topright", legend="Forecasted", fill="lightblue", border="lightblue")


# Using auto.arima for AAPL
aapl_model <- auto.arima(Cl(AAPL))
summary(aapl_model)
# Forecasting
aapl_forecast_auto <- forecast(aapl_model, h = 120)
# Plotting the forecast
plot(aapl_forecast_auto, main="AAPL Stock Price Forecast using Auto ARIMA", xlab="Time", ylab="Price in $", fcol="lightblue")
legend("topright", legend="Forecasted", fill="lightblue", border="lightblue")



#Dry wine dataset

# Assuming the data has a column "Price" for the wine prices
dry_wine <- read.csv("dry_wine.csv")
dry_wine_ts <- ts(dry_wine$x, frequency = 6) # assuming monthly data

# Fit a time-series model
wine_model <- auto.arima(dry_wine_ts)
summary(wine_model)
# Forecast
wine_forecast <- forecast(wine_model, h = 60)
# Plot

plot(wine_forecast, main="Wine Price Forecast", xlab="Time", ylab="Price in $", fcol="lightblue")
legend("topright", legend="Forecasted", fill="lightblue", border="lightblue")


