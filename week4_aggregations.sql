-- ============================================
-- Week 4 SQL Assignment — Advanced Queries & Aggregations
-- Author: Zakariye Ali Mursal
-- ============================================

-- --------------------------------------------
-- Question 1
-- Total payment amount for each payment date.
-- Sort by payment date DESC. Show the top 5 latest dates.
-- --------------------------------------------
SELECT
  paymentDate,
  SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- --------------------------------------------
-- Question 2
-- Average credit limit for each customer.
-- Display customer name, country, and average credit limit.
-- Group by customer name and country.
-- --------------------------------------------
SELECT
  customerName,
  country,
  AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;

-- --------------------------------------------
-- Question 3
-- Total price of products ordered.
-- Display product code, quantity ordered, and total price.
-- Group by product code and quantity ordered.
-- --------------------------------------------
SELECT
  productCode,
  quantityOrdered,
  SUM(priceEach * quantityOrdered) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- --------------------------------------------
-- Question 4
-- Highest payment amount for each check number.
-- Display check number and highest amount.
-- Group by check number.
-- --------------------------------------------
SELECT
  checkNumber,
  MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;
