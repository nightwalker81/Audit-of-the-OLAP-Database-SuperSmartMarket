# 🛒 Project 03 — Audit & Improvement of the OLAP Database (SuperSmartMarket)

This project simulates a real mission as a **Data Engineer at SuperSmartMarket**, a fast-growing supermarket chain in France seeking to deliver hyper-personalized customer experiences through high-quality data.

However, the BI team has identified a *critical data issue*:  
➡️ **Historical revenue figures are not stable over time.**  
The same day shows different revenue amounts depending on when the dashboard is refreshed.

As the newly hired Data Engineer, your job is to investigate the issue and propose corrective measures through a **3-mission project**.

---

# 📌 Mission 1 — OLAP Audit, Data Dictionary & Relational Schema

You received:
- A **flat file export** from the OLAP database  
- A high-level architecture diagram  
- A description of the problem: revenue values in PowerBI are unstable  

### 🎯 Mission 1 Objectives
- Understand the OLAP architecture and its data flows  
- Reverse-engineer the flat table into a **normalized relational model**  
- Build the **data dictionary** documenting each field  
- Build a **local prototype database** (SQLite / PostgreSQL / MySQL)  
- Load the cleaned data into the prototype using SQL  

### 📦 Mission 1 Deliverables
- `mission_one/`  
  - Data dictionary (Excel)  
  - Relational schema (ERD diagram)  
  - SQL schema & data loading scripts  
  - Presentation slides (context, schema, dictionary excerpt)

---

# 📌 Mission 2 — Log Analysis & Revenue Investigation

After confirming the correct revenue for **14 August** (284,243.88 €), Hugo reveals that the BI team still does not understand *why* the revenue changes over time.

He provides:
- A week of **system logs**  
- A request to analyze the logs and determine what might cause inconsistencies  

### 🎯 Mission 2 Objectives
- Load the log file into your local prototype  
- Enrich your schema if needed (adding log table, IDs, timestamps…)  
- Investigate:
  - late-arriving transactions  
  - missing IDs  
  - corrections after initial ingestion  
  - overwritten or duplicated rows  
- Reproduce business KPIs:
  - Total revenue for 14 August  
  - Top 10 customers by revenue  
  - Revenue contribution per employee  

### 📦 Mission 2 Deliverables
- `mission_two/`  
  - SQL queries (KPI validation)  
  - Log ingestion scripts  
  - Investigative notes or notebook  
  - Updated presentation slides including findings  

---

# 📌 Mission 3 — Audit Report, Root Causes & Recommendations

Now that the inconsistencies are understood, Hugo wants a **complete audit report** and recommendations to improve data reliability across the company.

He requests:

### 🎯 Mission 3 Objectives
- Document your **entire investigation** in a structured audit report  
- Explain your **analytical process** and your intermediate findings  
- Integrate **corrective measures** into your prototype database, including:
  - Foreign keys & referential integrity  
  - ACID compliance considerations  
  - Constraints & systematic checks  
  - Possible triggers  
  - Improved ingestion logic  
  - Log-based reconciliation  
- Update the presentation to include:
  - Root causes  
  - Corrective actions  
  - Technical recommendations for the BI team  

### 📦 Mission 3 Deliverables
- `mission_three/`  
  - Audit report (Word/PDF)  
  - Enhanced SQL schema (new constraints, tables, triggers…)  
  - Updated prototype database  
  - Final presentation including:
    - Architecture understanding  
    - Relational schema  
    - Data dictionary  
    - KPI validations  
    - Log insights  
    - Recommendations  

---

# 🛠 Tools & Technologies Used

- SQL (PostgreSQL / SQLite / MySQL)  
- Data modeling (ERD)  
- Data quality analysis  
- Log investigation techniques  
- ACID principles  
- PowerBI concepts (for KPI reconciliation)  
- Excel / Google Sheets (data dictionary)  
- PowerPoint / Google Slides (presentation)  

---

# 📂 Repository Structure

```
Audit-of-the-OLAP-Database-SuperSmartMarket/
│
├── mission_one/
│   ├── schema.sql
│   ├── insert_data.sql
│   ├── data_dictionary.xlsx
│   ├── relational_schema.png
│   └── presentation_mission1.pdf
│
├── mission_two/
│   ├── logs/
│   ├── load_logs.sql
│   ├── investigation_queries.sql
│   ├── kpi_validation.sql
│   └── presentation_mission2.pdf
│
├── mission_three/
│   ├── audit_report.pdf
│   ├── improved_schema.sql
│   ├── triggers.sql
│   ├── constraints_update.sql
│   └── final_presentation.pdf
│
└── README.md
```

---

# 📈 Key Findings (High-Level Summary)

- Revenue instability is caused by **late-arriving or corrected transactions** and missing documentation of ETL processes.  
- Logs revealed **changes after initial ingestion**, leading to mismatched OLAP aggregates.  
- The prototype database allowed the team to **validate PowerBI numbers** and identify inconsistencies.  
- Key improvements include:
  - better referential integrity  
  - controlled ingestion logic  
  - tracking corrections explicitly  
  - enforcing ACID properties  
  - documenting all data flows  

---
