
<img width="900" height="281" alt="png-clipart-graphics-logo-netflix-television-macbeth-2015-netflix-television-text" src="https://github.com/user-attachments/assets/adf770b4-01ad-4ca9-a546-b8e255fffff1" />


# 📊 Netflix Data Analysis Using SQL (PostgreSQL)

## 📌 Project Overview
This project presents an exploratory and business-oriented analysis of the **Netflix Movies and TV Shows dataset**.  
The primary objective is to extract meaningful insights using **SQL**, supported by **python-based data cleaning**.

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


## 🎯 Business Objectives
The objectives of this project are answer business-driven analytical questions using SQL. The analysis addresses questions such as:
1. What is the total number of Movies and TV Shows on Netflix?
2. Which movies have the longest duration?
3. What content has been added in the last five years?
4. How is content distributed by release year?
5. Which ratings are most common?
6. Which countries contribute the most content?\
The complete list of business and analytical questions addressed in this project is provided in the attached **PDF** file.
## 🔍 Analysis Approach
The analysis follows **two-stage**:
1. **Data Cleaning and Preprocessing (Python)**
- Loaded the raw dataset into Python
- Handled missing and inconsistent values 
2. **SQL-Based Analysis**
- Imported the cleaned dataset into a SQL database
- Created structured tables
- Executed SQL queries to answer business questions
- Applied filtering, aggregation, and date functions

This approach combines **python’s flexibility for data cleaning** with **SQL’s efficiency for analytical querying**.


## 🛠 Tools and Technologies
- **Python** (Data Cleaning & Preprocessing)
- **SQL** (PostgreSQL compatible)
- **Relational Databases**
- **Data Analysis Techniques**


## 📈 Key Insights
- Netflix hosts more **movies than TV shows**
- The majority of movies fall within a standard runtime of under **three hours**.
- A significant portion of content was added in recent years
- Catalog is largely family friendly, with a smaller share of movies and TV shows centered on violent themes.
- Content production is concentrated in a few major countries

## ▶️ How to Run the Project
1. Clean the dataset using Python
2. Create a SQL database
3. Import the cleaned data
4. Execute queries from `SQLnetflix_analysis.sql`

## 👤 Author
Aamir Khan \
Research Analyst, University of Aveiro

## 📂 Repository Structure
```text
Netflix-SQL-Analysis/
│
├── data/
│   ├── raw_dataset.csv
│   └── cleaned_dataset.csv
│
├── SQLnetflix_analysis.sql
├── Business_Questions.pdf
└── README.md

