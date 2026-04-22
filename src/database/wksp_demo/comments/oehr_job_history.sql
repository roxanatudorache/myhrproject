comment on table oehr_job_history is
    'Table that stores job history of the employees. If an employee 
changes departments within the job or changes jobs within the department, 
new rows get inserted into this table with old job information of the 
employee. Contains a complex primary key: employee_id+start_date.
Contains 25 rows. References with oehr_jobs, oehr_employees, and oehr_departments tables.';

comment on column oehr_job_history.department_id is
    'Department id in which the employee worked in the past foreign key to deparment_id column in the oehr_departments table';

comment on column oehr_job_history.employee_id is
    'A not null column in the complex primary key employee_id+start_date.
Foreign key to employee_id column of the oehr_employee table';

comment on column oehr_job_history.end_date is
    'Last day of the employee in this job role. A not null column. Must be 
greater than the start_date of the oehr_job_history table. 
(enforced by constraint oehr_jhist_date_interval)';

comment on column oehr_job_history.job_id is
    'Job role in which the employee worked in the past foreign key to 
job_id column in the oehr_jobs table. A not null column.';

comment on column oehr_job_history.start_date is
    'A not null column in the complex primary key employee_id+start_date. 
Must be less than the end_date of the oehr_job_history table. (enforced by 
constraint oehr_jhist_date_interval)';


-- sqlcl_snapshot {"hash":"b3c9e2a40fbb14103821822357e378420b7e7270","type":"COMMENT","name":"oehr_job_history","schemaName":"wksp_demo","sxml":""}