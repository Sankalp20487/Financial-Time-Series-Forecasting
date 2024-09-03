# Financial Time Series Forecasting

This project is focused on forecasting financial time series data for Apple Inc. (AAPL), Honeywell (HON), and dry wine prices. It leverages statistical models such as exponential smoothing and ARIMA to make predictions and assess the effectiveness of these methods.

## Introduction

The aim of this project is to forecast the stock prices of Apple Inc. (AAPL) and Honeywell (HON), as well as dry wine prices using time series models. By performing statistical tests and evaluating forecasting errors, we analyze the accuracy of different forecasting methods including exponential smoothing and auto.arima().

## Project Structure

- **Data**: Contains the datasets used for the analysis, including stock prices for AAPL and HON, and dry wine prices.
- **Scripts**: R scripts used to perform the analysis and generate forecasts.
- **Reports**: Contains the report generated as part of this project, along with visualizations and interpretations.

## Methodology

### Data Collection
- The project utilizes stock price data for AAPL and HON collected over the last 5 years.
- Additionally, dry wine price data was sourced and used for forecasting.

### Forecasting Models
- **Exponential Smoothing**: Used to generate forecasts by weighting more recent observations more heavily.
- **ARIMA (Auto-Regressive Integrated Moving Average)**: Applied to model and forecast the time series, with both manual ARIMA models and auto.arima() used.

### Statistical Tests
- **Augmented Dickey-Fuller (ADF) Test**: Conducted to check for stationarity of the time series data.

## Results

- The results indicate that for both AAPL and HON, an alpha value of 0.75 provides the most accurate forecast using exponential smoothing.
- For adjusted exponential smoothing, different beta values were found optimal for AAPL and HON, suggesting varying significance of trend components.
- ARIMA models applied to both stocks and dry wine prices provided forecasts with varying levels of confidence, highlighting the need for careful model selection.

## Running the R Scripts

To replicate the analysis and generate the forecasts, follow these steps:

```sh
git clone https://github.com/yourusername/Financial-Time-Series-Forecasting.git

cd Financial-Time-Series-Forecasting

# Install Required R Packages
install.packages(c("quantmod", "forecast", "tseries", "lubridate"))

# Run the R Script
source("Scripts/forecasting_analysis.R")
