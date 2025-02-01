## EDA on online retail sales
📊<B> Retail Sales Analysis & Forecasting</B>
<br>
📌<B> Project Overview<B/>
This project aims to analyze retail sales data to uncover trends, identify top-selling products, evaluate the impact of discounts, and predict future sales using time series forecasting. Additionally, market basket analysis is performed to understand customer purchase behavior.
<br>
🎯 <B>Key Objectives</B><br>
✔ Analyze sales trends over time to detect seasonal patterns.<br>
✔ Identify top-selling products and the impact of discounts on revenue.<br>
✔ Segment customers based on purchase behavior (RFM analysis).<br>
✔ Analyze payment method preferences to optimize checkout strategies.<br>
✔ Perform Market Basket Analysis to identify frequently bought-together items.<br>
✔ Build a time series forecasting model to predict future sales.
<br>

🔍 <B>Exploratory Data Analysis (EDA)</B><br>
📈 1. Sales Trend Over Time<br>
Monthly sales trends were visualized using line charts.<br>
Sales fluctuations were analyzed to detect seasonality and growth patterns.<br>
Key takeaway: The trend identifies peak sales months, which helps in demand planning.<br>
🛒 2. Top-Selling Products & Category Analysis<br>
Products were ranked based on total revenue contribution.<br>
Key takeaway: Helps optimize inventory for the best-performing items.<br>
🎯 3. Effect of Discounts on Sales<br>
A comparative analysis was done between discounted vs. full-price products.<br>
Key takeaway: Discounts drive higher sales volume, but careful pricing strategies are needed to maintain profitability.<br>
👥 4. Customer Segmentation (RFM Analysis)<br>
Customers were grouped into High-Value, Medium-Value, and Low-Value Segments based on spending and transaction frequency.<br>
Key takeaway: High-value customers drive most revenue, and targeted campaigns can increase retention.<br>
💳 5. Payment Method Analysis<br>
Sales by payment method (e.g., credit card, PayPal, cash) were analyzed.<br>
Key takeaway: Optimizing checkout experiences can reduce cart abandonment.<br>
🛍️ Market Basket Analysis (MBA) – Understanding Customer Purchase Behavior<br>
Using Association Rule Mining (Apriori Algorithm):<br>
✔ Frequent item sets were extracted to identify which products are commonly bought together.<br>
✔ Key takeaway: Helps in cross-selling strategies, e.g., "Customers who bought X also bought Y."<br>
✔ Example Rule:<br>

{Laptop} → {Mouse} (Support: 5%, Confidence: 80%, Lift: 3.2)<br>
This means 80% of customers who buy a Laptop also purchase a Mouse, making it a good bundle offer.<br>
📊 Sales Forecasting – Time Series Analysis<br>
✔ Used Auto ARIMA for accurate time series forecasting.<br>
✔ Predicted next 12 months of sales based on past trends.<br>
✔ Identified seasonal patterns for better stock and marketing planning.<br>
✔ Visualization of forecasted sales trend to guide business decisions.
<br>

📌<B> Key Findings:</B>
<br>
Forecasting helps businesses plan inventory, marketing campaigns, and staffing needs.<br>
Seasonal peaks suggest higher sales in Q4, likely due to holiday shopping trends.
