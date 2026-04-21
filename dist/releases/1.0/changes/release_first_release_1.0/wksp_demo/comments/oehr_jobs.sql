-- liquibase formatted sql
-- changeset wksp_demo:1776783548318 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/comments/oehr_jobs.sql
-- sqlcl_snapshot src/database/wksp_demo/comments/oehr_jobs.sql:null:cfb0513922486cd188490ad58fc1aaaa9dcfe599:create

comment on table oehr_jobs is
    'jobs table with job titles and salary ranges. Contains 19 rows.
References with oehr_employees and oehr_job_history table.';

comment on column oehr_jobs.job_id is
    'Primary key of jobs oehr_table.';

comment on column oehr_jobs.job_title is
    'A not null column that shows job title, e.g. AD_VP, FI_ACCOUNTANT';

comment on column oehr_jobs.max_salary is
    'Maximum salary for a job title';

comment on column oehr_jobs.min_salary is
    'Minimum salary for a job title.';

