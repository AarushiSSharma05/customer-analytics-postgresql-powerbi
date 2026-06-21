# Customer Analytics Project using PostgreSQL & Power BI

## Project Overview

This project analyzes a customer dataset containing approximately 2 million records using PostgreSQL and Power BI.

The objective of the project was to perform customer analytics, identify geographic distribution patterns, evaluate company representation, analyze customer concentration, and generate business insights through SQL-based analysis and interactive dashboards.

---

## Business Problem

Organizations need to understand where their customers are located, which markets contribute the largest customer base, and how customers are distributed across companies and regions.

This project answers key business questions related to customer distribution, market concentration, and customer segmentation.

---

## Dataset Information

The dataset contains approximately 2 million customer records with the following attributes:

* Customer ID
* First Name
* Last Name
* Company
* City
* Country
* Phone Numbers
* Email Address
* Website

---

## Tools Used

### Database

* PostgreSQL

### Querying

* SQL

### Data Visualization

* Power BI

### Version Control

* GitHub

---

## Business Questions Answered

### 1. Which countries have the highest number of customers?

| Country        | Customer Count |
| -------------- | -------------- |
| Congo          | 8,773          |
| Korea          | 8,717          |
| Costa Rica     | 4,443          |
| Peru           | 4,439          |
| French Guiana  | 4,418          |
| Thailand       | 4,417          |
| Lebanon        | 4,391          |
| United Kingdom | 4,389          |
| Venezuela      | 4,387          |
| Uganda         | 4,382          |

**Insight:** Congo and Korea represent the largest customer markets in the dataset, each contributing more than 8,700 customer records.

---

### 2. Which cities contribute the largest customer base?

| City       | Customer Count |
| ---------- | -------------- |
| Loganmouth | 85             |
| Barrymouth | 84             |
| Jamesmouth | 83             |
| Brucemouth | 81             |
| East Wayne | 81             |

**Insight:** Customer distribution is highly diversified across cities, with no single city dominating the customer base.

---

### 3. Which companies have the highest customer representation?

| Company         | Customer Count |
| --------------- | -------------- |
| Torres and Sons | 91             |
| Hickman Inc     | 86             |
| Mckinney LLC    | 85             |
| Flores Inc      | 84             |
| Lowery LLC      | 84             |

**Insight:** Customer records are broadly distributed across organizations, suggesting a diversified customer portfolio without heavy dependence on a small set of companies.

---

### 4. Which email domains are most commonly used?

| Email Domain | Users |
| ------------ | ----- |
| mata.com     | 481   |
| montoya.com  | 478   |
| nichols.com  | 477   |
| cowan.com    | 476   |
| cook.com     | 473   |

**Insight:** No single email domain dominates the dataset, indicating a wide variety of customer communication domains.

---

### 5. What percentage of customers come from the Top 10 countries?

**Result:** 5.03%

**Insight:** The top 10 countries account for only 5.03% of the total customer base, indicating a highly diversified global customer distribution.

---

### 6. Which countries have the highest concentration of unique companies?

| Country       | Unique Companies |
| ------------- | ---------------- |
| Congo         | 8,191            |
| Korea         | 8,117            |
| Costa Rica    | 4,283            |
| Peru          | 4,256            |
| French Guiana | 4,252            |

**Insight:** Countries with the largest customer bases also show the highest concentration of unique companies, suggesting strong market penetration.

---

### 7. Multi-Contact Customers Analysis

Customers with multiple phone numbers were identified and analyzed to understand customer contact availability and data completeness.

**Insight:** Several customers maintain multiple contact numbers, providing opportunities for improved customer communication and outreach.

---

## Key Findings

* Congo and Korea emerged as the largest customer markets in the dataset.
* Customer distribution is geographically diverse with low concentration risk.
* The Top 10 countries contribute only 5.03% of all customers, indicating strong geographic diversification.
* Customer representation is spread across thousands of companies rather than concentrated among a few large organizations.
* Email domains are widely distributed, suggesting a diverse customer population.
* Major markets also demonstrate the highest number of unique companies, reflecting broad business penetration.

---

## Dashboard Features

The Power BI dashboard includes:

### KPI Cards

* Total Customers
* Total Countries
* Total Cities
* Total Companies

### Visualizations

* Top Countries by Customer Count
* Top Cities by Customer Count
* Top Companies by Customer Count
* Email Domain Distribution
* Customer Concentration Analysis

### Filters

* Country
* City
* Company

---

## Skills Demonstrated

* SQL Query Development
* Data Exploration
* Data Profiling
* Business Analysis
* Customer Analytics
* Data Visualization
* Dashboard Development
* PostgreSQL
* Power BI
* GitHub

---

## Repository Contents

```text
customer-analytics-postgresql-powerbi/
│
├── README.md
├── customer_analysis.sql
├── dashboard_screenshots/
│   ├── dashboard_overview.png
│   └── dashboard_details.png
│
└── dataset_info.md
```

---

## Future Enhancements

* Customer segmentation analysis
* Customer acquisition trend analysis
* Predictive analytics
* Customer lifetime value modeling
* Geographic clustering analysis

---

## Author

Arushi

Data Analytics Portfolio Project
