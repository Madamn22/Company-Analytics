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

