-- liquibase formatted sql
-- changeset WKSP_DEMO:1776930210390 stripComments:false  logicalFilePath:ticket-2/wksp_demo/functions/get_display_name.sql
-- sqlcl_snapshot src/database/wksp_demo/functions/get_display_name.sql:null:545b32dabe2d521855ce715e7a719d5f6520506e:create

create or replace function wksp_demo.get_display_name (
    p_ename in emp.first_name%type
) return varchar2 as
begin
    return initcap(p_ename);
end get_display_name;
/

