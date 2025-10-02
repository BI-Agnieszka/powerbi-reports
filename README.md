# 📊 Power BI Report – Sample Dashboards
This repository contains sample Power BI visualizations and SQL scripts based on fictional data.
---

## 🪑 Report for a Furniture Manufacturer
- **Sales Overview**  
  Sales trends across four regions for a furniture manufacturer.  
  ![Sales Overview](Sales%20Overview.png)

- **Customers Orders**  
  Overview of customer order volumes and shipment delays, highlighting fulfillment gaps.  
  ![Customers Orders](Customers%20Orders.png)

- **Sales Target**  
  Dashboard presenting sales targets to support strategic decision-making.  
  ![Sales Target](Sales%20Target.png)
---

## 🚚 Report for Logistic
- **Logistic – Orders & Stock**  
  Summary of stock levels and order volumes across logistic channels.  
  ![Logistic – Orders & Stock Overview](Logistic%20-%20Orders%20%26%20Stock%20Overview.png)

- **Profitability Overview – Key Matrix & Flow**  
  Visualization of profitability metrics and financial flow.
  ![Profitability Overview – Key Matrix & Flow](Profitability%20Overview%20-%20Key%20Matrix%20%26%20Flow.png)
---

## 📍 Regional Sales & Quarterly Target Report
Comparison of actual sales vs. planned targets for Q3, with KPI indicators.
![Regional Sales](RegionalSales.png)
---

## 🧠 Data Model Preparation in Power BI
To optimize report performance and simplify data relationships, a dedicated data model was prepared in Power BI.  
The original snowflake schema was transformed into a star schema, improving query speed and clarity of measures.
- **Model Visualization**  
![Power BI Data Model – Example](Power%20BI%20ModelMerged.png)

## 🧹 SQL Data Cleaning – Example Script
This repository includes a practical SQL script for cleaning customer order data using PostgreSQL.
📄 [Data Cleansing in SQL.sql](Data%20Cleansing%20in%20SQL.sql)

**Key cleaning steps:**
- Removing duplicate orders using `ROW_NUMBER()`
- Splitting full customer names into `first_name` and `last_name`
- Standardizing email formats and removing invalid addresses
- Filling missing values for quantity, price, and order status
- Dropping incomplete or irrelevant records

---

> All data and visuals are based on fictional examples for demonstration purposes only.
