
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
