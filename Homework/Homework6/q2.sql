SELECT * FROM(
    SELECT DISTINCT Employee.Id, Employee.FirstName, Employee.LastName, Employee.BirthDate, Territory.RegionId, Region.RegionDescription,
    dense_rank() OVER(Partition BY Region.Id ORDER BY Employee.BirthDate DESC) 'Rank'
    FROM Employee, EmployeeTerritory, Territory, Region
    WHERE Employee.Id = EmployeeTerritory.EmployeeId AND EmployeeTerritory.TerritoryId = Territory.Id AND Region.Id = Territory.RegionId
    ) AS t
WHERE t.rank <= 3


-- C:\Users\conor\OneDrive\Desktop\school\2023 Spring\CSC-315\Homework\Homework6>sqlite3 northwind.db ".read q2.sql"
-- 5|Steven|Buchanan|1987-03-04|1|Eastern|1
-- 2|Andrew|Fuller|1984-02-19|1|Eastern|2
-- 1|Nancy|Davolio|1980-12-08|1|Eastern|3
-- 6|Michael|Suyama|1995-07-02|2|Western|1
-- 7|Robert|King|1992-05-29|2|Western|2
-- 9|Anne|Dodsworth|1998-01-27|3|Northern|1
-- 8|Laura|Callahan|1990-01-09|3|Northern|2
-- 3|Janet|Leverling|1995-08-30|4|Southern|1