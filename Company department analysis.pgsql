
--divisions and departments in the company
select division_name, department_name
from data_sci.company_departments
order by division_name;


--number of employees in each division and department using rollup
select division_name, department_name, count(last_name) as number_of_employees
from data_sci.company_departments cd
join data_sci.employees e on e.department_id=cd.id
group by ROLLUP( division_name,department_name) --shows subtotals 
order by division_name, department_name;



--division and department with the highest salary
select cd.division_name, cd.department_name,e.salary
from data_sci.company_departments cd
join data_sci.employees e on cd.id=e.department_id
order by salary DESC
limit 1; -- health department in the domestic division has the highest salary


--division and department with the lowest salary
select cd.division_name, cd.department_name,e.salary
from data_sci.company_departments cd
join data_sci.employees e on cd.id=e.department_id
order by salary asc
limit 1; -- the "other" department in the non-categorized division has the lowest salary


--highest salaries in each department_id
select cd.department_name, max(e.salary) as highest_salaries_per_department
from data_sci.company_departments cd 
join data_sci.employees e on e.department_id=cd.id
group by cd.department_name
order by max(e.salary) desc
--health has the highest salary
--no one has a salary higher than $150,000. why?
