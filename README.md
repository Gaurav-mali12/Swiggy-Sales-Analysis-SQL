# 🍽️ Swiggy Sales Analysis using SQL

![SQL](https://img.shields.io/badge/SQL-SQL%20Server-blue)
![Database](https://img.shields.io/badge/Database-Star%20Schema-orange)
![Project](https://img.shields.io/badge/Project-Completed-brightgreen)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

An end-to-end **SQL Data Analytics Project** that transforms raw Swiggy food delivery data into meaningful business insights using **Data Cleaning, Star Schema Modelling, Data Warehousing concepts, and SQL-based Business Analysis**.

---

# 📌 Project Overview

Food delivery platforms generate large volumes of transactional data every day. Extracting valuable insights from this data requires proper cleaning, modelling, and analysis.

This project demonstrates a complete SQL analytics workflow by:

- Cleaning and validating raw data
- Designing a Star Schema
- Creating Fact and Dimension tables
- Writing business-driven SQL queries
- Generating KPIs
- Performing exploratory business analysis

Rather than querying a single raw dataset, the project converts the data into a dimensional model, making reporting faster, scalable, and easier to understand.

---

# ✨ Project Highlights

✅ End-to-End SQL Data Analytics Project

✅ Data Cleaning & Validation

✅ Star Schema Data Warehouse Design

✅ Fact & Dimension Table Creation

✅ 20+ Business SQL Queries

✅ KPI Development

✅ Revenue & Customer Insights

✅ SQL Server Implementation

---

# 🎯 Business Problem

Business stakeholders need answers to questions such as:

- Which cities generate the highest revenue?
- Which restaurants receive the highest number of orders?
- Which cuisines are the most popular?
- How are sales changing month over month?
- Which dishes are ordered most frequently?
- What are customer spending patterns?
- How are customer ratings distributed?

This project answers these questions using SQL and dimensional modelling.

---

# 🏗️ Project Architecture

```
                     Raw Dataset
                          │
                          ▼
            Data Cleaning & Validation
                          │
                          ▼
              Star Schema Modelling
                          │
                          ▼
          Fact & Dimension Table Creation
                          │
                          ▼
             Business KPI Development
                          │
                          ▼
               SQL Business Analysis
```

---

# 🛠️ Tech Stack

| Technology | Purpose |
|------------|---------|
| SQL Server | Database |
| SQL | Data Analysis |
| SSMS | Query Execution |
| Star Schema | Data Warehouse Design |
| ERD | Database Design |
| Git | Version Control |
| GitHub | Project Hosting |

---

# 📂 Dataset

The dataset contains Swiggy food delivery transactions across multiple Indian cities.

### Features Included

- Order ID
- Order Date
- State
- City
- Restaurant Name
- Location
- Food Category
- Dish Name
- Price (INR)
- Rating
- Rating Count

---

# 📁 Repository Structure

```
Swiggy-Sales-Analysis/
│
├── Dataset/
│   └── Swiggy_Data.csv
│
├── SQL Scripts/
│   ├── 01_Data_Cleaning_and_Validation.sql
│   ├── 02_Data_Modelling_Star_Schema.sql
│   └── 03_Data_Analysis.sql
│
├── Documents/
│   ├── Business_Requirements.pdf
│   └── SQL_Analysis_Document.pdf
│
├── Images/
│   └── ERD.png
│
├── README.md
│
└── LICENSE
```

---

# 🚀 Project Workflow

## 1️⃣ Business Requirement Analysis

Before writing SQL queries, business requirements were defined to identify the insights required by stakeholders.

The requirements focused on:

- Revenue Analysis
- Sales Trends
- Restaurant Performance
- Customer Spending
- Ratings Analysis
- Food Category Analysis
- City & State Performance

---

## 2️⃣ Data Cleaning & Validation

The raw dataset was validated to improve data quality.

### Tasks Performed

- Null Value Detection
- Blank Value Detection
- Duplicate Record Detection
- Duplicate Removal using ROW_NUMBER()

This ensured a clean and reliable dataset for further analysis.

---

## 3️⃣ Star Schema Data Modelling

A dimensional model was created to improve query performance and simplify reporting.

### Fact Table

- fact_swiggy_orders

### Dimension Tables

- dim_date
- dim_location
- dim_restaurant
- dim_category
- dim_dish

Benefits of the Star Schema:

- Faster Queries
- Better Scalability
- Reduced Data Redundancy
- Easier Dashboard Integration

---

# ⭐ Star Schema

![Star Schema](Images/ERD.png)

---

# 📊 Business KPIs

The following KPIs were developed:

- Total Orders
- Total Revenue
- Average Dish Price
- Average Rating

---

# 📈 Business Analysis

## 📅 Date-Based Analysis

- Monthly Order Trends
- Quarterly Revenue Trends
- Year-wise Growth
- Day-of-Week Order Analysis

---

## 🌍 Location-Based Analysis

- Top 10 Cities by Orders
- Top 10 Cities by Revenue
- Revenue Contribution by State

---

## 🍽️ Restaurant & Food Analysis

- Top Restaurants by Orders
- Most Popular Categories
- Most Ordered Dishes
- Cuisine Performance

---

## 💰 Customer Spending Analysis

Customer spending buckets:

- Under ₹100
- ₹100–199
- ₹200–299
- ₹300–499
- ₹500+

---

## ⭐ Ratings Analysis

Distribution of customer ratings from 1 to 5 stars.

---

# 📊 Key SQL Concepts Demonstrated

- SELECT
- WHERE
- GROUP BY
- HAVING
- ORDER BY
- DISTINCT
- INNER JOIN
- Aggregate Functions
- CASE WHEN
- ROW_NUMBER()
- Window Functions
- Date Functions
- Data Type Conversion
- Common Table Expressions (CTE)

---

# 💡 Business Insights Generated

This project helps answer questions such as:

- Which city generates the highest revenue?
- Which restaurant receives the most orders?
- Which cuisines are most preferred?
- Which dishes are most popular?
- Which price range contributes the highest order volume?
- Which day receives the maximum number of orders?
- What is the average customer rating?

---

# 🧠 Skills Demonstrated

- SQL Programming
- Data Cleaning
- Data Validation
- Database Design
- Data Warehousing
- Star Schema Modelling
- Business Intelligence
- Data Analysis
- Query Optimization
- Analytical Thinking

---

# 📸 Project Preview

### Star Schema

![ERD](Images/ERD.png)

> You can also add screenshots of:
>
> - KPI Results
> - Monthly Trends
> - Top Cities
> - Top Restaurants
> - Revenue Analysis
> - SQL Query Outputs

---

# 🚀 Future Improvements

Possible enhancements:

- Build an interactive Power BI Dashboard
- Create SQL Views
- Implement Stored Procedures
- Add Indexing for Query Optimization
- Automate ETL Process
- Deploy on Azure SQL Database

---

# 📚 Learning Outcomes

Through this project, I gained hands-on experience in:

- Designing a Star Schema
- Building Fact & Dimension Tables
- Cleaning and Validating Data
- Writing Business-Oriented SQL Queries
- Developing KPIs
- Performing Exploratory Data Analysis
- Converting Raw Data into Actionable Business Insights

---

# 👨‍💻 Author

## Gaurav Mali

**Aspiring Data Analyst | SQL | Power BI | Python**

I am passionate about transforming raw data into meaningful insights through SQL, data modelling, and business intelligence. This project demonstrates my ability to design analytical databases and solve real-world business problems using SQL.

### 📬 Connect with Me

- **GitHub:** https://github.com/Gaurav-mali12
- **LinkedIn:** https://www.linkedin.com/in/gaurav-mali-2003gm

---

# 🙏 Acknowledgements

This project was created as part of my SQL learning journey to strengthen my understanding of data cleaning, dimensional modelling, and business analytics using SQL Server.

---

# ⭐ Support

If you found this project helpful:

⭐ Star this repository

🍴 Fork this repository

💼 Connect with me on LinkedIn

📂 Explore my other GitHub projects

---

## 📄 License

This project is licensed under the **MIT License**.
