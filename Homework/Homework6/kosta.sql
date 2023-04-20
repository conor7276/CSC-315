SELECT Id, FirstName,LastName, BirthDate, RegionId, RegionDescription,dense_rank() over (Partition by RegionId order by BirthDate desc) rank
FROM ( SELECT e.Id, e.FirstName, e.LastName, e.BirthDate, t.RegionId, r.RegionDescription
FROM Employee e
JOIN EmployeeTerritory et ON e.Id = et.EmployeeId
JOIN Territory t ON et.TerritoryId = t.Id
JOIN Region r ON t.RegionId = r.Id
WHERE (
    SELECT COUNT(DISTINCT BirthDate)
    FROM Employee e2
    JOIN EmployeeTerritory et2 ON e2.Id = et2.EmployeeId
    JOIN Territory t2 ON et2.TerritoryId = t2.Id
    JOIN Region r2 ON t2.RegionId = r2.Id
    WHERE r2.Id = r.Id AND e2.BirthDate >= e.BirthDate
) <= 3)
Group by Id;