# Brazilian_E_commerce_analysis_Python-PostgreSQL
This is a Brazilian ecommerce public dataset of orders made at Olist Store. The dataset has information of 100k orders from 2016 to 2018 made at multiple marketplaces in Brazil. The dataset has total 8 csv files includes orders, customers, products and  geological. The company needs to understand the factors affecting sales and overall performance.


---

# 🧩 Business Problem

-	Analyze the total sale for each month, with repeat rate for every months.
-	Compare customer repeat rate between on time and delayed orders.
- Determine top products contributing to sales and gross profit.
-	Investigate the profitability variance among all region.


---

# 🎯 Objective

The goal of this project was to:
- clean raw business data
- perform exploratory analysis
- generate insights
- build  interactive charts

---

# 🗂️ Dataset Information

📌 Source: Kaggle / Public Dataset / Company Dataset

### Dataset :
-  Order_item
-  Customers
-  Products
-  Order_review
-  Payments
-  sellers


---

# 🛠️ Tools & Technologies Used

| 🗄️ SQL | Extract Data and Querying |
| 🐍 Python | Data Analysis |
| 🐼 Pandas | Data Cleaning |
| 📈 Matplotlib | Visualization |
| 🎨 Seaborn | Statistical Charts |
| 📓 Jupyter Notebook | Analysis Environment |

---

# ⚙️ Project Workflow

## 🧹 1. Data Cleaning
- handled missing values
- removed duplicates

## 🔍 2. Exploratory Data Analysis
- ### sales trend analysis:
-  Analyze monthly sales to understand business revenue growth.January has positive growth while June has negative growth over year 2017 and 2018, indicating seasonality trend.
- ### customer behavior analysis:
- To understand the customer behavior I analyze new vs repeat customer trend and found that repeat growth rate remained stable despite of growth in new customer rate throughout the analysis period.
- ###  regional performance:
- Observed regional performance based on generated revenue. Region South-East contributed more than 64% of total revenue. This suggested to improve sale and marketing in underperforming regions. 
- ### category-wise revenue:
-  Top 10 products generates more than 60% revenue. Other products are not utilized effectively or may not be as competitive.

## 📉 3. Data Visualization
Created:
- 📊 sales trend analysis: line chart
- 📈 customer behavior analysis: 
- 🥧 regional performance: bar chart
- 📌 category-wise revenue: Pie chart


---

# 💡 Key Insights

Example:
- New customer has increases over the months while repeat customer line is inflated.
- Delayed deliveries reduced  repeat customer rate, indicating the risk of increase on customer churn. 
- Sao Paulo has highest customer, followed by Rio de Janeiro and Minas Gerais.
- Region South-East dominates with 65.38% impact of total revenue, North and Central-West combined has less than 10% impact on total revenue.
-  Top 10 products contribute on revenue is 63.54 %. The remaining products contribute  36.46%, meaning they are not utilized effectively or may not be as competitive. 




---

# 🚀 Business Impact

These insights can help businesses:
- improve pricing strategies
- optimize inventory
- target profitable regions
- increase operational efficiency


---


# 📁 Project Files

| File/Folder | Description |
|-------------|-------------|
| 🗄️ sql/ |  [Brazilian_E-Commerce_sql.sql](Brazilian_E-Commerce_sql.sql/)
| Notebook/ |[EDA_performance.ipynb](EDA_performance.ipynb/)
|  Notebook/ |[Sales_Analysis.ipynb](Sales_analysis.ipynb/)
|  presentation/ | [Brazilian_E-commerce_ppt.pptx](Brazilian_E-commerce_ppt.pptx/)

---


# 👤 Author

 - Neha Toppo
  - Aspiring Data Analyst
  - [LinkedIn] (https://www.linkedin.com/in/neha-toppo-1a740b385/)nk  
    
