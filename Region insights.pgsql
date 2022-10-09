--regions the company has stores in
SELECT region_name
from data_sci.company_regions;
--the company has branches in 7 regions


--countries and regions with a company branch
select  country_name, region_name
from data_sci.company_regions
order by country_name asc, country_name asc;


--regions with the highest salaries
select cr.region_name, concat('$',max(e.salary))
from data_sci.company_regions cr
join data_sci.employees e on cr.id=e.region_id
group by cr.region_name

--high salary earners and where they WORK
select initcap(e.last_name),concat('$', e.salary),e.job_title, cd.department_name, cr.region_name
from data_sci.employees e
join data_sci.company_departments cd on cd.id=e.department_id
join data_sci.company_regions cr on cr.id=e.region_id
where e.salary>100000
order by e.salary desc
