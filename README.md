# 📊 Stock Market Data Warehouse

A complete end-to-end Data Warehousing and Business Intelligence (DW & BI) solution designed for **Stock Market Analytics**, utilizing **SQL Server (SSMS), SSIS, SSAS**, and **Power BI**.

---

## 🧠 Project Overview

This project simulates a real-world stock market analytics environment by integrating transactional stock data into a structured Data Warehouse. It leverages an OLAP cube and interactive Power BI reports for business intelligence insights.

**Technologies Used:**
- **SSMS (SQL Server Management Studio)**
- **SSIS (SQL Server Integration Services)**
- **SSAS (SQL Server Analysis Services)**

---

## 📁 Dataset Description

The data simulates stock exchange activities for one year and includes:
- **SQL Server tables:** Shareholders, Portfolios, Trades, Shares, Companies
- **CSV File:** Broker records

---

## 🏗️ Architecture Summary

### 🔹 Data Sources
- **OLTP Database:** SQL Server transactional tables (normalized schema)
- **Flat File:** Broker data in CSV format

### 🔹 ETL Process (SSIS)
- Extract data from SQL Server and CSV sources
- Data transformation:
  - Data cleansing
  - Data type casting
  - Surrogate key generation
  - Slowly Changing Dimension (Type 2) handling
- Load into dimensional model (Star/Snowflake schema)

### 🔹 Data Warehouse (SSMS)
- **Fact Table:** `FactShareholderTrades`
- **Dimension Tables:** `DimShareholder`, `DimBroker`, `DimCompany`, `DimShares`, `DimDate`
- **SCD Type 2** applied on `DimShareholder` and `DimBroker`

### 🔹 OLAP Layer (SSAS)
- OLAP cube created for multidimensional analysis
- Dimensions: Time, Company, Shareholder, Share, Broker
- Measures: Trade volume, portfolio value, etc.

### 🔹 Reporting (Power BI)
- Interactive dashboards and KPIs for:
  - Shareholder activity
  - Broker performance
  - Trade trends

---

## 📌 Key Features

- ✅ **Slowly Changing Dimensions (Type 2)**: Track historical changes in address and contact info
- ✅ **Surrogate Keys** for consistency and flexibility
- ✅ **ETL Best Practices**: Staging area, truncation, derived columns, and data profiling
- ✅ **Accumulative Fact Table**: `accm_txn_create_time`, `accm_txn_complete_time`, and `txn_process_time_hours`
- ✅ **End-to-End Package Chaining** with SSIS

---

## 📂 Folder Structure

```
Stock-Market-DataWarehouse/
│
├── /SSIS-Packages/                  # ETL packages (.dtsx files)
├── /SSAS-Cube/                     # Cube definitions and deployment files
├── /SQL-Scripts/                   # Table creation, stored procedures
├── /Data/                          # Sample CSV files
├── /PowerBI/                       # .pbix reports
└── README.md                       # Project documentation
```

---

## 🧪 How to Run the Project

1. **Restore SQL Server Source DB** from provided scripts.
2. **Configure SSIS** to extract data from SQL and CSV sources.
3. **Run ETL packages** in the following order:
   - `StockExchange_Load_Staging.dtsx`
   - `StockExchange_DW.dtsx`
   - `Accumulative_Fact_Tables.dtsx`
4. **Deploy OLAP Cube** using SSAS.
5. **Connect Power BI** to the Data Warehouse or Cube.
6. **Visualize Insights** using the provided `.pbix` dashboard.

---

## 📈 Sample KPIs & Reports

- 💼 Top Performing Brokers
- 📊 Monthly Trade Volume by Sector
- 🕒 Trade Processing Time Analysis
- 📍 Geographic Distribution of Investors

---

## 🧾 References

- IBM Data Warehouse: https://www.ibm.com/think/topics/data-warehouse  
- Kaggle Stock Market Datasets: https://www.kaggle.com/search?q=stock+market  
- Rivery ETL Transformation: https://rivery.io/data-learning-center/types-of-etl-data-transformation/  
- Public Investing Guide: https://public.com/learn/what-is-a-stock-portfolio  

---

## 🙋 Author

**Sandali Sewmini Karunarathna**  
sandalikaru123@gmail.com  

