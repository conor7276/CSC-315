-- Modify the example to list 30 orders which destination is North America
-- and all the orderID is greater than 15464 start from the 12th order



SELECT Id, ShipCountry
FROM 'Order'
WHERE ShipCountry IN ('USA','Mexico','Canada') AND Id > 15464
ORDER BY Id ASC
LIMIT 30 OFFSET 12;






-- 15526|Mexico
-- 15537|Mexico
-- 15544|USA
-- 15545|Mexico
-- 15548|USA
-- 15551|USA
-- 15554|USA
-- 15556|USA
-- 15559|USA
-- 15562|USA
-- 15566|Canada
-- 15575|USA
-- 15576|USA
-- 15577|USA
-- 15578|USA
-- 15585|USA
-- 15591|Canada
-- 15594|USA
-- 15602|Canada
-- 15603|Mexico
-- 15606|Canada
-- 15612|Mexico
-- 15617|USA
-- 15618|USA
-- 15620|Canada
-- 15623|Mexico
-- 15626|USA
-- 15628|Canada
-- 15629|Mexico
-- 15631|USA