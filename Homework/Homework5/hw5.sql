-- SELECT CategoryName, COUNT(CategoryName), AVG(UnitPrice), MIN(UnitPrice), MAX(UnitPrice), COUNT(CategoryID)
-- FROM Category, Product
-- WHERE UnitsOnOrder > 10
-- ORDER BY CategoryID ASC;

--SELECT CategoryName, COUNT(ProductName)
--FROM Category, Product
--WHERE Category.ID = Product.CategoryID;

-- SELECT Category.Id, Category.CategoryName, Product.Id, Product.ProductName
-- FROM Category, Product
-- WHERE Category.ID = Product.CategoryID;

-- SELECT ProductName, COUNT(ProductName)
-- FROM(
--     SELECT Category.Id, Category.CategoryName, Product.Id, Product.ProductName, Product.CategoryId
--     FROM Category, Product
--     WHERE Category.Id = Product.CategoryId)
-- WHERE Product.CategoryId = Category.Id

-- SELECT Category.Id AS CID, Category.CategoryName AS CNAME, Product.Id AS PID, Product.ProductName AS PNAME
-- FROM Category, Product
-- WHERE CID = Product.CategoryID;

SELECT Category.CategoryName, COUNT(Product.ProductName)
FROM Category, Product
WHERE Category.Id = Product.CategoryID;