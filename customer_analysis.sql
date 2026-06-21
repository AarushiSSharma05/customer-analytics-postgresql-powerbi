/* ==========================================================
   CUSTOMER ANALYTICS PROJECT
   Dataset: 2 Million Customer Records
   Tool: PostgreSQL
   ========================================================== */


/* ==========================================================
   DATA OVERVIEW
   ========================================================== */

-- Total number of customers

SELECT COUNT(*) AS total_customers
FROM customers;


-- Total countries represented

SELECT COUNT(DISTINCT country) AS total_countries
FROM customers;


-- Total cities represented

SELECT COUNT(DISTINCT city) AS total_cities
FROM customers;


-- Total companies represented

SELECT COUNT(DISTINCT company) AS total_companies
FROM customers;



/* ==========================================================
   BUSINESS QUESTION 1
   Which countries have the highest number of customers?
   ========================================================== */

SELECT
    country,
    COUNT(*) AS customer_count
FROM customers
GROUP BY country
ORDER BY customer_count DESC
LIMIT 10;



/* ==========================================================
   BUSINESS QUESTION 2
   Which cities have the highest number of customers?
   ========================================================== */

SELECT
    city,
    COUNT(*) AS customer_count
FROM customers
GROUP BY city
ORDER BY customer_count DESC
LIMIT 10;



/* ==========================================================
   BUSINESS QUESTION 3
   Which companies have the largest customer representation?
   ========================================================== */

SELECT
    company,
    COUNT(*) AS customer_count
FROM customers
GROUP BY company
ORDER BY customer_count DESC
LIMIT 20;



/* ==========================================================
   BUSINESS QUESTION 4
   Which email domains are most commonly used?
   ========================================================== */

SELECT
    SPLIT_PART(email, '@', 2) AS email_domain,
    COUNT(*) AS users
FROM customers
GROUP BY email_domain
ORDER BY users DESC
LIMIT 20;



/* ==========================================================
   BUSINESS QUESTION 5
   What percentage of customers come from the Top 10 countries?
   ========================================================== */

WITH country_counts AS (
    SELECT
        country,
        COUNT(*) AS customer_count
    FROM customers
    GROUP BY country
),
top_10 AS (
    SELECT SUM(customer_count) AS top_customers
    FROM (
        SELECT customer_count
        FROM country_counts
        ORDER BY customer_count DESC
        LIMIT 10
    ) t
)
SELECT
    ROUND(
        100.0 * top_customers /
        (SELECT COUNT(*) FROM customers),
        2
    ) AS pct_customers_from_top_10_countries
FROM top_10;



/* ==========================================================
   BUSINESS QUESTION 6
   Which countries have the highest concentration
   of unique companies?
   ========================================================== */

SELECT
    country,
    COUNT(DISTINCT company) AS unique_companies
FROM customers
GROUP BY country
ORDER BY unique_companies DESC
LIMIT 10;



/* ==========================================================
   BUSINESS QUESTION 7
   Which customers use multiple phone numbers?
   ========================================================== */

SELECT
    customerid,
    firstname,
    lastname,
    phone1,
    phone2
FROM customers
WHERE phone1 IS NOT NULL
  AND phone2 IS NOT NULL
LIMIT 20;



/* ==========================================================
   DATA QUALITY CHECKS
   ========================================================== */

-- Missing email addresses

SELECT COUNT(*) AS missing_emails
FROM customers
WHERE email IS NULL
   OR email = '';


-- Duplicate customer IDs

SELECT
    customerid,
    COUNT(*) AS duplicate_count
FROM customers
GROUP BY customerid
HAVING COUNT(*) > 1;


-- Customers by country

SELECT
    country,
    COUNT(*) AS customer_count
FROM customers
GROUP BY country
ORDER BY customer_count DESC;
