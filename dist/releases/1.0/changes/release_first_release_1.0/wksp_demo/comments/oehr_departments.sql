-- liquibase formatted sql
-- changeset wksp_demo:1776783548289 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/comments/oehr_departments.sql
-- sqlcl_snapshot src/database/wksp_demo/comments/oehr_departments.sql:null:9f902259b159ce01dc201800395431e2dd94f879:create

comment on table oehr_departments is
    'Departments table that shows details of departments where employees work. Contains 27 rows references with oehr_locations, oehr_employees, and oehr_job_history tables.'
    ;

comment on column oehr_departments.department_id is
    'Primary key column of oehr_departments table.';

comment on column oehr_departments.department_name is
    'A not null column that shows name of a department. Administration, Marketing, Purchasing, 
Human Resources, Shipping, IT, Executive, Public Relations, Sales, Finance, and Accounting. ';

comment on column oehr_departments.location_id is
    'Location id where a department is located. Foreign key to location_id column of oehr_locations table.';

comment on column oehr_departments.manager_id is
    'Manager_id of a department. Foreign key to employee_id column of oehr_employees table. 
The manager_id column of the oehr_employee table references this column.';

