-- liquibase formatted sql
-- changeset WKSP_DEMO:1776927867568 stripComments:false  logicalFilePath:ticket1/wksp_demo/tables/emp.sql
-- sqlcl_snapshot src/database/wksp_demo/tables/emp.sql:null:df6e6005498e3b30087084cdc4742cb1ab66729b:create

create table wksp_demo.emp (
    id         number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') not null enable,
    first_name varchar2(255 char),
    last_name  varchar2(255 char),
    email      varchar2(255 char),
    dep_id     number
);

alter table wksp_demo.emp
    add constraint emp_id_pk primary key ( id )
        using index enable;

