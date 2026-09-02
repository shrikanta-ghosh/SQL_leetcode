# Write your MySQL query statement below
SELECT Product.product_id, Product.product_name FROM Product
INNER JOIN Sales
ON Product.product_id = Sales.product_id
GROUP BY product_id
HAVING MAX(Sales.sale_date)<="2019-03-31" AND MIN(Sales.sale_date)>="2019-01-01"