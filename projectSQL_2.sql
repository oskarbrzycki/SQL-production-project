--ex 1--
SELECT 
count (distinct State_ANSI) as count_states
from cheese_production cp 
where year = 2023 and period ='APR' and value>100000000;
--ans = 14

--ex 2--
SELECT SUM(CAST(REPLACE(Value, ',', '') AS INTEGER)) AS total_coffee
FROM coffee_production cp 
WHERE Year = 2011;
--ans= 7600000

--ex 3--
SELECT AVG(CAST(REPLACE(Value, ',', '') AS REAL)) AS Avg_Honey_Production
FROM honey_production
WHERE Year = 2022;
--ans = 3133275

--ex 4--
SELECT 
state_ANSI
,State
from state_lookup sl 
where state= 'FLORIDA';
--ans = 12

--ex 5--
SELECT s.State, c.Value
FROM state_lookup s
INNER JOIN cheese_production c ON s.State_ANSI = c.State_ANSI
WHERE c.Year = 2023 AND c.Period = 'APR'
ORDER BY c.Value DESC;
--ans = 4,889,000

--ex 6--
SELECT SUM(CAST(Value AS REAL)) AS Total_Yogurt_Production
FROM yogurt_production
WHERE Year = 2022
AND State_ANSI IN (
    SELECT DISTINCT State_ANSI FROM cheese_production WHERE Year = 2023
);
--ans= 1170

--ex 7--
SELECT COUNT(*) 
FROM state_lookup 
WHERE state_ANSI NOT IN (
    SELECT DISTINCT State_ANSI FROM milk_production WHERE Year = 2023
);
--ans= 26

--ex 8--
SELECT CASE WHEN EXISTS (
    SELECT 1 FROM cheese_production 
    WHERE Year = 2023 AND Period = 'Apr' 
    AND State_ANSI = (SELECT State_ANSI FROM state_lookup WHERE State = 'Delaware'))
THEN 'Yes' ELSE 'No' END AS Delaware_Cheese_Production;
--ans= no

--ex 9--
SELECT AVG(Value) AS Avg_Coffee_Production 
FROM coffee_production
WHERE Year IN (
    SELECT DISTINCT Year FROM honey_production WHERE Value > 1000000
);
--ans= 5.966666666666667







