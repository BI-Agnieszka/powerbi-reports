# 📊 Power BI Report – Sample Dashboards
This repository contains sample Power BI visualizations and SQL scripts based on fictional data.
---
## 💸 Process Flow & Money Leak

Visualization of operational flow and financial inefficiencies across logistic processes.  
![Process Flow & Money Leak](Process_Flow_and_Money_Leak.png)

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

## 🧹 SQL Data Cleaning – Example Script
This repository includes a practical SQL script for cleaning customer order data using PostgreSQL.
📄 [Download SQL Script](Data_Cleaning_Script.sql)

**Key cleaning steps:**
- Removing duplicate orders using `ROW_NUMBER()`
- Splitting full customer names into `first_name` and `last_name`
- Standardizing email formats and removing invalid addresses
- Filling missing values for quantity, price, and order status
- Dropping incomplete or irrelevant records

---

> All data and visuals are based on fictional examples for demonstration purposes only.
