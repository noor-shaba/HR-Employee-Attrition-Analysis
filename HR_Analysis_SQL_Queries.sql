describe hr_data;
select COUNT(*) AS Total_Employees FROM hr_analysis.hr_data;
select count(*) as Employees_left FROM hr_analysis.hr_data where ATTRITION ='Yes';
select Attrition,COUNT(*) AS Employees from
hr_analysis.hr_data 
group by Attrition;
select ROUND((237/1470)*100,2) AS attrition_rate;
SELECT * FROM hr_analysis.hr_data;
select Department, 
COUNT(*) AS Total_Employees from hr_analysis.hr_data 
group by Department order by Total_Employees DESC;
SELECT Department,
SUM(case when Attrition ='Yes' THEN 1 ELSE 0 END) AS Employees_left
from hr_analysis.hr_data
group by Department
order by Employees_left desc;


SELECT * FROM hr_analysis.hr_data;
use hr_data;
select count(*) as Total_Employess from hr_analysis.hr_data;
select JobRole,
round(AVG(MonthlyIncome),2) as Avg_Monthly_Income FROM
hr_analysis.hr_data group by JobRole
order by Avg_Monthly_Income DESC;
select JobRole,
count(*) as Total_Employees from hr_analysis.hr_data
group by JobRole
order by Total_Employees desc;
select JobRole,
SUM(CASE when Attrition ='Yes' then 1 else 0 end) as Employees_Left from hr_analysis.hr_data
group by JobRole
Order by Employees_Left desc;  
SELECT JobRole, count(*) as Total_Employees, 
sum( case when Attrition ='Yes' then 1 else 0 end) as Employees_Left,
round(sum(case when Attrition ='Yes' then 1 else 0 end)*100/count(*),2) as 
Attrition_Rate from hr_analysis.hr_data 
group by JobRole
order by Attrition_Rate desc;
SELECT CASE
WHEN Age < 25 then 'under 25'
when Age BETWEEN 25 AND 34 THEN '25-34'
WHEN Age BETWEEN 35 AND 44 THEN '35-44'
when Age between 45 AND 55 THEN '45-54'
ELSE'55+'
end as  Age_Group,
SUM(case when Attrition = 'Yes' then 1 else 0 end) as Employees_Left
from hr_analysis.hr_data
group by Age_group
order by Employees_Left desc;

select case WHEN Age < 25 then 'under 25'
when Age BETWEEN 25 AND 34 THEN '25-34'
WHEN Age BETWEEN 35 AND 44 THEN '35-44'
when Age between 45 AND 55 THEN '45-54'
ELSE'55+'
end as  Age_Group,
SUM(case when Attrition = 'Yes' then 1 else 0 end) as Employees_Left
from hr_analysis.hr_data
group by Age_group
order by Employees_Left desc;
select 
min(Age) as Mininmum_Age,
max(Age) as Maximum_Age from
hr_analysis.hr_data;
select avg(MonthlyIncome) as Average_Monthly_Income from 
hr_analysis.hr_data;
select
min(MonthlyIncome)as MINIMUM_INCOME,
MAX(MonthlyIncome)as MAXIMUM_INCOME FROM
hr_analysis.hr_data;
select case WHEN Age < 25 then 'under 25'
when Age BETWEEN 25 AND 34 THEN '25-34'
WHEN Age BETWEEN 35 AND 44 THEN '35-44'
when Age between 45 AND 55 THEN '45-54'
ELSE'55+'
end as  Age_Group,
SUM(case when Attrition = 'Yes' then 1 else 0 end) as Employees_Left
from hr_analysis.hr_data
group by Age_group
order by Employees_Left desc;



select case 
when MonthlyIncome <3000 then 'low'
when MonthlyIncome between 3000 and 5999 then'medium'
when MonthlyIncome between 6000 and 9999 then'high'
else 'very high'
end as Salary_group,
count(*) as Total_Employees,
sum(case when Attrition ='yes' then 1 else 0 end) as Employees_Left,
round(sum(case when Attrition = 'Yes' then 1 else 0 end) * 100 / count(*),2) as Attrition_Rate 
from hr_analysis.hr_data
group by Salary_group
order by Attrition_Rate desc; 


SELECT * FROM hr_analysis.hr_data;
use hr_data;
select count(*) as Total_Employess from hr_analysis.hr_data;
select JobRole,
round(AVG(MonthlyIncome),2) as Avg_Monthly_Income FROM
hr_analysis.hr_data group by JobRole
order by Avg_Monthly_Income DESC;
select JobRole,
count(*) as Total_Employees from hr_analysis.hr_data
group by JobRole
order by Total_Employees desc;
select JobRole,
SUM(CASE when Attrition ='Yes' then 1 else 0 end) as Employees_Left from hr_analysis.hr_data
group by JobRole
Order by Employees_Left desc;  
SELECT JobRole, count(*) as Total_Employees, 
sum( case when Attrition ='Yes' then 1 else 0 end) as Employees_Left,
round(sum(case when Attrition ='Yes' then 1 else 0 end)*100/count(*),2) as 
Attrition_Rate from hr_analysis.hr_data 
group by JobRole
order by Attrition_Rate desc;
SELECT CASE
WHEN Age < 25 then 'under 25'
when Age BETWEEN 25 AND 34 THEN '25-34'
WHEN Age BETWEEN 35 AND 44 THEN '35-44'
when Age between 45 AND 55 THEN '45-54'
ELSE'55+'
end as  Age_Group,
SUM(case when Attrition = 'Yes' then 1 else 0 end) as Employees_Left
from hr_analysis.hr_data
group by Age_group
order by Employees_Left desc;

select case WHEN Age < 25 then 'under 25'
when Age BETWEEN 25 AND 34 THEN '25-34'
WHEN Age BETWEEN 35 AND 44 THEN '35-44'
when Age between 45 AND 55 THEN '45-54'
ELSE'55+'
end as  Age_Group,
SUM(case when Attrition = 'Yes' then 1 else 0 end) as Employees_Left
from hr_analysis.hr_data
group by Age_group
order by Employees_Left desc;
select 
min(Age) as Mininmum_Age,
max(Age) as Maximum_Age from
hr_analysis.hr_data;
select avg(MonthlyIncome) as Average_Monthly_Income from 
hr_analysis.hr_data;
select
min(MonthlyIncome)as MINIMUM_INCOME,
MAX(MonthlyIncome)as MAXIMUM_INCOME FROM
hr_analysis.hr_data;
select case WHEN Age < 25 then 'under 25'
when Age BETWEEN 25 AND 34 THEN '25-34'
WHEN Age BETWEEN 35 AND 44 THEN '35-44'
when Age between 45 AND 55 THEN '45-54'
ELSE'55+'
end as  Age_Group,
SUM(case when Attrition = 'Yes' then 1 else 0 end) as Employees_Left
from hr_analysis.hr_data
group by Age_group
order by Employees_Left desc;



select case 
when MonthlyIncome <3000 then 'low'
when MonthlyIncome between 3000 and 5999 then'medium'
when MonthlyIncome between 6000 and 9999 then'high'
else 'very high'
end as Salary_group,
count(*) as Total_Employees,
sum(case when Attrition ='yes' then 1 else 0 end) as Employees_Left,
round(sum(case when Attrition = 'Yes' then 1 else 0 end) * 100 / count(*),2) as Attrition_Rate 
from hr_analysis.hr_data
group by Salary_group
order by Attrition_Rate desc; 


