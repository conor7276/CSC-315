
SELECT Category.CategoryName, COUNT(Product.Id), ROUND(AVG(Product.UnitPrice),2), MIN(Product.UnitPrice), MAX(Product.UnitPrice), SUM(Product.UnitsOnOrder)
FROM Category, Product
WHERE Category.ID = Product.CategoryID
GROUP BY Category.ID
HAVING COUNT(Product.ID) > 10;


-- C:\Users\conor\OneDrive\Desktop\school\2023 Spring\CSC-315\Homework\Homework5>sqlite3 northwind.db ".read hw5.sql"
-- Beverages|12|37.98|4.5|263.5|60
-- Condiments|12|23.06|10|43.9|170
-- Confections|13|25.16|9.2|81|180
-- Seafood|12|20.68|6|62.5|120