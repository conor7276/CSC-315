SELECT ShipVia, COUNT(ShipVia)
FROM 'Order'
GROUP BY ShipVia;

-- PS C:\Users\conor\OneDrive\Desktop\school\2023 Spring\CSC-315\Homework\Homework4> sqlite3 northwind.db ".read q1.sql"
-- 1|5572
-- 2|5592
-- 3|5654