--total number of employees in the company
select count(*) from data_sci.employees;

--all about the employee with the lowest salary
select initcap(last_name), initcap(cd.department_name), initcap(cr.region_name), concat('$',salary) --initcap to capitalize first letter
from data_sci.employees e
join data_sci.company_departments cd on cd.id = e.department_id
join data_sci.company_regions cr on cr.id=e.region_id
order by salary 
limit 1; 

--all about the employee with the highest salary
select initcap(last_name), initcap(cd.department_name), initcap(cr.region_name), concat('$',salary)
from data_sci.employees e
join data_sci.company_departments cd on cd.id = e.department_id
join data_sci.company_regions cr on cr.id=e.region_id
order by salary desc
limit 1; 

--oldest employee in the company (by start date)
select last_name, job_title, trunc((cast(now() as date)-start_date)/365.25,1)as year -- assumes all dates are in the past
from data_sci.employees
order by year DESC
limit 1; --why is he still in a lower role?


--youngest employee in the company (by start date)
select last_name, start_date, job_title, trunc((cast(now() as date)-start_date)/365.25,1)as year
from data_sci.employees
order by year asc
limit 1; -- employee hasn't started yet/start date is in the future. Is this an error?

