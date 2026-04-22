comment on table oehr_employees is
    'oehr_employees table. Contains 107 rows. References with oehr_departments, 
oehr_jobs, oehr_job_history tables. Contains a self reference.';

comment on column oehr_employees.commission_pct is
    'Commission percentage of the employee Only employees in sales department elgible for commission percentage';

comment on column oehr_employees.department_id is
    'Department id where employee works foreign key to department_id column of the oehr_departments table';

comment on column oehr_employees.email is
    'Email id of the employee';

comment on column oehr_employees.employee_id is
    'Primary key of oehr_employees table.';

comment on column oehr_employees.first_name is
    'First name of the employee. A not null column.';

comment on column oehr_employees.hire_date is
    'Date when the employee started on this job. A not null column.';

comment on column oehr_employees.job_id is
    'Current job of the employee foreign key to job_id column of the oehr_jobs table. A not null column.';

comment on column oehr_employees.last_name is
    'Last name of the employee. A not null column.';

comment on column oehr_employees.manager_id is
    'Manager id of the employee has same domain as manager_id in 
oehr_departments table. Foreign key to employee_id column of oehr_employees table.
(useful for reflexive joins and CONNECT BY query)';

comment on column oehr_employees.phone_number is
    'Phone number of the employee includes country code and area code';

comment on column oehr_employees.salary is
    'Monthly salary of the employee. Must be greater than zero (enforced by constraint oehr_emp_salary_min)';


-- sqlcl_snapshot {"hash":"5acef732884b2100f90200bf0d235a28c5b56583","type":"COMMENT","name":"oehr_employees","schemaName":"wksp_demo","sxml":""}