-- Select the three countries that generated the highest total profit for Global Superstore in 2014
SELECT * FROM vephlaproject.orders
WHERE country IN ('United States', 'India', 'China');

-- Average Shipping Cost
SELECT ROUND (AVG(shipping_cost)) FROM vephlaproject.orders;

-- Identify the 3 subcategories with the highest average shipping cost in the United States.
SELECT sub_category, country, (AVG (shipping_cost)) FROM vephlaproject.orders
WHERE country = 'United States'
GROUP BY sub_category
ORDER BY 3 DESC
LIMIT 3;

-- Select African Region
SELECT * FROM vephlaproject.orders
WHERE Region = 'Africa';

-- Sum up Nigeria Shipping Cost 
SELECT SUM(shipping_cost), country, region FROM vephlaproject.orders
WHERE country = 'Nigeria';

-- Find average discount in Nigeria
SELECT AVG(discount), country, region FROM vephlaproject.orders
WHERE country = 'Nigeria';

-- Identify the product subcategory that is the least profitable in Southeast Asia.
SELECT sub_category, profit, country FROM vephlaproject.orders
WHERE country IN ('cambodia', 'Indonesia', 'malaysia',  'Myanmar (Burma)', 'Philippines', 'Singapore', 'Thailand', 'Vietnam')
ORDER BY 2 ASC;

-- Sum up profit loss of tables in Southeast Asia
SELECT sub_category, SUM(profit), country FROM vephlaproject.orders
WHERE country IN ('cambodia', 'Indonesia', 'malaysia',  'Myanmar (Burma)', 'Philippines', 'Singapore', 'Thailand', 'Vietnam')
AND sub_category = 'Tables';

-- Select all cities, average profit and quantity count in the US
SELECT city, AVG(Profit) AS Avg_profit, COUNT(quantity) AS quantity_count FROM vephlaproject.orders
WHERE country = 'United States'
GROUP BY city
ORDER BY 1;

-- Find Minimum average profit from result above
SELECT city, MIN(Avg_profit), quantity_count FROM vephlaproject.uscities
WHERE quantity_count >= 10
GROUP BY avg_profit
ORDER BY 2 ASC;

-- Select Lancaster
SELECT order_date, category, city, MIN(profit) AS Minprofit FROM vephlaproject.orders
WHERE city = 'Lancaster'
GROUP BY profit
ORDER BY 4;

-- Which product subcategory has the highest average profit in Australia
SELECT Sub_category, AVG(profit) AS AustraliaAvg FROM vephlaproject.orders
WHERE country = 'Australia'
GROUP BY sub_category
ORDER BY 2 DESC;

-- Most Valuable Customers
SELECT customer_name, product_name, MAX(profit) FROM vephlaproject.orders
GROUP BY customer_name
ORDER BY MAX(profit) DESC
LIMIT 10;

-- Most Valuable Customers & What They Purchase
SELECT customer_name, product_name, MAX(profit) FROM vephlaproject.orders
GROUP BY customer_name
ORDER BY MAX(profit) DESC
LIMIT 10;

-- 10 Most Valuable Customers & What They Purchase.
SELECT customer_name, product_name, MAX(profit) FROM vephlaproject.orders
GROUP BY customer_name
ORDER BY MAX(profit) DESC
LIMIT 10;