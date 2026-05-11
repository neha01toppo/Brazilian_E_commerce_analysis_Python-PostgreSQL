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
- 📊 Bar Charts
- 📈 Line Charts
- 🥧 Pie Charts
- 📌 KPI's


---

# 💡 Key Insights

Example:
- 💻 Technology category generated highest revenue
- 🌎 West region had strongest customer retention
- 💸 Heavy discounts reduced profit margins
- 🎉 Festive seasons boosted sales significantly

---

# 🚀 Business Impact

These insights can help businesses:
- improve pricing strategies
- optimize inventory
- target profitable regions
- increase operational efficiency


---

# ▶️ How to Run This Project

## 📥 Clone Repository

```bash
git clone <your-github-link>
```

## 📦 Install Dependencies

```bash
pip install -r requirements.txt
```

## ▶️ Run Notebook

Open Jupyter Notebook and run files sequentially.

---

# 📁 Project Files

| File/Folder | Description |
|-------------|-------------|
| 📂 data/ | Raw & cleaned datasets |
| 📓 notebooks/ | Analysis notebooks |
| 🗄️ sql/ | SQL queries |
| 📊 dashboard/ | Power BI dashboard |
| 🖼️ images/ | Charts & screenshots |
| 📑 presentation/ | Final PPT/PDF |

---

# 📌 Future Improvements

- 🤖 Add machine learning predictions
- 🌐 Deploy dashboard online
- ⚡ Automate reporting pipeline

---

# 👤 Author

Neha Toppo
-Data Analyst

🔗 LinkedIn: your-link  
💻 GitHub: your-link
