select e.emp_no,e.first_name,e.last_name,t.title,t.from_date,t.to_date
into retirement_titles
from employees e inner join titles t on e.emp_no=t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by e.emp_no,t.from_date,t.to_date
select * from retirement_titles

select distinct on (rt.emp_no) emp_no,first_name,last_name,title into unique_titles
from retirement_titles rt 
order by emp_no,to_date desc


select count(*) ,title into retiring_titles
from unique_titles 
group by title
order by count(*) desc 


select distinct on (e.emp_no) e.emp_no,e.first_name,e.last_name,e.birth_date,de.from_date,de.to_date,t.title into
mentorship_eligibilty
from employees e inner join dept_emp de on e.emp_no= de.emp_no
inner join  titles t on e.emp_no=t.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
and de.to_date ='9999-01-01'
order by emp_no,to_date desc



