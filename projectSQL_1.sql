--ex 1--
SELECT SUM(Value) FROM milk_production WHERE Year = 2023;

--ex 2--
SELECT 
value
,year
from coffee_production cp 
where year =2015;

--ex 3--
SELECT AVG(Value) FROM honey_production WHERE Year = 2022;

--ex 4--
SELECT 
State_ANSI
,state
FROM state_lookup
WHERE State = 'IOWA';

--ex 5--
SELECT MAX(Value) AS Highest_Yogurt_Production
FROM yogurt_production
WHERE Year = 2022;

--ex 6--
SELECT COUNT(*) AS Count
FROM (
    SELECT DISTINCT State_ANSI FROM honey_production WHERE Year = 2022
    INTERSECT
    SELECT DISTINCT State_ANSI FROM milk_production WHERE Year = 2022
) AS states_with_both
WHERE State_ANSI = 35;

--ex 7--
SELECT SUM(y.Value)
FROM yogurt_production y
WHERE y.Year = 2022 AND y.State_ANSI IN (
    SELECT DISTINCT c.State_ANSI FROM cheese_production c WHERE c.Year = 2022
);

--notes--

SELECT DISTINCT Year, Value FROM milk_production WHERE Year = 2023 LIMIT 10;

SELECT DISTINCT Commodity_ID FROM milk_production;

SELECT SUM(Value)/1000 AS Milk_Production_K_Tons
FROM milk_production
WHERE Year = 2023;

PRAGMA table_info(yogurt_production);
PRAGMA table_info(cheese_production);

SELECT SUM(y.Value) 
FROM yogurt_production y
INNER JOIN cheese_production c ON y.State_ANSI = c.State_ANSI
WHERE y.Year = 2022 AND c.Year = 2022;


1. 91812000000
2. 6,600,000
3. 3133275
4. 19
5. 793,256,000
6. no
7. 15210.0


SELECT Year, Value FROM milk_production WHERE Year = 2023 ORDER BY Value DESC;

SELECT SUM(Value) AS Total_Milk_Production
FROM milk_production
WHERE Year = 2023;

SELECT SUM(CAST(REPLACE(Value, ',', '') AS INTEGER)) AS Total_Milk_Production
FROM milk_production
WHERE Year = 2023;

SELECT AVG(CAST(REPLACE(Value, ',', '') AS REAL)) AS Avg_Honey_Production
FROM honey_production
WHERE Year = 2022;
