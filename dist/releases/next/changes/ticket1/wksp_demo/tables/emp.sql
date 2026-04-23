-- liquibase formatted sql
-- changeset WKSP_DEMO:1776932311722 stripComments:false  logicalFilePath:ticket1/wksp_demo/tables/emp.sql
-- sqlcl_snapshot src/database/wksp_demo/tables/emp.sql:null:3aae2355c1a61c15d9a96d1dd4c3e077353fc7bf:create

create table emp (
    id         number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') not null enable,
    first_name varchar2(255 char),
    last_name  varchar2(255 char),
    email      varchar2(255 char),
    dep_id     number
);

alter table emp
    add constraint emp_id_pk primary key ( id )
        using index enable;

