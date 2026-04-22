-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389407 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/tables/oehr_job_history.sql
-- sqlcl_snapshot src/database/wksp_demo/tables/oehr_job_history.sql:null:ba611c7578b2f7f79a6c74b8acfe16263a696cbb:create

create table oehr_job_history (
    employee_id   number(6, 0)
        constraint oehr_jhist_employee_nn not null enable,
    start_date    date
        constraint oehr_jhist_start_date_nn not null enable,
    end_date      date
        constraint oehr_jhist_end_date_nn not null enable,
    job_id        varchar2(10 byte)
        constraint oehr_jhist_job_nn not null enable,
    department_id number(4, 0)
);

alter table oehr_job_history
    add constraint oehr_jhist_date_interval check ( end_date >= start_date ) enable;

