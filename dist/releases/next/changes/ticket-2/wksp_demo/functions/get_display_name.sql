-- liquibase formatted sql
-- changeset WKSP_DEMO:1776932728739 stripComments:false  logicalFilePath:ticket-2/wksp_demo/functions/get_display_name.sql
-- sqlcl_snapshot src/database/wksp_demo/functions/get_display_name.sql:null:181cfb242dc1dc96bbb8d87911a5395a3091af66:create

create or replace function get_display_name (
    p_ename in emp.first_name%type
) return varchar2 as
begin
    return initcap(p_ename);
end get_display_name;
/

