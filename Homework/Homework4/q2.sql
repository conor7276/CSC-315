SELECT ShipVia, COUNT(ShipVia)
FROM 'Order'
WHERE ShippedDate > RequiredDate
GROUP BY ShipVia;


-- PS C:\Users\conor\OneDrive\Desktop\school\2023 Spring\CSC-315\Homework\Homework4> sqlite3 northwind.db ".read q2.sql"
-- 1|1307
-- 2|1311
-- 3|1335