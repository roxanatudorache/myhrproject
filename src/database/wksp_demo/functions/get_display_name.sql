create or replace function get_display_name (
    p_ename in emp.first_name%type
) return varchar2 as
begin
    return initcap(p_ename);
end get_display_name;
/


-- sqlcl_snapshot {"hash":"181cfb242dc1dc96bbb8d87911a5395a3091af66","type":"FUNCTION","name":"GET_DISPLAY_NAME","schemaName":"WKSP_DEMO","sxml":""}