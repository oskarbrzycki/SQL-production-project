# 🧮 SQL Production Data Analysis

## Overview
This project demonstrates how SQL can be used to explore and analyze large-scale production data across multiple food categories such as **milk, coffee, honey, cheese, eggs, and yogurt**.  
The goal is to apply analytical SQL techniques to discover patterns, identify trends, and generate meaningful insights from raw data.

The project was created as a practical exercise in **data analysis, query optimization, and database reporting**.

---

## 🎯 Objectives
- Explore production data using SQL.
- Perform aggregation, filtering, and comparative analysis.
- Understand data distribution across years and states.
- Create reusable analytical queries for reporting purposes.

---

## 🧩 Project Structure
- `1part_final_project.sql` — initial setup and basic queries.  
- `2part_final_project.sql` — advanced analysis, joins, and conditional logic.  
- Example outputs are provided for key analytical questions.

---

## 🔍 Example SQL Queries

### Total Milk Production in 2023
```sql
SELECT SUM(Value) AS total_milk_production_2023
FROM milk_production
WHERE Year = 2023;

## 📊 Example Insights
Analysis	Result
Total milk production (2023)	91,812,000,000
Average honey production (2022)	3,133,275
Highest yogurt output (2022)	793,256,000
Coffee production (2015)	6,600,000
States producing >10M units of cheese (Apr 2023)	14
States with no milk production (2023)	26
Did Delaware produce cheese (Apr 2023)?	No

## 🧰 Tools & Technologies
SQL (MySQL / PostgreSQL)
Git & GitHub
Data Querying and Reporting
Dataset Analysis and Aggregation

