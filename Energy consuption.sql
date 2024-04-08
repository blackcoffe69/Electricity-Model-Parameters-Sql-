create database `2023 v1 model parameters original 6-28-2022.csv`;

# Display the table

select * from `2023 v1 model parameters original 6-28-2022.csv`;

# Dropping Columns not needed to conduct analysis

ALTER TABLE `2023 v1 model parameters original 6-28-2022.csv`
DROP COLUMN TechDetail2;

# Dropping Columns not needed to conduct analysis

ALTER TABLE `2023 v1 model parameters original 6-28-2022.csv`
DROP COLUMN ResourceDetail2;

# Dropping Columns not needed to conduct analysis

ALTER TABLE `2023 v1 model parameters original 6-28-2022.csv`
DROP COLUMN Notes;

#  Unique values for the Technology column 

SELECT DISTINCT Technology
FROM `2023 v1 model parameters original 6-28-2022.csv`;

#  Unique values for the Parameter column 

SELECT DISTINCT Parameter
FROM `2023 v1 model parameters original 6-28-2022.csv`;

# Total count of Paramter

SELECT DISTINCT Count(Parameter)
FROM `2023 v1 model parameters original 6-28-2022.csv`;

# count of how many distinct values present in Technology

SELECT COUNT(DISTINCT Technology) AS Distinct_Technology_Count
FROM `2023 v1 model parameters original 6-28-2022.csv`;

# Minimum value of Energy used by customers

SELECT MIN(Value) AS min_value
FROM `2023 v1 model parameters original 6-28-2022.csv`;

# Average value of Energy used by customers

SELECT AVG(Value) AS average_value
FROM `2023 v1 model parameters original 6-28-2022.csv`;

# Maximum value of Energy used customers

Select Max(Value) as Max_value from `2023 v1 model parameters original 6-28-2022.csv`;

# Total number of Value of Energy by customers

SELECT SUM(Value) AS Total_Sum_Value
FROM `2023 v1 model parameters original 6-28-2022.csv`;

# Total Number of customers whose Energy is supplied by Hydropower

SELECT COUNT(*) AS Hydropower_Count
FROM `2023 v1 model parameters original 6-28-2022.csv`
WHERE Technology = 'Hydropower';

# Customers whose Energy is supplied by Commercial scale battery storeage 

SELECT *
FROM `2023 v1 model parameters original 6-28-2022.csv`
WHERE Technology = 'Commercial Scale Battery Storage';



# Customers whose Energy is Supplied by Hydropower with value greater than 200,whose year is beyond 2020 with ResourceDetail "Lake"

SELECT *
FROM `2023 v1 model parameters original 6-28-2022.csv`
WHERE Technology = 'Hydropower'
AND Value > 200
AND Year > 2020
AND ResourceDetail = 'Lake';

# Customers Whose Parameter is Land acquisition with ParameterDetail,Technology,Value,scenario and Parameter

SELECT ParameterDetail, Technology, Value,Scenario,Parameter
FROM `2023 v1 model parameters original 6-28-2022.csv`
WHERE ParameterDetail = 'Land acquisition';

# Analyze Hydropower Potential, Development Indicators, Costs, and Lakes for Energy Sector Database Management.

SELECT Technology AS Hydropower,
       Parameter AS Development,
       Description AS Medium_Cost
FROM `2023 v1 model parameters original 6-28-2022.csv`
WHERE Value > 200
  AND ResourceDetail = 'Lake';

# Extract Hydropower, Development Metrics, Costs, and Lake Data for Energy Sector Analysis.

SELECT Value
FROM `2023 v1 model parameters original 6-28-2022.csv`
WHERE Technology = 'Hydropower'
  AND Parameter = 'Development'
  AND Description = 'Medium cost'
  AND Year > 2030;

# Determine Maximum Value of Hydropower Technology, Development Parameters, High Costs, Grouped by Scenario Details.

SELECT Scenario,
       MAX(Value) AS Maximum_Value
FROM `2023 v1 model parameters original 6-28-2022.csv`
WHERE Technology = 'Hydropower'
  AND Parameter = 'Development'
  AND Description = 'High cost'
GROUP BY Scenario;

# Aggregating data for 'Hydropower' technology, 'Development' parameters, and 'High cost' description. Group by scenario details, aggregating maximum values.

SELECT Scenario, Techdetail, Metric, Source, 
       MAX(Value) AS Maximum_Value
FROM `2023 v1 model parameters original 6-28-2022.csv`
WHERE Technology = 'Hydropower'
  AND Parameter = 'Development'
  AND Description = 'High cost'
GROUP BY Scenario, Techdetail, Metric, Source;


