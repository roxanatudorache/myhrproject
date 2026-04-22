-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389422 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/tables/oehr_jobs.sql
-- sqlcl_snapshot src/database/wksp_demo/tables/oehr_jobs.sql:null:525fc19538c3c0a36297050995a681f2d48a6ca8:create

create table oehr_jobs (
    job_id     varchar2(10 byte),
    job_title  varchar2(35 byte)
        constraint oehr_job_title_nn not null enable,
    min_salary number(6, 0),
    max_salary number(6, 0)
);

alter table oehr_jobs
    add constraint oehr_job_id_pk primary key ( job_id )
        using index enable;

