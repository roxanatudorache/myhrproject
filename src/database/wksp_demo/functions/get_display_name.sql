create or replace function wksp_demo.get_display_name (
    p_ename in emp.first_name%type
) return varchar2 as
begin
    return initcap(p_ename);
end get_display_name;
/


-- sqlcl_snapshot {"hash":"545b32dabe2d521855ce715e7a719d5f6520506e","type":"FUNCTION","name":"GET_DISPLAY_NAME","schemaName":"WKSP_DEMO","sxml":""}