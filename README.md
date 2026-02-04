# SQL Data Warehouse Project


## 📌 Overview
This project demonstrates the design and implementation of a **modern data warehouse** using **Microsoft SQL Server**.  
It follows the **Bronze → Silver → Gold layered architecture**, ensuring reproducibility, auditability, and business-ready analytics.  

The warehouse integrates raw CRM and ERP data, applies ETL transformations, and exposes curated dimensional models for BI and reporting.

---

## 🏗️ Architecture
![Architecture Diagram](DOC/architecture.png) <!-- replace with your diagram path -->

- **Bronze Layer**: Raw ingestion from CSV files mounted in Docker.  
- **Silver Layer**: Cleaned, normalized, deduplicated tables with business rules applied.  
- **Gold Layer**: Dimensional views (facts & dimensions) for analytics and BI consumption.  

---

## ✨ Features
- **ETL Procedures**  
  - Bulk ingestion with `BULK INSERT`  
  - Deduplication (`ROW_NUMBER()`)  
  - Normalization of categorical codes (gender, marital status, product line, country)  
  - Anomaly handling (negative prices, invalid dates)  

- **Dimensional Modeling**  
  - Star schema with fact tables and dimension tables  
  - Surrogate keys for customers and products  
  - Business-ready measures (sales amount, quantity, price)  

- **Governance & Documentation**  
  - Disclaimers and metadata blocks in every script  
  - Version-controlled in GitHub  
  - Architecture diagrams and project management dashboards  

- **Testing**  
  - ~100 validation tests per layer (Bronze, Silver, Gold)  
  - Schema checks, referential integrity, anomaly detection  

---

## 📂 Repository Structure
SQL-DATA-WAREHOUSE-PROJECT/
│
├── Datasets/        # Sample CRM & ERP CSV files
├── Scripts/         # SQL scripts for Bronze, Silver, Gold layers
├── Test/            # Validation queries and test cases
├── DOC/             # Documentation, diagrams, disclaimers
├── README.md        # Project showcase
└── LICENSE          # MIT License

---

## 🚀 How to Run
1. **Setup SQL Server** (Docker or local instance).  
2. **Create Schemas**: `bronze`, `silver`, `gold`.  
3. **Run Scripts**:  
   - Bronze layer table creation + bulk load procedure.  
   - Silver layer transformation procedure.  
   - Gold layer view creation.  
4. **Validate**: Execute test queries from `/Test` to confirm data quality.  

---

## 📊 Results
- Clean, standardized data ready for BI dashboards.  
- Dimensional models supporting customer, product, and sales analysis.  
- Proven reliability with 100+ tests across all layers.  

---

## 🧑‍💻 Author
**Shubham Kumar**  
Solo founder, systems architect, and educational content creator.  
Passionate about building reproducible data workflows and translating complex concepts into accessible formats.

---

## 📜 License
This project is licensed under the [MIT License](LICENSE).

---
