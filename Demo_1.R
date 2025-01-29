# Load required libraries
library(dplyr)
library(ggplot2)
library(lubridate)
library(tidyr)
library(zoo)
library(arules)  # For Market Basket Analysis
library(forecast)  # For time series forecasting

# Read dataset 
df<-read.csv(choose.files())
df
head(df)
# Convert Date Column to Date Format
df$timestamp <- as.Date(df$timestamp)
df$timestamp

# Sales Trend Over Time
sales_trend <- df %>%
  mutate(month = as.yearmon(timestamp)) %>%
  group_by(month) %>%
  summarise(total_sales = sum(total_amount, na.rm = TRUE))
sales_trend

# Plot Sales Trend
ggplot(sales_trend, aes(x = month, y = total_sales)) +
  geom_line(color = "blue") + geom_point() +
  labs(title = "Sales Trend Over Time", x = "Month", y = "Total Sales")

# Top Selling Products
top_products <- df %>%
  group_by(product_id, product_category) %>%
  summarise(total_sales = sum(total_amount, na.rm = TRUE)) %>%
  arrange(desc(total_sales))
top_products

# Effect of Discounts on Sales
discount_effect <- df %>%
  mutate(has_discount = ifelse(discount > 0, "Discounted", "Full Price")) %>%
  group_by(has_discount) %>%
  summarise(avg_sales = mean(total_amount))
discount_effect

# Customer Segmentation (Based on Purchase Frequency)
customer_segments <- df %>%
  group_by(customer_id) %>%
  summarise(total_spent = sum(total_amount), total_transactions = n()) %>%
  mutate(segment = case_when(
    total_transactions > 50 ~ "High-Value",
    total_transactions > 20 ~ "Medium-Value",
    TRUE ~ "Low-Value"
  ))
customer_segments

# Payment Method Analysis
payment_analysis <- df %>%
  group_by(payment_method) %>%
  summarise(total_sales = sum(total_amount, na.rm = TRUE))
payment_analysis

# Market Basket Analysis (Which Products Are Bought Together?)
transactions <- split(df$product_id, df$transaction_id)
transactions <- as(transactions, "transactions")

rules <- apriori(transactions, 
                 parameter = list(supp = 0.01, conf = 0.5),
                 appearance = list(default="lhs", rhs="product_id"),
                 control = list(verbose = FALSE))
inspect(head(sort(rules, by="lift"), 5))

# Sales Forecasting (Time Series Model)
sales_ts <- ts(sales_trend$total_sales, frequency = 12, start = c(2020, 1))
model <- auto.arima(sales_ts)
forecast_sales <- forecast(model, h = 12)  # Predict next 12 months
sales_ts
model
forecast_sales

# Plot Forecast
autoplot(forecast_sales) +
  labs(title = "Sales Forecast", x = "Time", y = "Sales") +
  theme_minimal()



