-- liquibase formatted sql
-- changeset WKSP_DEMO:1777010704335 stripComments:false  logicalFilePath:release_firstrelease_1.0/wksp_demo/tables/dept.sql
-- sqlcl_snapshot src/database/wksp_demo/tables/dept.sql:null:245e7ca8d45d1c55cfaaf9874b7de077b85dac5f:create

create table dept (
    id              number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') not null enable,
    department_name varchar2(255 char),
    location        varchar2(4000 char)
);

alter table dept
    add constraint dept_id_pk primary key ( id )
        using index enable;

