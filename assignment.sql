-- How many people work in the Sales department?

SELECT
  COUNT(e.id)
FROM
  employee e
  JOIN
  department d
  ON e.department = d.id
WHERE
  d.dept_name = 'Sales';

-- List the names of all employees assigned to the 'Plan Christmas party' project.

SELECT
  e.emp_name as Full_Name,
  p.project_name as Project
FROM
  employee e
  JOIN
  employee_project ep
  ON e.id = ep.emp_id
  JOIN
  project p
  ON p.id = ep.project_id
WHERE
  p.project_name = 'Plan christmas party';

-- List the names of employees from the Warehouse department that are assigned to the 'Watch paint dry' project.

select
  e.emp_name as FULL_NAME,
  p.project_name as PROJECT_NAME,
  d.dept_name as DEPARTMENT
from
  employee e
  join
  employee_project ep 
  on e.id = ep.emp_id
  join 
  project p
  on p.id = ep.project_id
  join
  department d
  on e.department = d.id
where 
  p.project_name = 'Plan christmas party'
  and
  d.dept_name = 'Warehouse';

-- Which projects are the Sales department employees assigned to?

select
  e.emp_name as full_name,
  d.dept_name as department,
  p.project_name as project
from
  employee e
  join
  department d
  on e.department = d.id
  join
  employee_project ep
  on ep.emp_id = e.id
  join
  project p
  on p.id = ep.project_id
where
  d.dept_name = 'Sales';

-- List only the managers that are assigned to the 'Watch paint dry' project

select
  e.emp_name as full_name,
  d.dept_name as department_manager,
  p.project_name as project
from
  employee e
  join
  department d
  on e.department = d.id
  join
  employee_project ep
  on ep.emp_id = e.id
  join
  project p
  on ep.project_id = p.id
where
  p.project_name = 'Watch paint dry'
  and
  d.manager = e.id;