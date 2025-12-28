# 📊 Netflix Data Analysis Using SQL

## 📌 Project Overview
This project presents an exploratory and business-oriented analysis of the **Netflix Movies and TV Shows dataset**.  
The primary objective is to extract meaningful insights using **SQL**, supported by **Python-based data cleaning**.

The analysis focuses on:
- Content distribution across Netflix
- Trends in content addition over time
- Movie duration characteristics
- Country-wise and rating-wise patterns

---

## 🗂 Dataset Description
The dataset contains metadata related to Netflix content, including:

| Column Name | Description |
|------------|------------|
| show_id | Unique identifier for each title |
| type | Movie or TV Show |
| title | Name of the content |
| director | Director of the title |
| cast | Cast members |
| country | Country of production |
| date_added | Date added to Netflix |
| release_year | Year of release |
| rating | Content rating |
| duration | Duration (minutes or seasons) |
| listed_in | Genre |
| description | Short description |

---

## 🎯 Business Objectives
The objectives of this project are:
- Analyze Netflix’s content strategy
- Identify temporal trends in content releases
- Evaluate movie duration patterns
- Answer business-driven analytical questions using SQL

---

## 🔍 Analysis Approach
The analysis follows a **two-stage pipeline**:

### 1. Data Cleaning and Preprocessing (Python)
- Loaded the raw dataset into Python
- Handled missing and inconsistent values
- Standardized date formats and categorical fields
- Cleaned and structured duration-related data
- Prepared an analysis-ready dataset

### 2. SQL-Based Analysis
- Imported the cleaned dataset into a SQL database
- Created structured tables
- Executed SQL queries to answer business questions
- Applied filtering, aggregation, and date functions

This approach combines **Python’s flexibility for data cleaning** with **SQL’s efficiency for analytical querying**.

---

## ❓ Key Business Questions
The analysis addresses questions such as:
1. What is the total number of Movies and TV Shows on Netflix?
2. Which movies have the longest duration?
3. What content has been added in the last five years?
4. How is content distributed by release year?
5. Which ratings are most common?
6. Which countries contribute the most content?

---

## 🛠 Tools and Technologies
- **Python** (Data Cleaning & Preprocessing)
- **SQL** (MySQL / PostgreSQL compatible)
- **Relational Databases**
- **Data Analysis Techniques**

---

## 📈 Key Insights
- Netflix hosts more **movies than TV shows**
- Most movies fall within a **standard duration range**
- A significant portion of content was added in recent years
- Content production is concentrated in a few major countries

---

## ▶️ How to Run the Project
1. Clean the dataset using Python
2. Create a SQL database
3. Import the cleaned data
4. Execute queries from `SQLnetflix_analysis.sql`

---

## 📂 Repository Structure
```text
Netflix-SQL-Analysis/
│
├── SQLnetflix_analysis.sql
└── README.md
