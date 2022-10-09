--regions the company has stores in
SELECT region_name
from data_sci.company_regions;
--the company has branches in 7 regions


--countries and regions with a company branch
select  country_name, region_name
from data_sci.company_regions
order by country_name asc, country_name asc;
