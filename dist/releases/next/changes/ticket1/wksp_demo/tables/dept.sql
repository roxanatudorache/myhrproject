-- liquibase formatted sql
-- changeset WKSP_DEMO:1776927867539 stripComments:false  logicalFilePath:ticket1/wksp_demo/tables/dept.sql
-- sqlcl_snapshot src/database/wksp_demo/tables/dept.sql:null:5857b40e1f7a8a7aaead05dae70193b3920e08b2:create

create table wksp_demo.dept (
    id              number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') not null enable,
    department_name varchar2(255 char),
    location        varchar2(4000 char)
);

alter table wksp_demo.dept
    add constraint dept_id_pk primary key ( id )
        using index enable;

