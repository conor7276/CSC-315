SELECT ShipVia, ROUND(COUNT(CASE WHEN ShippedDate > RequiredDate THEN 1 ELSE NULL END) * 100.0 / COUNT(*), 2) as OrderPercent
FROM 'Order'
GROUP BY ShipVia



-- PS C:\Users\conor\OneDrive\Desktop\school\2023 Spring\CSC-315\Homework\Homework4> sqlite3 northwind.db ".read q3.sql"
-- 1|23.46
-- 2|23.44
-- 3|23.61