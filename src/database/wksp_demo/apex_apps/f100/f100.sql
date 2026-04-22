prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.15'
,p_default_workspace_id=>9200237331090794
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEMO'
);
end;
/
 
prompt APPLICATION 100 - Demonstration - HR
--
-- Application Export:
--   Application:     100
--   Name:            Demonstration - HR
--   Exported By:     WKSP_DEMO
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     47
--       Items:                  112
--       Validations:              2
--       Processes:               47
--       Regions:                111
--       Buttons:                 81
--       Dynamic Actions:         32
--     Shared Components:
--       Logic:
--         App Settings:           2
--         Build Options:          9
--       Navigation:
--         Lists:                 10
--         Breadcrumbs:            1
--           Entries:              8
--       Security:
--         Authentication:         1
--         Authorization:          3
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                  14
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Excluded
--   Version:         24.2.15
--   Instance ID:     9199967132778788
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_DEMO')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Demonstration - HR')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'DEMONSTRATION-HR')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'D8E854548427427104ED2FCE376AC07CC5E675FADE0BA3251A3921F82CFBCC1F'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(10863550422562171)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Demonstration - HR'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_imp.id(10870717449562254)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Demonstration - HR'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>6
,p_version_scn=>46799431983724
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'default'
,p_pwa_is_push_enabled=>'Y'
,p_pwa_push_credential_id=>wwv_flow_imp.id(11355019881569504)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(100)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(10864383628562176)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(10865433769562203)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/app_100_push_notifications_credentials_4
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(11355019881569504)
,p_name=>'App 100 Push Notifications Credentials (4)'
,p_static_id=>'App_100_Push_Notifications_Credentials_4_'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(10864383628562176)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>46799431909849
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10886924159562316)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10888478517562323)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-dashboard'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10898460942562347)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Customers'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-search'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10926513727562660)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Order Search'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-cards'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10933268560562679)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10959084285562820)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Orders Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-calendar-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10961058006562825)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Employees'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-search'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11359365392779755)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Jobs'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11325867233569435)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(10870666062562254)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(10865433769562203)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>46799252012328
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11322085626569427)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11322464391569428)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10050:&APP_SESSION.::&DEBUG.:RP,10050:P10050_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'apex_util.feedback_enabled'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(10868127274562247)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11322791030569428)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'About'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(10868681731562247)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11323279509569430)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Help'
,p_list_item_link_target=>'f?p=&APP_ID.:10061:&APP_SESSION.::&DEBUG.::P10061_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(11322791030569428)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(10868681731562247)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11323600235569431)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(11322791030569428)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11324035556569431)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'About Page'
,p_list_item_link_target=>'f?p=&APP_ID.:10060:&APP_SESSION.::&DEBUG.:10060::'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(11322791030569428)
,p_required_patch=>wwv_flow_imp.id(10868681731562247)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11324358248569432)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11354705688569501)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Settings'
,p_list_item_link_target=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-gear'
,p_parent_list_item_id=>wwv_flow_imp.id(11324358248569432)
,p_required_patch=>wwv_flow_imp.id(11348324676569485)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11324808020569433)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(11324358248569432)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11325202207569434)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(11324358248569432)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11147367711569025)
,p_name=>'Page Navigation'
,p_list_status=>'PUBLIC'
,p_version_scn=>46799251955275
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11147758057569025)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-dashboard'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11148194019569026)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Customers'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-search'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11148535360569026)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Order Search'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-cards'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11148977814569027)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11149361252569028)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Orders Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-calendar-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11149718175569028)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Employees'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-search'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/application_configuration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11326972415569437)
,p_name=>'Application Configuration'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(10868350162562247)
,p_version_scn=>46799252004862
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11327384727569438)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Configuration Options'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>'Enable or disable application features'
,p_required_patch=>wwv_flow_imp.id(10868350162562247)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_interface
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11327670841569439)
,p_name=>'User Interface'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(10868750338562247)
,p_version_scn=>46799252005020
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11328089765569439)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:10020::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_imp.id(10868750338562247)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11328377579569440)
,p_name=>'Activity Reports'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(10868086814562247)
,p_version_scn=>46799252005666
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11328749079569441)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&APP_SESSION.::&DEBUG.:10030::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'View application activity metrics'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11329119582569441)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:10031::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report of page views aggregated by user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11329530232569442)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Application Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:10032::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report of errors logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11329969758569442)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Performance'
,p_list_item_link_target=>'f?p=&APP_ID.:10033:&APP_SESSION.::&DEBUG.:10033::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>'Report of activity and performance by application page'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11330314847569444)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Views'
,p_list_item_link_target=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RR,10034::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report of each page view by user including date of access and elapsed time'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11330744681569445)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Automations Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10035:&APP_SESSION.::&DEBUG.:RR,10035::'
,p_list_item_icon=>'fa-gears'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_appl_automations a, apex_automation_log l',
'where a.automation_id = l.automation_id',
'and l.application_id = :APP_ID'))
,p_list_text_01=>'Report of automation executions and messages logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11331080958569445)
,p_name=>'Access Control'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(10867929119562247)
,p_version_scn=>46799252005863
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11331423146569446)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10041:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11331876869569446)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_list_item_link_target=>'f?p=&APP_ID.:10040:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/feedback
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11332171058569447)
,p_name=>'Feedback'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(10868127274562247)
,p_version_scn=>46799252005963
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11332515071569447)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'User Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10053:&APP_SESSION.::&DEBUG.:10053::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>'Report of all feedback submitted by application users'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/application_administration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11332857640569447)
,p_name=>'Application Administration'
,p_list_status=>'PUBLIC'
,p_version_scn=>46799252006297
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11333228439569448)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Regions'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Manage component'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11333669655569448)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Countries'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Manage component'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11334072161569449)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Warehouses'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Manage component'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11334405139569449)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Products'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Manage component'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11334835681569450)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Jobs'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Manage component'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11335245618569450)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Departments'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Manage component'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_settings
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11351914581569494)
,p_name=>'User Settings'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(11348324676569485)
,p_version_scn=>46799252011558
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11352305802569495)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Push Notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>'Configure whether you want to receive push notifications on this device.'
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(11348076163569485)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF400000235494441547801EC544B6B135114FE72E74E629BA6C1FA806AC15A0C281850D46C0BBA29882B0517FE05D7E242E81F10C1952888B8F207B8726517BE70619180';
wwv_flow_imp.g_varchar2_table(2) := '8F463182691B2396C963F27226E6DC36D3CE70DB7B1B420B65025FCEF9CEBDE79C2F1F3361679EE43ABB09865DFE840242074207F41CE8B860E522266089882E1FD4DBAB25C0B12B983E3981CC89A32212776A168EB15550DEAF202D01349CB30805F462';
wwv_flow_imp.g_varchar2_table(3) := '6A94E146664A20953440AE8CD8255C19774191B868507C690930861378FBBD88F9FC32DEFDF80DE2A6D95DBA36DCE40CE4CAA36B69CC5E3A0E8AC4D78EB70C5A029C868D957A1B0B7F6CFCADB5C4B29CE5E279B62090B33A6249AC2B84925EA45C05A500';
wwv_flow_imp.g_varchar2_table(4) := 'C72E637A3289EBE7A73CA40F46D1A85AF850280B34BB02593486DB2FBEE1DEEB5F22924BAAE574AE14E0B61A389C18A2BB1EDAAD26EECC9CC6ECCC29815B175318AA95F0A958C5D3F92511C935AF618B442940D67B687418DC586FFDB26CE1FED5B3F878';
wwv_flow_imp.g_varchar2_table(5) := 'F38287879727E1D42BB2765F6D7D8AAFBC3D62D94D9C1B8FFB9A3247E2709B755F4D4694028C7812CF5E6565BD03A92905303306B6CFFFEB5E7E2E60EEEBD2CE08906D090AA23BE9BB73143C1027F7BCC22689D20179DFEABFE2C6B3A028E2E4DEC63BB2';
wwv_flow_imp.g_varchar2_table(6) := '5C4B40C4E0C8FE2C7A88702E9BD5574D4B004F8C21D78E7BE023FB912F55C47340CF42BE54ED6B39356909A08B412CF20378B3121558E46320971EBC2FA0870837832D52DEB780E03472E9F1C23FF4402E05EFC8F8C004C886EBD44201A1037BDF01D59B';
wwv_flow_imp.g_varchar2_table(7) := 'F01F0000FFFF7BBEF7BA000000064944415403006AE1197081DC1EBA0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10866598689562217)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801EC5D797055D779FF9DFB166D68979090089BF404C880242463833770834DDCC0386993A69DA6201CD725755AB7D34CA6E9A44E3369D3E9249D';
wwv_flow_imp.g_varchar2_table(2) := 'D89E64EC4E6C61B7FF642B4DA89D384E287613B0C15852580C088CC4AA7D5FDED35B6EBEEFBE2790AC85F7EEBD6FB9EF9D3BF7BBCBB9E73BE73BBFEFA7B3DE77A5406E12010308480219004FAA02924092058610900432049F549604921C308480249021';
wwv_flow_imp.g_varchar2_table(3) := 'F8A4B22490E48021047413C850AE5239691090044A1A57C6A7209240F1C13D697295044A1A57C6A7209240F1C13D697295044A1A57C6A7209240F1C13D69728D3D81C2806EF58B67B3EF6CBA545ABFBFADA2EEC57335B52F5DD852DB747EFB86A6B69DA9';
wwv_flow_imp.g_varchar2_table(4) := '205C562E33979D31602C189330A08B7994F8124855457DD3B93504D6EEDAFD6DDFAD696A7BB7B6A96D3243B10D7BE1BBE157714155941608F53780F88502FC341584CBCA65E6B233068C0563C2D88430FA0E63C6D88130441C37F247EC72AF7BA9ADB86E';
wwv_flow_imp.g_varchar2_table(5) := '7FDB2E02E29F6BF75F788364C00FE57D026B3F54EC13403D59E32091FBDC083842187D9E3163EC184392376A5F3AFF75AE9DEFF8DEE982B955A3131A3B02D15F8A0A6C51557C898AF265FACBF9289D7349E46E0C815C0D4B21FE819CF925BBE2D842F7C4';
wwv_flow_imp.g_varchar2_table(6) := '33638986AB4D79861B555FBCFA17DE75D4365D789CFE4ACE42E07F402422917B7410B847087190BA03EF534DFF18631F9D6C6EA51A5502D5BC7CAEDCE7CC3D0AA8FF41595691C83D260888D554D37FCF9F967B84BB0DD1CC326A0422C3AB45407987EA52';
wwv_flow_imp.g_varchar2_table(7) := 'EED744B30C32EDF91050D1A00A1CADD9DF76C77C518C86478540352F5EBC970C3F42C6959398B4CB647422502154FC86FEA01FD0A9BFA09AE9042243AB8512789D72951D64022141F65CFA837E2D1A3591A904AA7FE17A2619FA43022D9344EE89854026';
wwv_flow_imp.g_varchar2_table(8) := 'D544DF671F996996A904F23B47BF4BC65593C83D3111B823E423D3AC338D40B54DE7F7006237E496E00888DD415F9963A62904DAFC832B1980F877C8CD2208886F99D594994220F7D804D73CF916414F9A0914049CA37F660610C609A4AA8296289E32C3';
wwv_flow_imp.g_varchar2_table(9) := '9828A521939D030172DB5F99B1E46198401BF75F7C1810AB21376B2120B036E83B63661B26900A55D63EC67C10376D337C6788405B9B2EA5ABC0F6B8212033368400FB2E3800D29F8C21020DC27737656D280DD2977BFC105026C6DC7719C9DE90F369A1';
wwv_flow_imp.g_varchar2_table(10) := '940964247FA91B67048CFAD01081A80A94048A33018C666FD487FA0944E34032FE5E92A4DD53A460862A01DD04BA737F7B09015C4822776B2350B2E9E5ABBAFDA89B4093C2A73B536BE39D7CD67BD48952BDA5D24D20A106E42B1B7A514F303D23BE3440';
wwv_flow_imp.g_varchar2_table(11) := '20451228C188A0D71CA1EAF7A57E020991A1D760A9976008288A5DAF45BA09E4876CC2F4829E687A42551D7A6DD24D20216CB2069A0F758B851BA90C74130806581B557CD500FCE3C3F00E76C3D3DD81C9DE6BF00DF722E099886AB6564EDC4865A09B40';
wwv_flow_imp.g_varchar2_table(12) := 'AAAAFA120DB4807B0CEE6B6D449CCB1A81FCE323F08D0E60B2BF13EE1B1731D973156AC09F68665BDA1EDD044AB452FB86FBE0EEBC8480CF8B8AF2526CDD588D4F6DDB849DF76CC4A66A17721765C23736A8114CA538909B290824058102936EAA656E20';
wwv_flow_imp.g_varchar2_table(13) := '23CD894736D760F3DA15585A9083349B82DC0C27AACA0AF1F1BB37A0C6B502AADF47CDDAD5B0C0E37459C28A9CA29192824093BD41426C59E74241D6DC7D7B5A75C6FAE5A5282B2E809F9A3ADF48FF9C2EE7BE92FBC607186F3F05F7F50B9AF0B5876B37';
wwv_flow_imp.g_varchar2_table(14) := 'D98F9A8599E50914F08C836B89C5057958929F3DAB801F0EA8732DD7827C2303DA79FAC1479D6DEE2B719A45B9596858BD1CF555CB5094BB48231D3FE338D37552FDDAF204E226899D58947B7BF270BCBCCC3428425053E6E5DB9BE2A33E1477B633D3D3';
wwv_flow_imp.g_varchar2_table(15) := 'B0E7C18D78EA630D78B46E053EB171255DD7E34FB7D5694D24C7E1B837154DBDB05E62D6275020A0A19E9991A69D6F77E0A62C3B2B1308E971FC80D703EF401732883C4F3E5C8FCAC5B3C9B8A624074FEE6800138CE3AABE49569D57029313F08D0E06A7';
wwv_flow_imp.g_varchar2_table(16) := '10A8C94CD6D19FE509A43882C419190B6F9E27A002A3E31310213D6600D7282ACD1FFDC1DDD5C8C97070D09C924BCF766D5A038ECB3A7345F251DF6AE2F2FBD477BAA875D6B9C6E2D1218725E33482F509E40C12A87F78742E7FCE0A1B9A70C34FB58F92';
wwv_flow_imp.g_varchar2_table(17) := '967EF319F779F21665604D69CECDB0F92ED695E5615146BAD6279A118708C81DEDC9BEEB70282A1EA9ABC0D38F6EC2737F721F1A1F5887A585D9989A46E0FC66E85AF8C6F204825060CFCE47EFE010AEF50F63A18D2A1F345FB8AA45B1671768676E5AB8';
wwv_flow_imp.g_varchar2_table(18) := '135E5698A7DD8773585A9CAF75DC59772A3E376B3CBABBBF7A195EFBCBEDF8E6EFAFC11FAD2BC6EFADCAC117EF5B8E9F3D711FFE7E6703EC0868139DD375A7D2B0E2D9FA0422D41DF9A5002D28FF7FEB397CD0357B744551E0F507F0D6A98BB8DEDD0B47';
wwv_flow_imp.g_varchar2_table(19) := '6E31146768B8AF32AD80E09163DE5EA80B1E8C14D2F54F8CC24B9DF015C57978EED17528CB9EBDB86D53043E5B538227B7D75207DE076FDF8D601A163F2605818462435AF147E087C09193E734A25CE8ECC7F5C1315CE91BC6E9ABDD3878B415573A7B60';
wwv_flow_imp.g_varchar2_table(20) := '4BCF82239FDFC685B6099B1D2C9DFD43DA7D38876BBD839A0EEB717CEEF7F0F96B3B6BA9F9127C39AF3C56BF04CB8B72B5E62C196AA1A420107B4B2162A497BB60CFCAC56522CADBA7CEE3D0BB27F166F319349FFD0013933E388BCA9156BA92A3CF1085';
wwv_flow_imp.g_varchar2_table(21) := '3AD40323E338DBB57013C84A673B87313CEE86E2BCD58752BD6E386C366C5C92C5511614AA88705765A91647A5D19F7661FC10B7149286408C20D7444EAA893296AD455AC90A380B4A89344B915E56010EB32FCAE768B3C491B7580B3B70F40C463DF3AF';
wwv_flow_imp.g_varchar2_table(22) := '110F4FF8F0A323A7B4B8533A7CA3FA7C585694032607DFDF4E5616656B51D42458934B2A02695EA183A026CD96B108F69C22D817E5516D9141A1F3EF5C7B39F24A30E6F6E0B99F9F405BF7C8ACC817BA47F1ECCF8EC13DE90537814A1ACD258562098713';
wwv_flow_imp.g_varchar2_table(23) := '977B87C15304A1A0054F1D7DC11123EB2D18D1020FAD4F201A3E6B9DD8C11EED150EEF60F7EDCF433DDA3B4320DD291F39F28AA9B62AC7B8C78B970FBD87675F7F0F3F6D69C7811397F00C916AFFA113F0F8025A1CEE844FE9F159A10EB9D7EFC7A5410F';
wwv_flow_imp.g_varchar2_table(24) := 'DFDE564E5FEBD7E2B09E7661E183750944CEE7A1F378C71978BADA89345D24DDE109CD3A7BBA2F63E2EA79F8C76E759EEDD4C4A52FAD8223A710BDA3933876B60327DA2EA36FCCAB85F1338EF3617FF3340287BD74EC329F169496AE719CBAD28D299D05';
wwv_flow_imp.g_varchar2_table(25) := '235BE0A16509E4E9EA80976A125E5DDFBC7E35B6DFB91E0F85295B37DE81EA55CB906613F0F45C01BF7436E52B6EFE1C054BC01DF28CA5AB91F19135DA3587F1B3A978D3CFDC9C31B10E1C3F8F575ABAA63F9A717D65C48BBFFEC1310A53A8192C45326C';
wwv_flow_imp.g_varchar2_table(26) := '9624100F9B79D26E2D91E0C19A2A5494E4A38456CF1787294B0BB2B17155191EA85B0B41A36E6F7F27B566FE59FE14760784CD3E2B7CAE00EE1771DC7FFDDF77F1859F9CC2E99E090CBAFDF0F855B40F4FE23F5BBBB1EB3BBF42CFD0181C854B301F19E7';
wwv_flow_imp.g_varchar2_table(27) := '4A3B91C32C49206E766C34E4A923121801B7303B132585051A7978AD6ABCFD94F61E5038677E75D6DB7F43D3651B983C5C6BD9B3F2F0AB931DF8D40B87B0E59B3F47DD375EC323CFBE816F1C3C0E2F14A42F5905AEAD582711C4A80D962450C03381ECCC';
wwv_flow_imp.g_varchar2_table(28) := '4C7287FEE28FB82771E0D7CDE8ECED47669A13CB4B0A5151561C962C2BA165105A8DE7D96726528056DED91241A33F67F1522249853685C044B16566C341D304698B97694DA1326DF4C63A5617C58A05E0D570BBCDA6DB743F2D411C6A7E1F019F1F7F7C';
wwv_flow_imp.g_varchar2_table(29) := '7F0DBEFC89CD787CDB3A34DE5F1D96FCF9B6F5F8C73FBC171F6BA09579BF8F3AF11D336C51D232B429046DE272F1728D40B6CC1C50BB8564DB2C4920A34E387FBD17FCFAC78E86D5B8A32CFC45D4E9F9DA6D0AEEA92CC18655E5DADA16AFC2873585A04D';
wwv_flow_imp.g_varchar2_table(30) := '33F480A71EA8FD83D5B7942450CF6070A2D055926BC87F6DDDC3E81A08A6C51DFBF009D445B5563B780A82F50C191167E59424D038F57F18F7DC743B9F74C9D9CE21BCF27FCD6032F22B1C9FDBBA1E5F78A8362CE115F9471B5C28CAC98256730D74EAB2';
wwv_flow_imp.g_varchar2_table(31) := '2111945292402AF581187C21049F2216B7D78F1F1F390327F5C3FEEB735BF1FC27D7E36FEF5D867D9BCAC392CFDF558E7FD95185D7FEE27EDCED2A8777A817FCA3C8880D49008594249051DC4F5E1FA4D5FD49ECFBE806D496DC5A138B34DD454E05FFB6';
wwv_flow_imp.g_varchar2_table(32) := '739DA6E61DEED5CE9639840C95040A0111C9696074428B5EBB844656DA95FE4351A61DE585D9E0A909FDA9C44F53124807F66E6FF0958F1C037DA8E9D9E667666823B9E96156B99604B28AA712D44E49A004758C55CCB22481845030E6F1E06447D74DE9';
wwv_flow_imp.g_varchar2_table(33) := '0FF3776156718C55ECB424816C8B7231E1F6A0B5EDD24DE91F09766CAD027CB2D8694902390BCBB55F6138689192172B93C519562C47E4044A9052DAB272838B9419D90962516A9A615902DD7497CED964D66F7AEB0CA6E4E8C5F9DF24E4B833459D799B';
wwv_flow_imp.g_varchar2_table(34) := 'C277D627506859428F0F2F5EEFC194F446D487D2B704A2C7C644D7B13E810C209CB9621DF837630692487955EB13C8401336D3FB91D72AA7BBC770E24650CEF6B96726B7C05DEFB8EFA61EEB8F79667EEC6A01D5847B647D021968C2667A23F27ECD577E';
wwv_flow_imp.g_varchar2_table(35) := 'FC363EFBE2614D9E7EF5E4CCE416B87BB37D50D399D2BDD43D00FE21E4022A09FBC8FA048A630DC49F88E1A98488BD1BB299A720583FF8EAEBB288934904851812284AC58D630DC43F0E6402445CB290CDFC9E34EBF3CBF7A0D9F588D3490005EB132801';
wwv_flow_imp.g_varchar2_table(36) := '404C6513248152D9FB26945D12C8041053390949A054F6BE096597043201C4544EC2FA0412C109C0917137BA87C6C2129F2FF84AEA4CC707D3991916A5BB90CD514A3DA6C95A81400B02624BCFD29E9FFEE0327E71FC645832343A36C7C45DE413895AC6';
wwv_flow_imp.g_varchar2_table(37) := '7A0EA161BC1ED544D3B13C8184DD09FE2A067F5E85E754C291B927EE640DA4879C8A1EA544D3511C69E0CFCE85431E8E33F7C49DAC81F4F8352908A4A7E037754233C0577B8771F8DC8DB0E41AC5D5F443BADA752407D9078A04ADC48ECBB5177FB3E75A';
wwv_flow_imp.g_varchar2_table(38) := 'EF007ED97C3E2CE1B8DCF762DDC42E5DF4AD93351061CC5F0DE3F782D24B57222C29AB98F383E59454CAED92402197F32777F97BD161893323A4A5F32447613A818BB15AACB2539CE93879B91BD55F7F352CF9CA7FBFA399A6386EFDBB042DC082075903';
wwv_flow_imp.g_varchar2_table(39) := '99E0349E16E08F6BDA684E2A2CC958A47DB09C3F856742F6714D423F81843A1E57CB132873859A3467F152AD5FC4FFCCE5B652B222A1BED4AAAA7EDDBFCAD44D201B1449A00422B111538CF852D19BB1AAAABA59AB374FA9171D048CF8523F814440D640';
wwv_flow_imp.g_varchar2_table(40) := 'D1F167CC53550DF8D20081641316734F47294355E8F7A56E02050249DC8445C951899AAC115FEA2650BA70C8262C511911A15D467CA99B4081C9BE3E1508FFE79811164A468F0D02EC43F6A5DEDC7413E8C4130D5E0104A754F5E62EF5E28E00FB907DA9';
wwv_flow_imp.g_varchar2_table(41) := 'D710DD040A657838749627EB2260C8879240D675BC5996C78F4079B0BFCD6DA8592591E9C41601F61DFBD048AE866AA0C38D2BDD94C04F8C18905CBAD62A0DFB8E7D68C46A4AC3883A409DB06F436E9644C00CDF1926D07B8DAEB7093D391A23102CB6BF';
wwv_flow_imp.g_varchar2_table(42) := '13F29D21B30D1388731710B21662202C24C2249F9942A0DC8E2B3FA2B6ECAA85F04B7553AF03A3E80D0000028B49444154693E330105530874F8ABDB7C08E04913EC9149C4008100B04FF3990979994220B6A365AF8B4663E219BE9692C80888677EDBE8';
wwv_flow_imp.g_varchar2_table(43) := '3A689685A611880DB24D0E7E11508FF3B59488108855E4C3411F99979DA9040AAEA9F83F4DE60D92C83DB110E8F2F96C9F09FAC83CC34C25109BD5D2B8B65D55F02020DA21B74441A04304020F9F7A7C5524FFCF212CDB4D2710E7DABADBD5EC54BC0D10';
wwv_flow_imp.g_varchar2_table(44) := 'E2977C2F257E0808E09053F1D5373FB6BA351A564485406CE8B1DD6BFB5C99153B5488E7F95E4AEC1150557CAB32ABF221F645B4728F1A81D8E01F7E5AF85B1B2BF709A8FBE87E9244EEB141604255C5675AF7BAFE8E7D10CD2CA34AA029C39B1BAB9E57';
wwv_flow_imp.g_varchar2_table(45) := '95C02A21F03455A957A6C2E5D96404047832F7AB84B5AB756FE5F74D4E7DCEE4624220CEB975F7EA6BCD7B5C5FA32A75A5AA884F12915EA7709544EE061020553F61791042FDB82BB372454BA3EB9F186B0A8FC91E33024D9586ABD4D6DD95079A1B5D3B';
wwv_flow_imp.g_varchar2_table(46) := '6C934ABE10EA033477F414C9CB04C44908CCF505CC29F5D43E13361A462A5E2120FE46A8D83A11F0E71396BB5AF654BDCAD852784CF79813687AE94E3C5131D4BCA7EAAD96C6AA6748F610101B5AF6B81C044A8E03F62536814A1A7ED64215F700EA4334';
wwv_flow_imp.g_varchar2_table(47) := '05BF2B1584CBCA65E6B233068C0563C2D86818ED75EDA69AE6DBCD7B5D6F9E7B6CCDC8744C637D1D5702CD575806E578E3CACE137B5C1779F8D9B2B7F20811EC0D9E824F05E1B27299B9EC8C0163C198CC87573CC3139240F10444E61D1902924091E125';
wwv_flow_imp.g_varchar2_table(48) := '637F080149A00F01226F234340122832BC9227B6492591043209C8544D461228553D6F52B925814C0232559391044A55CF9B546E492093804CD564248152D5F326955B12C82420532799992595049A8987BC8B100149A0080193D16722F03B000000FFFF';
wwv_flow_imp.g_varchar2_table(49) := '390E8D88000000064944415403006E1B54992AEC147F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10866823143562220)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC5D69701C47157EBBABDB3AACC3926549F8506CCBB1139F120E71B05D21C409144542B84D715FA1A8024251FCC84FA08AAA504085BB0A0224';
wwv_flow_imp.g_varchar2_table(2) := '14A448023FC801A4E238CE451C3BA71D3BB612DBB2A3C3B27559C76A7725FA8D353DA3D5EE6A767766343DF3B9DCEA9E3E5EBFFE5E7F33DD6F5AA3F0A67B4E4C230083A0CE8130E11F100830022040808D8FA113810098058146000408B4F931F8001300';
wwv_flow_imp.g_varchar2_table(3) := 'C607025802610E041C013C01023E01823E7C1020E83320E0E30701023E01823E7C10208833006396088000120A24828800081044AB63CC12011040428144101100018268758C59220002482890080202C96304019211C175A010000102656E0C36190110';
wwv_flow_imp.g_varchar2_table(4) := '2019115C070A01102050E6C660931100019211C175A0100810010265570CD62202208045A050CD9F088000FEB42B4665110110C02250A8E64F0440007FDA15A3B2880008601128A5AB41F9B408800069A14141101000018260658C312D0220405A685010';
wwv_flow_imp.g_varchar2_table(5) := '04044080205819634C8B000890161A14F80181F9C60002CC8710CA7D8D0008E06BF36270F3210002CC8710CA7D8D0008E06BF36270F3210002CC8710CA7D8D808F09E06BBB617036210002D80424C4A8890008A0A6DDA0B54D088000360109316A220002';
wwv_flow_imp.g_varchar2_table(6) := 'A86937686D130220804D407A4A0C94B18C000860192A54F4230220801FAD8A3159460004B00C152AFA110110C08F56C5982C23000258860A155540205B1D034F80E9A904C52F0D50B4EF344D9C3B41E3A78F6A81D39CC765343D952DAEA8AF08028125C0';
wwv_flow_imp.g_varchar2_table(7) := '74224EB18BDD34D1759C26FBCF51626C84A662519A16939D03A7398FCBC6CF1CA3D8400F315914B12BD4B48840200990181FA189B36F526CF802F1649F0F2BAE131BEAD7DA24C62FCD571DE50A21103802C487FB29DA7B7AD6C4AFAEAAA00DADCB69D7E6';
wwv_flow_imp.g_varchar2_table(8) := '2BE9B69DED5AD8B9691DAD17798B2BCB49FFC74F8068EF298A0BE2E87988D546205004488C0ED1E4C51E69B148384CDBD6B5D2CDEDEB69D3CA466AAEADA492C288165AEAAA68B3C8FB40C706DADCB68A226103AA49B1746259521012CA22605855D921E8';
wwv_flow_imp.g_varchar2_table(9) := '8A678E794D1F3DDF252B555594D3CDD76CA4B6A6251492B973135CB6BEB99E6EDA7E3555952F92155816CB9419482889406008101BE895060A8742B46BE31AAA2A2D9679F325169795D0AE4D6B89DBEA75E383E7F5A4A5989750EC5562EF127B99E071B2';
wwv_flow_imp.g_varchar2_table(10) := '049BA395024100F6F824C68625905BC4B2A7A2A4485E5B4D701B5E0EE9F5E3A383C4935ABF4E1773FFF038A5436761F3034100F37ABDBEB69ADA96D5E58CFA3AB164AAAF592CDB9B65CB4C53021E2713181E4C068300A6BBFFDAE686BCCDB0A6A551CAC8';
wwv_flow_imp.g_varchar2_table(11) := '4480780A8F53634D15EDBCAA953EBD73137DFF966BB5C0E9F75E75052D1565BA607EB2C0E3A4A3E15C1C08024C45C72582E5622D2F2F724C949BF60E53931329A53031CC1EA7824858789BDAE8F61B36D20DEB9B695D63159517176881D3EF5FDF44DF10';
wwv_flow_imp.g_varchar2_table(12) := '65376E5D4B05D97A9C526A804C2B0884AD5452BD0EBFC8D2C750619ABC7A5EB6714549A16CC2776A79319360EF107B89662EA9BEBA926EDFD34EEF696DA05088FD4A7AC9EC38140AD175AB97D2D7F774D092C515B29065B14C9981846D08048200A19031';
wwv_flow_imp.g_varchar2_table(13) := 'CCC454FEE77ACC1242E1C81C63983D4E917088F6EEB892EA2B4AE6D44B97D150594C9FB96EBD78F76090051EA77468E5976FCC8CFCE478BA75A8A040EA377029F5924556B09018B8642CA94291D904608F8FD9E3B467DB3AAA59546C41EAEC2ADC668F58';
wwv_flow_imp.g_varchar2_table(14) := '0EE9B9F038E948D81B07830085C6DD77E0D268DE085E1C1E9332C245A532CD095EFB73CC6179432D6D5F99BBC769FBAA7A5AB1D4686F96CDF293033C4EC988CC7F1D0802444ACB251227BB7A28313D2DAFB34D4C89B69DE78CE31461936C9665BEFB5FB3';
wwv_flow_imp.g_varchar2_table(15) := 'B69942216319C3E5D9845028441DAB97C926990890CAE3D4D654475FD97D35DDFDE9EBE8C01D376AE1EE4FEDA02F8BBC35CB6AA55CDEC7A8EA719283C831110802844B8C230C23A363F4FA696302678BDBABA77A8865E8ED2226D99C67F638F13286F3F2';
wwv_flow_imp.g_varchar2_table(16) := '093565C6F2C9AAC7A9A82042DFFBE0567AE073EFA66F5DDB42D7AFACA4DAD2022D5CBFAA8ABE2DF21EFAFC76BAE3E62D54685AC205F18C53300850584C91B20A390F8F749EA1A1F1A8BCB69A181A8BD291B74ECBEA2C33545024AF3961F638D52E9A5DC6';
wwv_flow_imp.g_varchar2_table(17) := 'E5D9869AF262D984EFD4F26226C1DE21F612CD5CD2150DD5F4E05777D3E7362D25B1FFD6B3E7C45CF6C52D8DF4E0D776D3AAFA6A59CEB258A6CCF079221004601B16D53472A4055EC6EC7FE5CDAC4830383641FB5F3D4E6205A4C90809CF52518DB13CD1';
wwv_flow_imp.g_varchar2_table(18) := '32C50FCE1791F63F96C87DA9A509103FA6A60C19A1793C4E859130FDF213EDD45A6D904688C8F8FF0A51F7D79F6C174F02632A64EB71CAD881C70B8D517B5CD17CD5E33B75F192162966586C861F79EE153A7AB68F8C29268B6582CB8E883A8F3EFF2A0D';
wwv_flow_imp.g_varchar2_table(19) := '5F3236BF454BC4FABEC0781FA037307B9C7A86F2F738750F197DCEE771FAAE58D2B454CCD549D72D5DCC6DEEB8698B2CB6EA71920D144E0486006CA3C8A22A2AAA59CA492DF03B81C3C7DEA2470E1EA197DF7E87CE5E1CA6683C41639371911ED1F21E7E';
wwv_flow_imp.g_varchar2_table(20) := 'E108BD24EA705DAD91F851249E2691B24A919AFB3F64F238750FE5EF71EA1E340890C9E3B475D532DABBB161AE4216733EB3A981B6B51A4FB44C1B6E8B2295A8A6300172C3B7A0B28E8A1B9653482C617409034323F4BAD8173C79F828FDFDC983F4D053';
wwv_flow_imp.g_varchar2_table(21) := '2FD293878F687983C3237A35E2254871C30A2AA8343C28B2702661F638BD78B28B12A625CC4C15CB11B77DF1C45959DFBC99E74CB3C7696FC74A0A71668E81DB7E6CEB0AD91A049050F82F1129ADA092A6D514497261661A296F78ADB4314FD20BE209F0';
wwv_flow_imp.g_varchar2_table(22) := 'E4B1EE4C6233963DF1C639BA38623C4592F5357B9C5A161BEF3A320ACD50F82E938C741EA70CCD952C0ADC1340B75248ACDFF96E5EB27425152EAED7C81016DEA290783270E0344F382E2B695C45C5F5E2A91131DE28EB729263AD9DC9E3B4FFB593D437';
wwv_flow_imp.g_varchar2_table(23) := '92FD5EE0FCA5281D78FD2D299E09C8FB18992112668FD3F2AAFC3D4E2D95868CE9A984E8C1FFFF034B00DDB47CC7E649AE91413C154A975F491CF86ECF795C162E2ED3AB5B8A798FA057648FD35F9F79232B12F48E44E92F075E236ECB729890F3799CC6';
wwv_flow_imp.g_varchar2_table(24) := 'E3E6134ADC2AFB607E41C8CBBDEC25A8D722F00470C2647CA7367B9CCE0F0ED3AF1E3D484F9FEC116E54F62BA5EE755AF8580F9CE8A15F3FFA02F58BE5935EABC882C7E9CD7EE37C92DE2EDBF8984946B2C7295B59AAD407011CB254B2C7293E35458FBD';
wwv_flow_imp.g_varchar2_table(25) := '789C7EF5F82BF4DF2367E978EF308DC512343211A36322CD79BFF8CFCBF4EF43C789EBEA6AF1D3648EC769A6D0EC713ADA97FFF78A8EF61A1BFE648FD34C97BE8B7C4F00DECCC586CE53B4EF0C8D771DA3B153AFDB125856B4E76DE2DFF59D9A3036AAE6';
wwv_flow_imp.g_varchar2_table(26) := '1992CAE3D47D6188F6BFD649F7EE7B897EF4E0D3F4E37F3E4BF78934E7F50E18BFB7CC4B105E8259F5383D70B09326F378F11613DEAA070F9E94EAF3D2505EF838E16B02F0B9FC89774E12C7EC32E4A3CA76D9926525C4C4E7AFCB4D0822F0571E527D35';
wwv_flow_imp.g_varchar2_table(27) := '2EE292C7E94CFF10FDF68573390FEF97CF9DA5AE0BC613209285872CE74E3DD0D09704E0B32CDAC417777EB730E63E27C553662A6ABCB8D2FB0EB9E471FADDBE57A97320FB334E9D8393F4FBFDAFE9EA6AE7A6781F23337C9CF02501B48968FA5DDDD6A6';
wwv_flow_imp.g_varchar2_table(28) := 'A5B46BCB7AED93877BDFB79DEC081FDBDD41376DDF48EB561AC72BA6A7A728CA9F5D8C4FA69C32BCAC60AF122F6DD8CBC4DE260E9CE63C2ECBC7E3C42FCEBEF5C0A1AC48704210E69BF7BF205FD8A5F338A51C900F327D4780D8408FF69567B64D697131';
wwv_flow_imp.g_varchar2_table(29) := 'DDD07E155DB36E0535D788975F85B37F7B8BEBE41A8A2261AA2D2FA5ADAD4DF4A11D5BA9B2FCB2AB94FDE7B101E3235CB9CAB7DA8EEFD4668F5367EF00DDFA9B7DF487C3DDC28D9A5E8A58F2D3EF459DDB44DD53E78764C5741E27596181137677EF2B02';
wwv_flow_imp.g_varchar2_table(30) := 'F0F283BFE2AC83B473731B35542DD22F1D8B2B4B0AE9FA2DEB281C0A697DC447878837DFDA850B3F923D4EB14482EE7AE4307DE48FFFA39F3DD345FB4F8FD0C04482FA4613B4EFD4B09677CB3DCFD34F441DAEABAB98C9E3A4D7F15BEC2B02C4872F4AFB';
wwv_flow_imp.g_varchar2_table(31) := 'AC7ED732AA13776899E17062515121AD144B2DBD1BDE832CB4C7E9F8B97EE27DC1D7EF7D8AAEBDEB31DAF5D3C7E81BF71DD0F24EBC7341579542E108F1122C93C7897CFACF5704E08DA86EA796FAF407D6F43A76C5231393F4DCB1D3F4D6B96EBB44CE92';
wwv_flow_imp.g_varchar2_table(32) := 'E3058FD32C857C74E12B024C9B369F7515A5AE98E9FCC818FDEBD997A9F36CB778CBEB4A97C4449FEC3B4DBCE44BEED1298F53723F7EB9F617014C07B87893EAB49186C6A3F4C4A1378407C53887B3E58A16DABB7BB3F6C9C31F7C6227D911EEFCC80EBA';
wwv_flow_imp.g_varchar2_table(33) := 'FDA60EDAB17E951CD2F4F4B4EB1E27D9B98F120A11C07BA81F106F7463F198A6584559097DE9866D74EBB655D4D650A97DF2502BB0E14789F05E2DAB2AA53D57B5D0B73FB89DEA6636F66E7B9C6C188AE7448000399AA47B709406878DA30B9FBA6E03AD';
wwv_flow_imp.g_varchar2_table(34) := 'A875DEE3545B5E4C9FDD793545C2974DE7B6C72947B83CDBEC328A9E55CFBB8A75F5191EA76D6B97534BB5F3935F47A3BAAC8836B536EB9764B7C769F27C17F1778678AF213BF1690204C8D1B043A3C691870D4DC6D7DB721467B9D9C5D149FAC7A1B7E9';
wwv_flow_imp.g_varchar2_table(35) := 'A593C69F7BB2DCD84245F638F15385BF6C1D9D3947E5DAEEDE827E765701017244F4C2B071FCB8B9BA344729D9353B73718C7EFEF0F374E8C419F19637FDEF156427357D6DDE68F349DA89EE4ECDF394BEA6BA2520408EB68BC72E6F7EB9396F5239762C';
wwv_flow_imp.g_varchar2_table(36) := '08C1FC6B957FDEF792F0381913FF96F6D5DA670FF77F670F1DBDF303B60496C59F52FCF0B6D5A2D7CBFFF9AD369FAFBA7CE5AF9F208022F6BCFFD96334118B6BDAD6552EA23F7D6117FDF0C635DA670F9794D977C689655DBFB2927EB4670DFDE1F33B89';
wwv_flow_imp.g_varchar2_table(37) := 'FBE24E793F101BC8FD93922CC38B21EC45A5A0D36C043AFB2F51EF807160EDEE8F7750FB32E737DDDB9BCAE9AEDBDAA5327CCE6ACAF4D7766481C209104001E31D3D6B9CDBF9E8BBD7D2C686CB274FDD50BD4310EDD68E35B2ABF888E1FD92990A274000';
wwv_flow_imp.g_varchar2_table(38) := '058CD737686CB86F6C6B705DE3F7AF35BEA6C74B21D71570B04310C04170ED12FD4EFF8014757583F34B1FD9D94CA26D89F1C4319FB79A297634725A3808E034C236C8E7EF95EA62CA8BDC3759BD6993CDEF09745DFC10BB8FA61F50C3187C830008E01B';
wwv_flow_imp.g_varchar2_table(39) := '536220B9200002E4821ADAF8060110C037A6C4407241C0C304C86538680304B243C0570408458CCF97DFF7F8F3942A64070F6AFB1D015F1120F94F96FADD78185FFE08F88A0085358D54B06831999F04F94304097E46C05704E0895FB4A4994A5BDAA86C';
wwv_flow_imp.g_varchar2_table(40) := 'C50619FC6C408C2D3F047C4580FCA0F0506BA8E21A0220806B50A3232F220002D860953BFFB69F52051B444384C30880000E030CF1DE460004F0B67DA09DC308800036000C8F930D20CE88703B0201DC461CFD790A0110C053E680326E230002B88D789E';
wwv_flow_imp.g_varchar2_table(41) := 'FD5DF983872955C853AC6C9E4A36E7E915F865A39EF6430C02F8C18A2E8E215252EE626FCE770502388FB12F7AE03B7F41793515D636FA623CFA203C44005D25C4991070D3E364EE8BCF5715D53511FF3DB14CFAA9560602A86631E86B2B022080AD7042';
wwv_flow_imp.g_varchar2_table(42) := '986A088000AA590CFADA8A0008602B9C10A61A022080172C061D160C011060C1A047C75E4084F4EC20000002C4494441540004F08215A0C3822100022C18F4E8D80B0880005EB00274583004408005831E1D33020B1D408085B600FA5F50040241003EC8';
wwv_flow_imp.g_varchar2_table(43) := 'A5A39CEA7389B9E4E9F2CCB2F53CC4EA2010080238F9C944BF1D0F5667EADAA3692008E0C42713F9CEEFC7E3C1F64C2B75A40482003C59537D32D17CDC37DBB45F8F07AB3375EDD174010960CF00200508E4830008900F7A68AB3C022080CD26E4E5962E';
wwv_flow_imp.g_varchar2_table(44) := '32D5E71273C9D3E59965EB7988F3430004C80FBF39ADE1719A0389A73340009BCD038F93CD803A2C0E04B019605EA6CCEB7132FDF10E2BDE27789C6C3692491C08600203C9E021000204CFE618B1090110C004866A495E6EE93AF3E70BED08BA3CB36C3D';
wwv_flow_imp.g_varchar2_table(45) := 'CF8F3108A0B055E171CADF782040FE182E9804153D4E0B06569A8E418034C0A890CDCB14789CF2B31408901F7E68AD38022080E20684FAF9210002E4871F5A2B8E0008A0B801A17E7E08B84880FC14456B20E00402208013A842A632088000CA980A8A3A';
wwv_flow_imp.g_varchar2_table(46) := '810008E004AA90A90C02208032A682A24E20000238816AB24C5C7B160110C0B3A681626E200002B88132FAF02C022080674D03C5DC400004700365F4E159044000CF9AC61F8A797D142080D72D04FD1C45000470145E08F73A022080D72D04FD1C450004';
wwv_flow_imp.g_varchar2_table(47) := '70145E08F73A022080D72D04FD1C45C0410238AA378403015B1000016C8111425445000450D572D0DB160440005B6084105511000154B51CF4B6050110C016189384E05219044000654C05459D400004700255C8540601104019534151271000019C4015';
wwv_flow_imp.g_varchar2_table(48) := '329541000450C6546A28AA9A9620806A1683BEB6220002D80A2784A9860008A09AC5A0AFAD088000B6C20961AA210002A86631E86B2B023612C056BD200C08B8820008E00ACCE8C4AB0880005EB50CF472050110C01598D18957110001BC6A19E8E50A02';
wwv_flow_imp.g_varchar2_table(49) := '20801D304386B2088000CA9A0E8ADB81000860078A90A12C022080B2A683E276200002D8812264288B0008A0ACE9BCA1B8EA5AFC1F0000FFFF5AE2F026000000064944415403008920E2B9C08B4E790000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10867184732562245)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D09741CC779E7BFEEB97011076F122401120729F0024891BA4949D64AB2A3CBF2AE9FB3CF2B11B4B45AC51B276B3B4F6BAFE5289112EB39';
wwv_flow_imp.g_varchar2_table(2) := 'D9B7F67AD7765E2C8296E3388E641D8E1DCB8EF224D1A22447A20890E28583F7019E38080218CCD1A96F88E9690003608EEEEA9EE93FDE14BABABAEAABAA5F75FDA7BAAABB4725FC810008B8960004C0B54D8F8A8300110400670108B8980004C0C58D8F';
wwv_flow_imp.g_varchar2_table(3) := 'AABB9B00D71E02C014E040C0A50420002E6D78541B049800048029C081804B0940005CDAF0A8B6BB09C46B0F018893C016045C480002E0C246479541204E00021027812D08B8900004C0858D8E2ABB9B80B1F61000230DF841C0650420002E6B70541704';
wwv_flow_imp.g_varchar2_table(4) := '8C042000461AF08380CB0840005CD6E0A8AEBB098CAF3D04603C11EC83808B0840005CD4D8A82A088C270001184F04FB20E022021000173536AAEA6E02C96A0F014846056120E012021000973434AA0902C90840009251411808B8840004C0250D8D6ABA';
wwv_flow_imp.g_varchar2_table(5) := '9BC064B587004C4606E120E002021080718D5CFB7F3B028D2D47CA1B5A8ECCDFB0AD73F19AE78F2E6D6CE9AA6BDAD6D1B0EE8707D7ACD9D6B16EDDF6CEF570CE63106B1BD146DC56DC66DC76DC86DC96DCA6DCB6E39ADBF5BBAE1480F5DB3B6AD6B6B43F';
wwv_flow_imp.g_varchar2_table(6) := 'B8765BC79F35B674BC22DC6EE14E09A795CCA061A2708F9FC267428A765C8D840E1345DB3585F645A39E3655A15D514DFB00CE790C626D23DA88DB8ADB4C156DC76DC86DC96DCA6DCB6D2C1CB735B7F92B7C0EF0B9B07A5BFB3237AA812B04A0B1A5BDB1';
wwv_flow_imp.g_varchar2_table(7) := 'A9A5FDC9C6968EB7841B8868D4A990F23345A1AF8B46BF5FB846E1160A878F3B08705B739BDFCFE7009F0B1E45E9E27343B837D76E6BFF5AD37387D6E60B8AA9EA919702D0F08FFBFC6208F889C6ED1DDF6D6AE9384EA4ECD648F97322DA245CB170F880';
wwv_flow_imp.g_varchar2_table(8) := '4032027C6E6C5614E5694D555B85181C6E6CE9FC56D3F6AE8FF139952C41AE87E59500ACFB4167ADE8F47FE9BFE2E761FB2F49A3C735A2C5B9DE4828BF6D049612697FA469D1D7F99C1282F0177C8ED9561A0B32CE790168F8FFFB4AD6B6746C6DDCDEFE';
wwv_flow_imp.g_varchar2_table(9) := 'DBA847EB109DFE2B8253A570F880809904F89CFA2A9F634D2D9D3B1A5BDAB7F0B967660676D8CA690158FBC3CE4FFA8BFCEF2944CF91A6DC6C0740E4E93E021A69B710292DBE22BF982FE8B88B1CFC375DD17252001A5B3A6E15DFFAEF2A51ED2551C195';
wwv_flow_imp.g_varchar2_table(10) := 'C2E10302D209882F9EF58A42AFF1B9C8E7A4F4029890614E09000FB9D6B6B4FF44D4FB0D01FF7AB1C507046C27307A2EBED1B8BDE3477C8EDA5EA0340A903302D0B8ADF34631DC6F5348F94C1AF5435410904740A3CF8A73B4956F129397697639E58400';
wwv_flow_imp.g_varchar2_table(11) := '346DEF7C8814ED0D515557DEAC21EA8D4FEE10A8896ADA3BB173D6E632A792BDB30540D314716DF5179AA6FD5054C62F1C3E20900B04FC7CCE0A1178DAE98575AC00F08D174DDBBB5E1400BF2A1C3E2090730484087CAD715BC70FF95C766AE11D2900B7';
wwv_flow_imp.g_varchar2_table(12) := '3EF586D73FE8FF99586E79D0A9E0502E10488980420FF907FC2FF0399D527CC9911C2900BDD58B9F278DEE91CC02D98180350414BAAFB77A518B35C6935B4D35D47102D0D4D2F12C69DAEFA75A01C403819C2020560862E7B6C30AEB280110137E7FAC11';
wwv_flow_imp.g_varchar2_table(13) := '3DE13046280E08984280CF6D3EC74D31669211C70840E3F6CE9B449DFEB770F880403E13F8EBB5CF7539E6B6754708406C96F4EA529F23CA93CF671FEA663B018FE289B6C4CE798B8A928E594774B8C0153F3FAB5F934EC111170472968046B5A3E7BCED';
wwv_flow_imp.g_varchar2_table(14) := '55B05D00D6FCA07395B836FAB2ED24500010904880CFF9D52D5DAB256699342BDB0540F568CF88927984C30704DC44C0E3A1A8ED770ADA2A00FC808F68717E279FD8E00302AE2370BFD91382E912B4550048D1FE2ADD02233E08E41301458DF208D8B62A';
wwv_flow_imp.g_varchar2_table(15) := 'D926008D2D9D0F885ADF281C3E20E066029BD7B574DE6D1700DB048048FB63BB2A8D7C41C04904A2A4FD4FBBCA638B0034FDE07095A830BFA25B6CF00101D713D8B4E6F9834BB3A590497A5B0440F3449A456115E1F00101102052D488E761B2E14FBE00';
wwv_flow_imp.g_varchar2_table(16) := '681A77FC2D36D41559828093093C4457FB86D4324A178075DB3BAF1335E44B00B1C10704406094C0D2D1BE31BA2B67235D0034229EFD27FC8100088C251025CA783560ACA5D4F7EC1000E9954C1D07628280AD04A4F70DA902D0F4DCC18502EF1AE1F001';
wwv_flow_imp.g_varchar2_table(17) := '0110984860E3FABFE92A9B186C5D885401D054F54E51159E04141B7C400004C61150A27EEDE3E3C22CDD952A000AA9F8351FC21F084C49E0D6298F2639984D905401D0486BCCA6B0480B02F94E40761F9127004F699C17AEFFF3FD0C46FDB225B09AAEF6';
wwv_flow_imp.g_varchar2_table(18) := '956CEDA4949E3B654A11B38DD458D5C19DBF305B3B480F02794EA0687D557BBDAC3A4A130031F387EB7F59AD8A7C729A40943C295F2A675B51690240A44AAB54B650901E04EC25A049EB2BAABC8A6AD5F2F2424E2090BB0434A215B24A2F4D0044A5E6CB';
wwv_flow_imp.g_varchar2_table(19) := 'AA14F201811C2720EDCB529A00880681000808F880400A0452EA2B29D899368A1C0178EA2995149A356D69100104408009CC94B514A8726E56BBE58B3F534C1A79ADCE07F641204F08F8D62FD85520A32E5204A0500D78645406798040BE1088F867F965';
wwv_flow_imp.g_varchar2_table(20) := 'D4458A00443D11299591010C7980800C02D3F519B3CA2045007C8A172300B35A0C765C4140569F912200C15018D7FFAE386D5149B308C8EA335204C0AB84300230EBCC801D571090D567A40880079700AE38695149F3084CD567CCCB85488A0068AA0F93';
wwv_flow_imp.g_varchar2_table(21) := '8053B49A168D50746498A2C121D2C2A12962E2905B08841555CAA8598A00108DB8A5DD52AE6764B09F46CE9FA4A1E307626EF874270D9FE9A2A1938768F0E84714EC3E42E1FE0BA445C229DB44C4FC21E01989E49300E44FC3645B93F0E54B342C3A79F0';
wwv_flow_imp.g_varchar2_table(22) := 'DC710A5FE925FEF64F6633327C85462E75D3D089833472E1146164908C12C2B225206904906D31F320BD16A5E0B9633472F13445D31CE687077A62A383E8C8501E804015B22160765A0880D94493D9139D7FB8FB2845062F8F393AB3AC94562E5B429B1A';
wwv_flow_imp.g_varchar2_table(23) := 'AFA1076E59479FBEFD3ABAE3DA55B46EC5325A327FCE98B87C29103C7344CC130C8E09C70E0864430002900DBD14D306C5B57E3498E8B83EAF8FAE5F554F9FD8D0404DCB16D292D9655412F0935F55687E7909352C9A4B9B56D5D0BD37ADA3D94224E2D9';
wwv_flow_imp.g_varchar2_table(24) := '684248F8D2410B634E25CE04DBEC084000B2E3376D6A9EC88B8809BF78C4857366D27D373752EDFC99F1A049B765857EBA5B88C4B5D7D4E871622301317FA007C003025910800064016FBAA4DC59433DE7F468A52545B4794D1D15A67967F48ACA39B4B6';
wwv_flow_imp.g_varchar2_table(25) := '6EA96E87970CC3FD17F5FD743C3C8F10EA3D2FE6224EC5E624AECE4B9C220EE363E9D8425CB904ACC84DB5C2286C5E2510EA3D473C6CE73D4521BA79551D79D8C30169BA9555F36866E90C3D55A8EF3C4DB682A0471AF570BC90E8F4BCFA307CBA4B74F6';
wwv_flow_imp.g_varchar2_table(26) := 'B314BEDC139B9388887909F6877ACF121FE3381C97D38C26C7268F0940002C6CDCC840AF6E7DD5B22A9A5952A8EFA7EBE186BA69751DA9A302C2A30BEEBCD3D989AD209C3814EBF4A9AC3E709C981888346143F9A7CB07C77393009F57B9597287979A27';
wwv_flow_imp.g_varchar2_table(27) := 'FDE2DFFE5CD4FAC5737993952B1373020BE6245EAC141DBE32A5BD901881C4EE21109387E32356CE2EA78D2BAA638EFDE38F73D9472E9C14C2717EFC21ECE711010880458DC9D7E971D301BF3FEDEBFE78DAF1DB72318F100F33E6110F8B6FF912810520';
wwv_flow_imp.g_varchar2_table(28) := 'BECFDBEAF9B3E9B1BBAEA5673EB3991EBF632DDDD7581573ECE7B0FF7AE706AA9A9710184EC3A38170FF05F6C2D948C0AAAC55AB0CBBDD2E0FD1E30C2A6614C7BD596FCB8A1397115A24F9730391A1010AF59CD5F32AF0FBE8FEEB57D2E73637D0E28AC9';
wwv_flow_imp.g_varchar2_table(29) := 'CBB26466113D72EB4ABA776303050C13957C47E274A30D3D3378728A0004C0AAE68A4674CB458505BA3F5B4F4991C156343AD19C18EEF3D03D7E803BFFE7EFBE963654CF2645113391F103936C1545A1EB96CDA1FFFE898DC469E3D182E74F9098758CEF';
wwv_flow_imp.g_varchar2_table(30) := 'A6B715656251E239051E9984C50A46E44A1F61D5213D8C56C486005841956D1A1EE6EABF62DE2DBC636CA9139B2F2466FB8DA38FFBAF6BA08AA2F41FC6E4349C96ABC28E6D86FAD2BB14E04ECECB8C83C7F653F0EC516261E291C9C8A533C482C2AB0EFC';
wwv_flow_imp.g_varchar2_table(31) := 'AC43A8A79B7073135396EF269E41F2CB9097392A9EC44B907AFA2E9366522D7B2E2726FE148F6F82D5F0E54B7A5843F5025A5D59AEEFA7EBE1B40D550BF46446DB7A60124F64B09F864FB5C73A79442C332689A207C58565E8647BECE9482C3FEA68748F';
wwv_flow_imp.g_varchar2_table(32) := '951E08804574557FE25A3D222E07FA8782A6E474A93F21006AC0703920ACF375BAB1036D5ABE588466F7D9B462916E803B2BE7A10724F1F0F09E6F578E8692DFAECCB7392F98641E829F8E0C9EE9C268200957AB8220001691550385A41846019DA7D31B';
wwv_flow_imp.g_varchar2_table(33) := '3E272B569F10910BBDBDFA214FE10CDDCF9EC8B0E17903917765F95881E038E9BACAF242F2095BF17411C3330DF1B0F8362C560B78781FDFE76DD5EC327AF2FE0DF4C263B7D3FEAFFD1EBDB86503FDEBE76FA51D5FBA8BBEFFD02DF4F02D2B399AEE5838';
wwv_flow_imp.g_varchar2_table(34) := '86CF1C8608E844ACF540002CE4EB2DA9D0AD1F3872827A0787F5FD4C3CEFEC131D63F45A82C565BC006891C4B76ED5BC8A9426FDA62B87A228B4786EE232429BE451669EE4E3D582B83DAF989F78ECF6B5F4CAA337D1EFAF9E4B2BE714C60FC5B6B30BBD';
wwv_flow_imp.g_varchar2_table(35) := 'B46949293DB1B99A7EFEF93BE89A457362E1FC8F471A3C8AC878D2918DC0A54400029012A6CC2279CB78E63D81F83DD18133B344D4D17D892EF6F6E9C97D65A2C388CEA907088F66187657CDAD1021E67CAAE6CED40D69499E44E4CB8E115E25188D5526';
wwv_flow_imp.g_varchar2_table(36) := '562A5E78EC36FAA31B1751C033FDCA436D45807EB665233DFEB1C4AF62F33D0EE34713A3E65DB5B1BAB2AAD519B8D9BE225602BCA5891B6B2EF4F553DBD1336923E91123870F0F1CD6D3F1B7BFD1AE7EC0E05194E93B9E21FA945E8FF12CD14687208614';
wwv_flow_imp.g_varchar2_table(37) := 'A19EB3E2CB3AB1ECF98D0737D2F259E95F7EFCE10D9574437D62CE217CB9472C1566376A321413DE24048C4D9BE43082B225E02B9F43AA3FD119F6761EA3D7771FA22BC1E437F118F38B8ABEB6F7F8397AEDBD3D1432BC1B303067B1319AEE676188EF9C';
wwv_flow_imp.g_varchar2_table(38) := 'BED41FF766BD3DDD93789189310F36CCDFFE91811EF6C6DC7DEBEBE8D6EAB17313B10329FE7BF69E5534A330A0C70EF767F6D4A36E009E29094000A6C463C24145A5C0DC2564EC38DD177BE817EFEEA14E31AC9F2C87FEE110BDF6FE3E6A6B3F4C11C30D';
wwv_flow_imp.g_varchar2_table(39) := '3FFE990B482D284E9ACC98C7998B89CB85A491D30834DA32E6C126A24303A48D8E0A66CD28A227EFA8E5E08CDD9C220F7DED9EF57AFA885852D477E0319D0004C074A4130D2A5E3F152C5846AAD7A71F0C89C9B4F73E6AA7BF7BFD3D7AE59D36FAD50707';
wwv_flow_imp.g_varchar2_table(40) := 'E8376264F04FE2DBFE85B776D1CFDFDE4597FA13DFBC9CD03FBB92A61AFAAB81228E16733D0383140C27B953307634F57FC3A108F55C4EAC2E18F3602BBC74C75B76F7362DA3629FCADEACDCBDCB2BC8EBF1C46CC446184264623B2EFB27A3BAD9B7968C';
wwv_flow_imp.g_varchar2_table(41) := '52E6411E2C028185B5E42D2E9B509B81C1A1D804DF393132E8E38E1B1A7B79A0FAFC14985745C6558509464480A7688698F94F34E98E43E9CF370833633E3BDA133614319AE13C8C11A2C1C45D8E0BC592A1F15836FEAAD9A57A72DC32ACA330DD93385B';
wwv_flow_imp.g_varchar2_table(42) := '4C370D83E309F0A4A05F5CBF172EAA279F981C540CEBEBE3E3F23E7736BEDE2FA8ACA7F14B8697E6E600001000494441547E7C7C82131DD45B9A98B1DFF151271DBE3030215AAA019DE72ED38EBD5D7A74AF2833893CF400F6182E4F2A4B13731D7C281B';
wwv_flow_imp.g_varchar2_table(43) := 'B770E68C4472431E8940F8CC2000013083629A367834E013D7F2858B5750C1C21AE24ECED7F6BE8A79E49F2D96CEE6555351550305E6569127C98861AAECBC6279908586E3F0A5F94FDFFE88FA86D3FF7191BEA110FDE33BFBD84CCCB15879C5B2666CC7';
wwv_flow_imp.g_varchar2_table(44) := 'F04FD312971915626DDF70282B6F45516222900C7964651489271080004C40223740F517C63A397FBBF2DABEB7A45C7CDB97D0846F5A4AED8F3B3FCF15C4635F190ED277FEF9DFA8F56462A63E7E6CB26DEB891EFACEAFDEA74191361E8785896DC7F7E3';
wwv_flow_imp.g_varchar2_table(45) := '5B1686B8FF704FE272201E96E9F6C879C324A6584ECDD44EAEA693556E08802CD212F3F11495128F26E2590E8F84E8C5B7F7D0DFBF2B961F47261F0D0C04C3F4A39D87E8C59D7B88D3C4D3B32D4F61497C77CCD6280007CF98B3F4C8CB9F074F2596FF8C';
wwv_flow_imp.g_varchar2_table(46) := '798CC91C3B59138000648D707203F1196C7E063ED47B8ECC72FC9EBF6870508C8C1337DF8C2F058F267CE5F3C604EF3FD64DDF7869277DFBB55DF4FCDB07E8D77B8FD3AFF69E88F9BFF5AB0FE8D99777D2A113DD63D2B00DB63526D0B0C32398F8EEFE33';
wwv_flow_imp.g_varchar2_table(47) := 'A98F32E269926D0FF706291449D4CD9847B2F808CB9C000420737693A60CF75FA0E1938768E8F881D873F07CA79C599D9FED8C5C3845FCC04CCCFEB963149DE427C37CE57362730A3C7B6F2CECF9DE016A3F798E7EBBEF08EDDC7738E6BFD09778CA90E3';
wwv_flow_imp.g_varchar2_table(48) := '721A1EF6B30DDE9FCC1947066D47BBA9FD52F64F3DFEF8C3937A76FCEDCF0F56E901F0984A00026022CED8432CFCE28B4BDD69FFFE5FA6C5880C5E267EB1C6C8F944A731DAE2398582C5CB89BFC98DF72118E318FD1CC73F733E711A4E6B3C96CCCF9394';
wwv_flow_imp.g_varchar2_table(49) := 'DC49F958448CDDFFE4A50F89B7BC9F897BFFF415FAE9BB07F5A4DE1989550D3D30CF3D32AB07013089367F0B0F9FEE247E2ACE68D2EBF1D09C8A729A3FABC234575E52ACDF2813CF8B6FC8E1B7EE88EB827890BEE5C93BFE262F58B43CB6EAC062E09D51';
wwv_flow_imp.g_varchar2_table(50) := '41BCCCC88EFD1CC62B121CC75B3A5BCC415EBD1147373285C77889C00F2D7DEFDF4E4F117BF24343E1283DF1F2077A042E374F8EEA01F0984E0002600652B14CC5DFC03C02889B5B387716FDDE8D4DF499DB36D05DEB57D01D4DCB4D73F75CBF3A667753';
wwv_flow_imp.g_varchar2_table(51) := '530395CD484CCEB1F8847AA77E8D375F4FB318F86755C6961979A991FD1CC6C7E2E54F67CB9D5431DCD3F0DDD75BE9277B13BF88948AADDEE1087DE1958FA8BB2771DF42CC2E560052C197711C0840C6E812094362822F1A4A5CFB6E68A8A5DBD7D4D198';
wwv_flow_imp.g_varchar2_table(52) := 'B5EC4474D37C4B6695D2C73734D0DC99E5BACD70FF453108484CA0E9072CF604F87907C34D424FBFFA3E3DF2421B9DBB327D59DE3ADA4F9FF8FE5BB4F3E009BD947CCBB12FC97D077A04784C210001C81223CFC61B5F96D9B06C092D5F383B4BABA927F7';
wwv_flow_imp.g_varchar2_table(53) := 'AA2A6D5E5B4F7EAF3796886FCC090B418AED48FCC71DD63F4E04DE3974923EF6ED5FD37FFEF12EFA3F3B4FD05BC72E535F30425DBD23F4E2FE0BF495D70ED11DDF7D8B1EFFBBDF52EF40E21E024F413115CCAF26711D426EFB935D5F084096C4C3FD8997';
wwv_flow_imp.g_varchar2_table(54) := '70969514D3DAA50BB2B4987EF28047A53575557AC29018050C1EFD88CC74B1977C8A15075ED1E09775E899193CBC221058B0948C97033C21D87AA49BFEF68D3DF4F88F76D00D7FF51ADDFBFFFE85BEFED2EFE8D50F3AE9F4A5C4909F4DF13D0C8179E8FC';
wwv_flow_imp.g_varchar2_table(55) := 'CC4286830064495933FC3847CDA27919FFF867A6C5E01B710F9C3C4F7B3A8E656A22A574FCAE3E5E71E07B1A78B273F87417257B4128CF23142CA8219E584CC9F068A4D8EAC3AC85625E620991A210FEE410800064C9D978ED5F5A5498A5B5F4920F8E84';
wwv_flow_imp.g_varchar2_table(56) := 'E917EFEDA15D07BB68243CF91D7EE9594D2D36AF7A04CF1EA3A8E169C0784AC5EB239E58E4671D78499187F4F163C66D6C96BFA422D6E963AB0F58F233E291E287006489D938F35F18F065692DF5E4C150845EFF703FF50F249ED52F0CF8697DDD62BA67';
wwv_flow_imp.g_varchar2_table(57) := 'E335F4C87FB8961EBDD31CC7B63E7DCB1ABABDB19E661415E885E4F986E0D9A334D925015F0AF0926260FE522AAA5E45858BC432A4181D142CACA5C225D7C41C3FB7C0C37EDDA88B3D76541D02602275C5B49FFF98BE506FEEE918D3F937ACA8A22FDEB3';
wwv_flow_imp.g_varchar2_table(58) := '913EB97E195DBF6C2E55CF2AA6AA99E638B6B5A6B2826E5FB1809EB8EF3ABA65758D5E40BEDD79E4E2697D7F2A0F8F0CF8AE3ED55F40FCED3F555C1C934300022087B3A9B974F70FD2F99EC4EF036C161DF2FEC66A2AF4A57EF34E3605BA6BE522DA24F2';
wwv_flow_imp.g_varchar2_table(59) := '8CDB880607C52820318B1F0FC7D6F9042000CE6FA30925DCD795582F9F5B514AB75F5339218ED501B7AF58486525457A36A14BDDA63DECC4F755F06423DFD8C4230C3D13784C270001301DA9B50679D6FFCCC51E3D931B962F268F2A7FD6BCFDEC65F219';
wwv_flow_imp.g_varchar2_table(60) := 'F28D0C5F3157007ACEC61EA4E2079E7809920541AF741E7AECAA1204C02EF219E63B2C66FE8D492B27F99D3D631C33FD832311DAF6D63EFAFB1DAD74C1F03B8566E631DE162F41F2FD07C3A73B71A9311E4E96FB10802C01CA4E1E1CB7DCB7B0AC505A11';
wwv_flow_imp.g_varchar2_table(61) := 'F80DC1CFBDB1870E9F19FB3B87B5F32AE8816BEBE80B7736D11FDED9688AE39F15DB74CD12E25F198A5790571B864F7751E44A5F3C08DB2C094000B204283BB9C62FFA939DE9687EDB77ECA7B33D89B7FE54CF29A357FEE00EFAF9A337D25FDE5D4FFF6D';
wwv_flow_imp.g_varchar2_table(62) := 'E3427A7C63A5298E7F56ECFB9F5A4D3BFFC7C7E88B1F5F37E63287571D8CCBAFA3C5C326030210800CA0B931C947A77BE9E4F9C46DCFFCEDFCF2233751FDCC80A538789AE191F50BE8278FDE4645FEABF759F0C4E0C8C55396E62BD3B89D794100ECA49F';
wwv_flow_imp.g_varchar2_table(63) := '2379F3A8E38DBD47F4D2CE9A5144DFBCA781021E79938FABE614D257EE5DAF97816F4B36DE85A91F80272D021080B470B933727F303266E8FFCD4F6DA0D280473A8C4F5D338B36AFACD2F3E5FB0FF41D7832220001C8089BBB12F50D8EE8159E5D5A4C37';
wwv_flow_imp.g_varchar2_table(64) := '2C2AD1F7657B1E5CB358CF323A7445F7C3931901084066DC5C95AA6F28210056BFE4643AB0C61F1F8906735F00A6ABAFD5C721005613CE03FBC6270D0BFC5E5B6B546CB8F4888643B696251F328700E4432BA20E20902101084086E0900C04F281000420';
wwv_flow_imp.g_varchar2_table(65) := '1F5A1175C849024E283404C009AD803280804D042000368147B620E004021000135BA1E3D479DA7BECEC0477AAE7B289B9D8604A9177C79F0DB573759610802C9B9FDF661B37D171FC34B5751C99E04E9D4F3CBF1F8F9B535B1B1F40CA294E6914D62951';
wwv_flow_imp.g_varchar2_table(66) := '210059B684A7A4224B0B480E02F611800064C9DE573E97027316136F8D4EF51B9FD3CFF121342E01B23C4B9C9B1C026042DB788ACB260A40A0C0605933F873D08B4B801C6CB4D48A0C01488D1362818069049C64080220A535ACBB043876E90A25730341';
wwv_flow_imp.g_varchar2_table(67) := 'F37E2948C3258094B3C48E4C200052A85B7709F0B7BFF98092B9436713AFEECAB68A0A2E01B245E8D8F41000C7360D0A0602D613800058CF183980804EC0691E0880D35A24CDF21455AFA2B81BBBF498A6214477250108802B9B1D950681AB0420005739';
wwv_flow_imp.g_varchar2_table(68) := 'E03F08B8920004404AB35BB70C28A7F889F21F39DB4B5B7FDA9AD41DEB37EF155DCFB79E4D9AC79FFE62AF5E6545C9ADD3572FB8833C20E8A0C6C885A20C0447E8BD8E5349DD5028625A158E5E1C489AC74727CEE979283EBFEE872733021080CCB82195';
wwv_flow_imp.g_varchar2_table(69) := '0308F0B3170E28464E1701026059F32586CD9665618361C5E31DF3DC83754548F0E3D50DEEEC71E79FBD880A17AF204F51A975D9BBC43204C0B28636DEFD67F45B96A175860D77022A1E9F2401483053030563F2F49694932284C8BA0A9B6FD9A9162100';
wwv_flow_imp.g_varchar2_table(70) := '4E6D19940B042410800048808C2C40C0A90420004E6D19940B042410800048808C2CDC4DC0C9B5870038B975503610B0980004C062C0300F024E2600017072EBA06C206031010880C58061DEDD049C5E7B0880D35B08E503010B0940002C840BD320E074';
wwv_flow_imp.g_varchar2_table(71) := '021000A7B710CA0702161280005804D7F8ACFA897317E9F5DD874C71BF3B70542FB1310F3DD00A8F927830C70AF3D3DBB43BFFE94B982C462E8441002C6A25C5EBD72D0F0D07A9FB628F29EE626F9F6E17CFC3EB28E0C9900004204370D325F3CEA820D5';
wwv_flow_imp.g_varchar2_table(72) := 'E21756F8CAE74E570C1C078129094000A6C493C54145A582CA7A0ACCAB225FC53CE2CE6A96C3F3F059B40B928E2100011883C3FC1D4FE10CF295CD315500A43F0F6F781F80F98452B1987837402AB19D102757CA0001C89596423941C0020210000BA0DA';
wwv_flow_imp.g_varchar2_table(73) := '66D2305B7FE8D4797AF3D01953DCC15317135532E49108B4DA875500AB084300AC226B835DE36BB2F61FEB16CB8EEDA6B803C7BBF5DAA85E9FEE97E7C1258055AC21005691B5C12ECF0D589DAD77C64CABB3C879FBB9540108402EB5D63465E5B7E406E6';
wwv_flow_imp.g_varchar2_table(74) := '551377524F413199E97CA5B3A860C1325285DD698A61C1615C0258003566120210C3903FFF3C8525E49FB59002F3979AEA7C3317901A28B209142E01AC020F01B08A2CEC82400E108000E44023A188B94320D74A0A01C8B51673587915D5A397E8C1EFFD';
wwv_flow_imp.g_varchar2_table(75) := '2B353CF34B53DC3FBC7B50B7ABA85EDD0F8FB9042000E6F2749D35D55F60799D65E46179251C9A0104C0A10D932BC58A4D0EFA029615D75B52419EE232CBECBBDD3004C0ED674096F5E76FE782CA3A2A5C544F0562E5C134B7A0868AAA1AC83FBB32CB12';
wwv_flow_imp.g_varchar2_table(76) := 'CA4B9E8B3949118088E689E4221C943975028AD71FBB4780EF1330C5050A891429A72739F14FF1292332CA2585B0578B420064B426F2C81B02112D2CA5CF4811005995C99BD647455C4F20ACF9F247006455C6F5670D00D846C0EC8C033E6FD86C9BC9EC';
wwv_flow_imp.g_varchar2_table(77) := '491901C8AA4CB20A220C0472914028AF2E01C2DA502E3602CA0C02761150239EFC99041C291E1CB40B24F205815C2420ABCF48B904D8FFE995AC66C15C6C08941904A62360C1F1E0689FB1C0F4589352046034CBC46B654603B0010110484A405A5F8100';
wwv_flow_imp.g_varchar2_table(78) := '24E58F4010B09540E2E79F2C2E0604C062C0300F02E9125088F26F04202A9578BE335D22880F020E256051B1F27104A0B45A040B664120CF08C8EB2BD22E01548A4000F2EC344575AC2120B3AF4813805DC7EADB05AEA870F88000084C4E6070B4AF4C1E';
wwv_flow_imp.g_varchar2_table(79) := 'C3C423D204809E5244E7D73A087F209027042CAAC65E8AF51592F2274F004475145270192038E0030293115024F711A90240A4BD3959C5110E0220C004A252BF24A50A4024ACFC425451130E1F1000818904348A467F3E31D8BA10A902B0E7D1BA93A22A';
wwv_flow_imp.g_varchar2_table(80) := '7B84C30704729A804585DFB3FB732B4E5B643BA959A902C02550885EE32D1C0880C0580276F40DE90220C6FF1080B1ED8E3D1088111002F04ACC23F19F7401F08CF4ED14F53B261C3E2000020902C74B8F9DFC20B12BC7275D00763D766D48546DBB70F8';
wwv_flow_imp.g_varchar2_table(81) := '80404E12B0A8D02D6F3E759B94F7001ACB2F5D00387325E269115B713520FEE303026E27A050D8A3AADBECC0608B00EC7E64D93171BDF31B3B2A8C3C41C0710434FAE5AE876B8EDB512E5B04802B2ABEFE9FE52D1C0880007D8B6CFAB34D005A9BEBDE14';
wwv_flow_imp.g_varchar2_table(82) := 'A3805FDB546F640B021911303B11F701EE0B66DB4DD59E6D02102B6034FA446C8B7F20E052026152FFC4CEAADB2A00BB3FB7BC4D54FE55E1F00101371278756F73CD5E3B2B6EAB0070C5D588F265526880FD7020E02202573C0A7DC9EEFADA2E001F3E52';
wwv_flow_imp.g_varchar2_table(83) := 'DB491A3D693708E40F02D31130F3B842DA97776DA9EB32D36626B66C17002E745D71ED7748D1DE663F1C08B8807A95F2670000049049444154C0CEDDCDF5DF77423D1D21002F7C5A89A861B51997024E382550068B09F0D0FF618BF348D9BC2304804BCB';
wwv_flow_imp.g_varchar2_table(84) := '97026258B445F8A3C2E10302F94820AAA9CA7F71C2D03F0ED73102C005DABDA5FE67625DF47FB11F0E049C44C0A4B27CA9EDE1DA974DB2658A19470900D7687773DDB3E252809F15E05D3810C81302CAB75B9BEB6CBBE36F32888E13002EA827D8F798D8';
wwv_flow_imp.g_varchar2_table(85) := 'FE8B70F88040EE13D0B4975B8FD57CD1891571A400F023C39E91E20714525E722234940904D220F0AA2754F25992F8AA6F4AE3CF9102C0E5DFF5D8C2C1DD5B6AFEA3A228CFF03E1C08D84520E37C15FA46EB96DA4FF2B99CB10D8B133A560062F556146D';
wwv_flow_imp.g_varchar2_table(86) := 'F796DA278508F0B2492416867F20E07C0223621EEBB3AD5BEABE4AE21C7672719D2D00A3E484083C1FD5B49B88B443A341D88080230928447B95A87A93E8FC3F766401C7152A270480CBBC676BFDEFCAC9D728FC7F261CBF564C6CF00101C7100869A43C';
wwv_flow_imp.g_varchar2_table(87) := 'AD8EF4ADDFFDB91AE9EFF6CB9442CE080057F0CDE6A5C36229E5294D555709A5FD270E8303012B09A4605BF47B7A518D280D6DCDB55FE709EC14D238264A4E09409C5ADBC335EDBB9BEBEE13D757378B307ECBB0D8E00302D209BCA9A9B45E0CF7FF13DF';
wwv_flow_imp.g_varchar2_table(88) := 'C92A3D771332CC490188D7BB754BED4E3122B85954E2068DE847223C281C3E206025013EC77ECC5F3EE2DCBBADEDE1BADD566666B56DD177ACCEC27AFB1F36D7BDD7D65CF7906724BA883485DFB0D2657DAEC8C165040E93A23DC1E798E8F86286BF362F';
wwv_flow_imp.g_varchar2_table(89) := '469E792100F11371D763CB2FB46EADFD6BD140B59A46778BF0EF8AB98213628B0F08A44D2076EE28F43DB1FA74A738A76A5AB7D47F93CFB1B40D3938415E09809173DBD6BA5F8B46FBBC982B58A244A38D9AA6F14B477688385784C307049211E0736387';
wwv_flow_imp.g_varchar2_table(90) := '42DAD745A76FE273A7754BDD1FB436D7E7ED6DE9792B00C6D6E5770FB66DAD7FA6B5B96EB37025114DABD148FB941825FCB988C7EF246C155BA9BFCA2AF2C3C73E02DCD6DCE6AFF239C0E78247A15A3E3784DBBCBBB9FE69D1E9F9B87D259494B32B0460';
wwv_flow_imp.g_varchar2_table(91) := '3CCBBD5BEB0FB735D7BF2446097FDADA5CF780704DC2550AA70C5CA602226FC5087917F8346549D4E35B46A4D62B1AAD54D5C8DAA846EB5545B916CE790C626D23DA88DB8ADB8CDB8EDB90DB92DB94DB96DB58386EEB26B17D80CF8136712EEC72C0EBB9';
wwv_flow_imp.g_varchar2_table(92) := 'C69FA732F6551999E4521E9D5FA80BB6362FEDDDDFBCB4FBFDADB527F63C547DA4B5B9A663F7D6BAFD1F3EBC62CF9EAD751F7EB8A576179CF318C4DA46B411B715B719B71DB721B725B729B76DAAE7A25BE24100DCD2D2A82708242100014802054120E0';
wwv_flow_imp.g_varchar2_table(93) := '16021000B7B434EA09024908400092404190BB09B8A9F6100037B536EA0A02E3084000C601C12E08B8890004C04DAD8DBA82C0380210807140B0EB6E026EAB3D04C06D2D8EFA8280810004C000035E10701B010880DB5A1CF50501030108800106BCEE26';
wwv_flow_imp.g_varchar2_table(94) := 'E0C6DA4300DCD8EAA833088C1280008C82C00604DC480002E0C656479D416094000460140436EE26E0D6DA4300DCDAF2A837080802100001011F10702B0108805B5B1EF506014100022020E0E36E026EAE3D04C0CDAD8FBABB9E0004C0F5A70000B89900';
wwv_flow_imp.g_varchar2_table(95) := '04C0CDAD8FBABB9E0004C0F5A780BB01B8BDF6FF0E0000FFFFB6CEEC7300000006494441540300431B20E2F43077DA0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10867447148562246)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDD09941DD779D8F9AFDEDA7BA3BBD10B1A3B0110244082101771154591922859B263399222CB8E2D8F57652C3BB113DBE3334E9C78E69C99';
wwv_flow_imp.g_varchar2_table(2) := '93CC92CC1CEF96EC132F896DD95224CB5A625212254A244571053700C4DE40A301F4BEBC3DF77B10C846A36B79DD6FA9AAFB6FB2BADFABBA75EB7EBFDBE8FAEAD6F212073F75B8C28401BF03FC0EF03BC0EF00BF0376FD0E24842F04104000010410B04C';
wwv_flow_imp.g_varchar2_table(3) := '408404C0BA2E27600410400001044800F81D400001041040C03A010D9811005560420001041040C032011200CB3A9C7011400001046C17B81C3F09C06507BE238000020820609500098055DD4DB00820800002B60B5C899F04E08A043F114000010410B0';
wwv_flow_imp.g_varchar2_table(4) := '488004C0A2CE26540410400001DB05DE8C9F04E04D0B5E218000020820608D000980355D4DA00820800002B60B2C8F9F0460B906AF114000010410B0448004C0928E264C0410400001DB05AE8E9F04E06A0FDE218000020820608500098015DD4C900820';
wwv_flow_imp.g_varchar2_table(5) := '800002B60BAC8C9F0460A508EF114000010410B0408004C0824E26440410400001DB05AE8D9F04E05A13E6208000020820107B011280D87731012280000208D82EB05AFC2400ABA9300F010410400081980B9000C4BC83090F01041040C07681D5E32701';
wwv_flow_imp.g_varchar2_table(6) := '58DD85B9082080000208C45A800420D6DD4B700820800002B60BB8C54F02E026C37C041040000104622C400210E3CE25340410400001DB05DCE3270170B76109020820800002B1152001886DD712180208208080ED025EF1930078E9B00C010410400081';
wwv_flow_imp.g_varchar2_table(7) := '980A9000C4B463090B01041040C07601EFF84900BC7D588A0002082080402C05480062D9AD04850002082060BB805FFC24007E422C470001041040208602240031EC54424200010410B05DC03F7E12007F234A208000020820103B011280D87529012180';
wwv_flow_imp.g_varchar2_table(8) := '000208D82E10247E1280204A94410001041040206602240031EB50C24100010410B05D2058FC2400C19C2885000208208040AC04480062D59D04830002082060BB40D0F84900824A510E01041040008118099000C4A833090501041040C07681E0F19300';
wwv_flow_imp.g_varchar2_table(9) := '04B7A224020820800002B1112001884D5712080208208080ED02B5C44F02508B166511400001041088890009404C3A923010400001046C17A82D7E1280DABC288D0002082080402C04480062D18D04810002082060BB40ADF19300D42A46790410400001';
wwv_flow_imp.g_varchar2_table(10) := '046220400210834E24040410400001DB056A8F9F04A07633D640000104104020F202240091EF42024000010410B05D602DF19300AC458D7510400001041088B8000940C43B90E62380000208D82EB0B6F84900D6E6C65A082080000208445A800420D2DD';
wwv_flow_imp.g_varchar2_table(11) := '47E311400001046C17586BFC24006B95633D041040000104222C400210E1CEA3E90820800002B60BAC3D7E1280B5DBB12602082080000291152001886CD7D1700410400001DB05D6133F09C07AF45817010410400081880A900044B4E368360208208080';
wwv_flow_imp.g_varchar2_table(12) := 'ED02EB8B9F04607D7EAC8D0002082080402405480022D96D341A01041040C07681F5C64F02B05E41D6470001041040208202240011EC349A8C0002082060BBC0FAE3270158BF21352080000208201039011280C875190D4600010410B05DA01EF19300D4';
wwv_flow_imp.g_varchar2_table(13) := '43913A1040000104108898000940C43A8CE62280000208D82E509FF84900EAE3482D082080000208444A80042052DD456311400001046C17A857FC2400F592A41E0410400001042224400210A1CEA2A90820800002B60BD42F7E1280FA59521302082080';
wwv_flow_imp.g_varchar2_table(14) := '000291112001884C57D1500410400001DB05EA193F09403D35A90B0104104000818808900044A4A368260208208080ED02F58D9F04A0BE9ED4860002082080402404480022D14D341201041040C076817AC74F02506F51EA430001041040200202240011';
wwv_flow_imp.g_varchar2_table(15) := 'E8249A880002082060BB40FDE32701A8BF2935228000020820107A011280D077110D4400010410B05DA011F193003442953A11400001041008B9000940C83B88E62180000208D82ED098F849001AE34AAD082080000208845A800420D4DD43E310400001';
wwv_flow_imp.g_varchar2_table(16) := '046C176854FC24008D92A55E041040000104422C400210E2CEA1690820800002B60B342E7E1280C6D95233020820800002A1152001086DD7D0300410400001DB051A193F09402375A91B010410400081900A900084B46368160208208080ED028D8D9F04';
wwv_flow_imp.g_varchar2_table(17) := 'A0B1BED48E0002082080402805480042D92D340A01041040C0768146C74F02D06861EA470001041040208402240021EC149A840002082060BB40E3E3270168BC315B4000010410402074022400A1EB121A840002082060BB4033E22701688632DB400001';
wwv_flow_imp.g_varchar2_table(18) := '041040206402240021EB109A830002082060BB4073E22701688E335B4100010410402054022400A1EA0E1A830002082060BB40B3E22701689634DB410001041040204402240021EA0C9A820002082060BB40F3E22701689E355B42000104104020340224';
wwv_flow_imp.g_varchar2_table(19) := '00A1E90A1A820002082060BB4033E3270168A636DB420001041040202402240021E9089A810002082060BB4073E3270168AE375B4300010410402014022400A1E8061A810002082060BB40B3E3270168B638DB430001041040200402240021E8049A8000';
wwv_flow_imp.g_varchar2_table(20) := '02082060BB40F3E3270168BE395B440001041040A0E50224002DEF021A800002082060BB402BE2270168853ADB440001041040A0C50224002DEE00368F0002082060BB406BE22701688D3B5B450001041040A0A50224002DE567E30820800002B60BB42A';
wwv_flow_imp.g_varchar2_table(21) := '7E128056C9B35D0410400001045A284002D0427C368D0002082060BB40EBE22701689D3D5B460001041040A0650224002DA367C30820800002B60BB4327E128056EAB36D0410400001045A244002D02278368B0002082060BB406BE3270168AD3F5B4700';
wwv_flow_imp.g_varchar2_table(22) := '01041040A0250224002D6167A30820800002B60BB43A7E128056F700DB5FBB40A52C95625E4A0B33529CB92885A9F392BF3826F98953921B3F2EB973C72E4FE6757EE274759996D1B2A5C5D9EABA6BDF386B22800002D11620018876FF59D7FA4AB924E5';
wwv_flow_imp.g_varchar2_table(23) := '424E4AF3D366877E5672E7CDCEFEFC49C95F3A5B4D008AB397A468969516E7A4B4347F7932AF8BF353A2CB0A9A2498B29A10E8BAF90B67A4383759AD53EBB60E94801140A04502ADDF2C0940EBFB801604113047FBBAF3CE9D3B2E4B670E4BCE1CE55777';
wwv_flow_imp.g_varchar2_table(24) := 'DCF9C5206B5F534677F665B3AED6A14940B54E53B72609BAEC9A159881000208C44C800420661D1AB77074675C989A90C5D3AF558FF075A7DDA818B56E3D85A0C940617A4274DB8DDA16F5228080DD0261889E04200CBD401BAE11D09DAF9EABCF8D1D31';
wwv_flow_imp.g_varchar2_table(25) := '3BFE71A9948AD79469D40CDD5661725C72678F8AB641DBD2A86D512F020820D02A01128056C9B35D5701BD404F2FE02B4C9E9372B1E05AAED10BCA857CF5DA82FCF993A26D6AF4F6A81F01046C1108479C2400E1E8075AF13D81E2DC94E4CF9F92727E49';
wwv_flow_imp.g_varchar2_table(26) := '2A95CAF7E6B6F6875E4C989F385DBDF0B0B52D61EB08208040FD044800EA67494DEB1428E815FA174E9B1D7F799D35D57F753D0D909B38257A6D40FD6BA7460410B049202CB1920084A5276C6E47A52CF98B67441380B530F47475C8DEED9BE5EE037BE5';
wwv_flow_imp.g_varchar2_table(27) := 'A1DB6F96F7DE7550DE7FEF5BE4036FBB4D7EE8FEDBE5FDF71C94F7DC79401EBC6DBFDC75F35ED9BB638BF47677AD655352D06B03CC290193A5AC697D5642000104C222400210969EB0B51D66985FEFE12FCE4ED62430D0DB2307F6EC9087EFBA45DE75DB';
wwv_flow_imp.g_varchar2_table(28) := '3EB975F716D935D4279B3674CA40579B6C68CF4A67362D1D99946CE868938DDD1D32DAD72DBB87FBE4D65D9BE5C1837BAB89C2AD7B774ABFA9CB7124F0973E784847034802029351100104DE1008CF8B44789A424B6C1428CC5C905A76FEED998C1CDC7B';
wwv_flow_imp.g_varchar2_table(29) := '9D3C70F07A39B07D4406BBDAA53D9D92640D7B702DABC981260AFBB60E9BBAF6CAED37EE96AE8EF6C05DA0494061F25CE0F21444000104C22690085B83688F3D02FA109E8219520F12712A913047FC3BE5FBEE3E20376D1DAAEEF483AC17A44C473A297B';
wwv_flow_imp.g_varchar2_table(30) := '4737CA7BEFBC596EDAB55D32A95490D5A43073910B03034951080104AE0884E9270940987AC3A2B694738B52B8381628E2DEAECEEA50FF81EDC375DDF1AFDC78369990833B37C9C32611E86E6F5BB978D5F7FA14C1F2D2FCAACB98890002088459800420';
wwv_flow_imp.g_varchar2_table(31) := 'CCBD13D3B6E907F8E4CE9F30A7D0FD6FF31B19E893B7DFB257FA3AB24DD3E86DCFCAC36FBD5906FB7A7DB759A95EC03856BD6DD1B730051040C0728170854F0210AEFE887F6BBE77D19F3E6DCF2FD82D238372CFFE5DD2D39EF12B5AF7E56DE6B4C00307';
wwv_flow_imp.g_varchar2_table(32) := 'F7CAE8D0806FDDFAE144C5E909DF721440000104C224400210A6DEB0A02DFA509DD2C2AC6FA4A31BFBE4DE1B7756AFE2F72DDCA0027A4AE03E93800449024AFA91C473B5DDC9D0A0667B576B123031A316FA5C83E593CE135DE6BD364B1140601D02615B';
wwv_flow_imp.g_varchar2_table(33) := '9504206C3D12E3F6E8517F908BFE7A3ADAE4DEFDBB256DCEC9B79A2363DA70EF4DBBA5B7A7DBB32915B3F32C4E5F9030EE442BC582E8750AD58B2ECD4885DE76993F7F52F471CB3AE5274E551F795C30EDD732A5C539A914F39EF1B2100104A22F400210';
wwv_flow_imp.g_varchar2_table(34) := 'FD3E8C4C04BA73D14FDCF36A707B362BF71ED82B593304EF55AE99CBB20947EEBF79B764D269CFCD564F05846014A0DA8E998B92333BF9A5D3AF5EFEF8E4F1E3D58B2EF5614B7ADBA58EC4E8E39675D21DBECE2B4C8D57CBE4CF9FA8AEB374E6B56A1DFA';
wwv_flow_imp.g_varchar2_table(35) := '81485ACE3378162280808F40F816930084AF4F62D9221D6E2E05D839DE71E37532D015FC7EFC6661F5B667E5CE7DBB7D37A73B588DD5B7609D0BE811BBEEA897C68E568FEC0B93E7444F4BE887295574C8DF8C5054CCE4B7592D7365D20F43D23AB4AE9C';
wwv_flow_imp.g_varchar2_table(36) := '492096AA9FCC38C1E8801F22CB118888000940443A2AEACD2CCE5C12DDA178C5B163D3906C19F0BFF2DEAB8E462EDB3ED8EB7B67809EE62805B8C6A15EEDD4644377FCB9F113D5617C1D61D136E84EBC6EDB308983D6A9A3003A4AA0230BBA4D318945BD';
wwv_flow_imp.g_varchar2_table(37) := 'B6413D08C45D208CF1910084B15762D8A6D2C2B46F54FB778C8A196DF72DD7CA0207776FF33D15509A9F32FBC652C39BA99F9C583D877FE9AC49AE720DDFDE950D6822A0D7112C9D3B5E1D651093205C59C64F0410888E00094074FA2AB22DAD140B5229';
wwv_flow_imp.g_varchar2_table(38) := '78EFA0F66CDF2C7D9D6DA18F71B8B753B68F0E79B6531F725469E045747AD4AFCF51C85F382DBA33F66C4C031796730BD56B04B41DDAA6066E8AAA1188B840389B4F0210CE7E8955AB4A8BB3E620D1FDA13FA944526EDA36129998F78C6EF4FCDC00DD19';
wwv_flow_imp.g_varchar2_table(39) := 'EA55F78D08A89C5B34E7F8F5C8DBFF56CA466C7FB53A8BF3D3923B7BB4A5C9C86AED621E0208780B900078FBB074BD026678B86476105ED50CF6F7563FB9CFAB4C9896F577B6CBA68D7D9E4D2A2D2D782E5FCB4275CC4F9C343BDAC5B5ACDED075CA85BC';
wwv_flow_imp.g_varchar2_table(40) := 'E4C68F576F376CE886A81C81080A84B5C9240061ED9998B4AB7AF198396A750B279548C88E4D836E8B433B7FD4242D5E8DAB1496CC8E7AC9AB48F06526892AE8FDFB17CE885ED51F7C4511F5ED68CBCAEED141B96FFF75F2F06D37C80FDCB94F3E78DF01';
wwv_flow_imp.g_varchar2_table(41) := 'F9E8FD07E547DE7E503EFCB69BE5FD6FDD27EF7CCB5EB967DF75B277EB8874B6B755D7951ABEB4AF350928CEE8F310CA35AC49510410688540A2151B659BF60854AF4AF7B85ABCA3A34D36F674460E64C0B45977AE6E0DAF140B2601A8C391BAB1D30BEE';
wwv_flow_imp.g_varchar2_table(42) := '0A93E3E6344AF09D6A2695923B6FDC2E3FF6E041F9D51FB8533E76FF3E79CFCD5BE56D7B863B8E89FC0000100049444154E5AD3B07E5E0963ED937DA2B376EEA95039BFBE5AEEB06E581BD23F27D07B6CA3FBD77AFFCCBF7DF213FF2C041B963EFF66A32';
wwv_flow_imp.g_varchar2_table(43) := 'E016E7CAF97AF741FED2B9EA1D09A6C12B17F31E010B05C21B7222BC4DA365711028E7BD2FFEEBEBEA92DE163CEB7FBDB6FAA022AF4704EB8EB0925FFF0840616A428AB39702377783393DF1BE3BF6C92F7DFF9DF2FDB7EC90EB36764B720DB756E85318';
wwv_flow_imp.g_varchar2_table(44) := 'F70C75CB3F7ACB0EF9E5F7DD511D21E8EFEE08DC8EE2ECA414A6C60397A7200208345F8004A0F9E6766DB15CF48CB7BFB7CB73795817261C47867C4E03D43A5CBF32567D726271E6E2CAD9ABBED721FBFBF6EF948FBFFB56B97BD7A0746553AB965BCBCC';
wwv_flow_imp.g_varchar2_table(45) := '4C2A511D21D0BA1F3AB8473ACC298520F568DBF5BA8520652983405C05C21C170940987B27066DAB94BD87AD3B03EE4CC246E1980675B767CD778FFFCB6B7F16809E3A093AECBF6DA85F3E7CEF7E33C4BF4D3AB3F5DBF1AF8CAC3D9D9477DC302A1FBA67';
wwv_flow_imp.g_varchar2_table(46) := 'BF8C6EDCB072F135EF751424AFD72DF8DC027ACD8ACC400081A60890003485D9CE8DE87970BD25CE2BFA6432BABF826DE994E848805B7CBA03745BE6355FCDF4C37AF4A23AAF72BAECE69D9BE5A3F7DE28BB36366F24454F0DFCD3FBF6C9DEADDECF43D0';
wwv_flow_imp.g_varchar2_table(47) := 'F655F41A86F327457F17F43D13027609843BDAE8FEF50DB72BAD3302BA23139FA3E07422BABF82ED99B4388E8E05986057FBDFECFC569BED37AF30794E829C3E78C7813DF24FEEDC5DD7E17EBFB65D59DEDD96961FBDE70679C0B4E1CA3CB79FFAE1447A';
wwv_flow_imp.g_varchar2_table(48) := '21A3DB72E62380406B04A2FBD7B7355E6CB526818AE81F7FB75592898424223C02A017CA39E2B88567E69B6515F707209902D7FCAF9FCC579AF37F6CF2FD37EF9287F68D5EB37E3367388E230FDDB8491E7CCB0DBE9BD50723696CBE05C352C0246F9AC0';
wwv_flow_imp.g_varchar2_table(49) := 'EA24E675589A453BA22510F6D626C2DE40DA176501471CB393778BA0A23B479DDC0A847CFEE5AB1B7C76F08E13380ADDD914672F4AC567877370D756B3E3DD1CB8DE4616741C47EEDD352807776FF1DC4C35B6E909CF32CD5EA86DD2272BEAC59685C971';
wwv_flow_imp.g_varchar2_table(50) := 'D1EB15F4838EF45906FA3907FA390B3A2D9D3D26FA539769998219A1D175F43A0DADA3D9ED667B08D44B8004A05E92D4738D8093488A93CA5C33FFCA8CB2D9F9177D2E12BC52368C3F8BC59278EEFECDCEB1967697E6A6C4EF9304B70FF7CBC3376F5BD3';
wwv_flow_imp.g_varchar2_table(51) := 'AD7DB5B4A596B2D95442DEBD7F9B8C6EECF35CADB4342F2DBF2BC02457E5FC92E81D0AF90BA74577F6F90B67441FB4A43BF5D2C28CE8484539B7205AEEF2B428D5B69B655AA6307DE172B270EEB8F9795A8AB397A43AD2657E9F3D0158689940F8C32501';
wwv_flow_imp.g_varchar2_table(52) := '087F1F45B785E6E8DF49785F95AE3BD1A806982B16CDD1BA7B0AE038C18FFEC5EC980A53E73D29F4AE830FDCB157BADBBC4D3D2B69D0C29EF6B47CF8EE1BA43D9DF6DC825F8C9E2BAF67A1D939EB8E5A8FE697C68E541F54545A9835EC6BBF53438FFEB5';
wwv_flow_imp.g_varchar2_table(53) := '8EFCC531593A73B89A4CE827348AD9D67A9ACABA08344B8004A059D2166EE7F20880F70EA15876DF81869D6C295F141DC5706BA7930CBEA32ECE4E8AEE50DCEAD2F9EF7CCB1ED9D8E53EA2A2655A396DECCCC8DB6FB9CEB3097AA4DCD45100935815CD11';
wwv_flow_imp.g_varchar2_table(54) := 'FAD2D861D11DB50EDB7B36701D0B7594206F4615745B3A52603A741DB5B16AD405A2D07E128028F45284DBE824939EAD9F99AFC3E3723DB7D0B88597667DDA6E4E8104DD7A7587E151B8A7A34D0E6EE9F728118E45B76D1F94019F873BE90EB9E13B47B3';
wwv_flow_imp.g_varchar2_table(55) := 'E3D7446369ECA8142E9D3543F4F9A601950B7929E8A8C0D9D7ABA73CFC12BBA6358C0D21B04280046005086FEB2BE024BD47002ECDCED577834DAAAD582ECBF8A529CFAD3929EFD8AFACACF7FB577C1E9673DBEEADA13AEF7FA5ED2B7FB6A793B26FDBF0';
wwv_flow_imp.g_varchar2_table(56) := 'CAD957BDAF9E5F373BC9AB66D6F14D39B728B989D3A247E33AE25069C190BC6E53AF1FC84D9CBADC8E5CFD3F1DB28E645455778168544802108D7E8A6C2B9DB4F790F5ECFC824C2DACFF99F9CD065A2A946462D2FD763D27999244A63D50B3F4A233DD61';
wwv_flow_imp.g_varchar2_table(57) := 'B815D673FF77EE1A725B1CBAF907B76D940D5D1DAEEDD25875E7E85A601D0BF4A83F77FE8494166644B7B38EAAEAB66A69615672E3A64DF3EEBF2F75DB18152150830009400D5814AD5DC0496524E17124BCB898978999E81D1D4DCCCC4BB1E47E015935';
wwv_flow_imp.g_varchar2_table(58) := 'EE74D61F4C87AACDCECAABE0EECDC32D79D88F579BBC960D766665C7F0805711292F9A919F3A1F99EBA9053DE2D61115CF8D7B2CD4EB3633A98474B565656377870CF6748826609994F7A92CF1F9D2D300DA366DA34F5116C740202A21900044A5A722DA';
wwv_flow_imp.g_varchar2_table(59) := '4EC7494822DBE9DAFA62B924E727675C978775C1B84F9B1399AC381E89CF95B82A2689A8EE0CAFCC58E5E78EA1DE55E686775622E1C8FE2D3E09407ED19C97F7FEA4C85A222C4C4D885EE457CB3A5AB62393963BF76C965F7BFF1DF2E73FFD0EF9F22F3C';
wwv_flow_imp.g_varchar2_table(60) := '2C5FFAC4BBE4EFFEE777C8A77FE67EF9EB9FBE5F3EFFF107E48B9F7848BEFC8BEF923FFBA907E557DF7FBBBC75F766D1D31D5A472D93B6B1A0777BD439F9A9A50D9445E08A0009C015097E3646C01C52253BBA3DEB3E7761524A11BA1B60D28C5A689BBD';
wwv_flow_imp.g_varchar2_table(61) := '82F24A7A96AF5729E6CD50F5E5470A2D9F7FE5F5E0862ED9B2C13D81BA522E6C3F87CD91733695726D56F5DCBCCF750FAE2BAF5850303BFF428D1F3DBC6DA0477EF4DE7DF2471F7B9BFCBF3F78B3FCD8C1213938DC219BBB5332DC9992C1F6E49B53474A';
wwv_flow_imp.g_varchar2_table(62) := '463AD3B2A53B236F1969971F3F382CFFF10307E4931F7BBBFCF8FDFB65EBC69E152DF27E5B3009804EDEA5581A5D81E8B43C119DA6D2D2A80A24DA3AC53123016EED5FCCE5E4B9E367DD16876EFEF17317656EC1FD0E00C77124916993205FBA23F42AB7';
wwv_flow_imp.g_varchar2_table(63) := 'A9BF57867BB25E4542B9ACBB2D29D76F1DF66C5BA554F05C1E64A13EC0A7969DBF0EE57FFCA15BE40F7EE42EF9F577EC945B86DAA5379B0CB2A9ABCAF4661372CB70BBFCEAFD3BE4F77FF82EF9D9070F981181F45565BCDE5C6E77B89E8CE8D55E96C553';
wwv_flow_imp.g_varchar2_table(64) := '8004209EFD1AAAA8F48238BFE1F0D78E9F91F97C3154ED5EAD3193F34B72E49477B29268EF12BF78AFD4ADA700AEBC5EEDE7B68DBDABCD0EFDBC743221D78F7ADFB65829ADAFBFF582BFC2E478208B9469CF87EFDE2B7FFFF30FC927EEDE225B7B82EFAC';
wwv_flow_imp.g_varchar2_table(65) := 'FD36B0BD372DBF78CF56F9EC3F7B877CFF6D7B44B7E5B78E2ED7C4A5E473FD8796638A9640945A4B0210A5DE8A705B939D1B3C5B5F2C97E4D553C1FE987B56D4E0852F9F3A2FB9BCF73DE5C9F66ED18720056A4AC5FD42425D7FA02BD84882960DDB34D4';
wwv_flow_imp.g_varchar2_table(66) := 'EDDDF64A71ED09C0E55BFD4E050A79E750AFFCF94F3E20BFF9D06ED9D455BF1DBFACF8DAD29D96FFF3BDD7CBA77EE201D9D4D7B562E9EA6FF317CE48231F4EB4FA56998BC065011280CB0E7C6FB040AABB4F1269EFA1ECD74E8CC9E94BB30D6EC9DAAB3F';
wwv_flow_imp.g_varchar2_table(67) := '37BD2827C7BC93141DED4876063F6AAF94BC13001DB25E7B8B5BBB667B3AE5D9808A4FF2E3B6B25E3791BF70DA6DF155F3EFDBBB457EEF87EF949BCC50FF550B1AF8E6B69176F9931FBB57EEBE7E8BEF56F4EE80FC8531D1987C0B53200202D16A220940';
wwv_flow_imp.g_varchar2_table(68) := 'B4FA2BB2ADD51DA326015E01E828C0B3474ECAA5103E1D703E5790C79E7D49B48D5E31A47B07831FFD9B8A2A65F7A360C7113123D7A65434FF4F251CEF8697DD2F7E745DB15296C2D484F85D3B9134DBFE917BF6C97FF847378B1E99BBD6D7A0055BBA53';
wwv_flow_imp.g_varchar2_table(69) := 'F29F3E70B3FC93BB6E9054C2FBCFAC8E00E8350162626B5073A816815505BC7F33575D859908AC4D20D9654601B2EE0F88D15AA76666E5BB874F49AEB4869D8356D08069B15094AF3F7F587205EF8BD62E2739FDC15BA0B78279EC04937AE164743F2AC1';
wwv_flow_imp.g_varchar2_table(70) := '242F8E99DCFFC4541FD4A30612FCABB4302B7E8F4DD6DA3EF8D6BDF2EB0FEE949E8CFBF6B55C23A7CE7442FEF53B77CB3FBEEB7ADFCD1467274563F32D4881500B44AD71ADFBD7113529DABB6E013D2F9EEE19F0ADE7DC854BF2C4CBC7A4C67D836FBD6B';
wwv_flow_imp.g_varchar2_table(71) := '29A08FFCFDFA7387E5E2B4F7B30A1CC79174DF8888F92975FA2A1B00C7F1398AAED3B61A514DC21CF95677F22E953B4E6DB155CA2573F4EFFD8989BAA9076EDC2AFFF2ED3BA5B6DA75CDFA4F8E54E457EFDF290FEEDF2E7E5F7A51A0300AE0C7C4F23A0A';
wwv_flow_imp.g_varchar2_table(72) := '9000D41193AAFC05F40AF9645BA76FC193E726E4D1E75F131D7AF72DDCA0027AE4FFE8B3AFC9C494FF235C13666423D5D9535B4B74076876926E2B690250F0B946C06DDD30CCD7C7256B0C9E6D5103CF026F2E2CCD4DFA9E2BBF75C788FCDBF7EE173DFA';
wwv_flow_imp.g_varchar2_table(73) := '7E73CDD6BE6A4B25E437DF7383DCB865D0B3219562418A3C2ED8D328DC0BA3D73A1280E8F559A45B5C1D05E81F114787B77D22199BB824DF78E1884CCCB9DF73EF53C59A175F9A5F92AF3CFD92EF07FEE806AA43FFE6DCBF048849CB2F9F1C27B9FCED35';
wwv_flow_imp.g_varchar2_table(74) := 'AF0BA5E89E0398CFB95FDF500DD423F9A92E5FFECD8C8614672F89D78882DE7EF71BDF77930C76789B2EAFB659AF37B6A7E4DF7FE0A0785DD4A9B115A727C404D9AC66B11DCB0548002CFF056845F8894CBB192E1F16C7F11FA4D5A3EF6F3CFB8A1C9BF0';
wwv_flow_imp.g_varchar2_table(75) := 'FEE4BD7AC5A10F243C71615ABEF2D42199990BF61905E9BE6149B607BBED6B653BFD3E2E3957F4BE4B60657D617A3F97F7B966C227F9591E4B717E4ACA3E9F20F891BB6F90BDFDDE779A2CAFB3D9AFAFEBCDC80FDCB6DB73B31A63896703781A85756114';
wwv_flow_imp.g_varchar2_table(76) := 'DB450210C55E8B419B533D0392EAD9182892F9A59C7CF3B957E49B2F1D6FE82981B9A5BC7CEBE563F2D8B32F4BC10CC706695C7AC3B0A4BAFA82145DBD4CD2FB56B939BFA3E8D56B0DC5DCD9259F042019F0485D8FFE672E7AC69436757DECF6AD9E65C2';
wwv_flow_imp.g_varchar2_table(77) := 'B0F0A7EEDC2EFAF9035E6DD1910EE15A002F2296D5498004A04E905453BB407AC390A4BA835F357F6CEC9CFCDD132FC80B27C6A564760AB56F71F535F2A5B2A9F39C7CEEF167E598CF7DFECB6B48756E90F486C1E5B36A7EADA744BC569A989EF75A1CDA';
wwv_flow_imp.g_varchar2_table(78) := '65153394727672CEBB7D3EC9CF95952BA5A2547C3E37E01FDFB94746BBBC93A92BF5B5F2E7B69EB4FCE0EDDEA300A5A579A944F8DA8F56FAB66EDBD1DC32094034FB2D1EAD36A70074F8BC9623E87C3E2FCF1D3E265F78F290BC70725CCE989DCC5A2E14';
wwv_flow_imp.g_varchar2_table(79) := 'D4A1F5B353F3F2F4D1D3F2A5279E37751E9792C72D792BC13571C90CFA3FE865E57A2BDF2732DE4FCB3B6D4E474C2F7A1F49AFAC330CEF67CCC8C5B173DE47ED8954265053CBB905D1F3E36E85077B3BE4A36F597F5FB8D55FEFF91F38302A83BD9D9ED5';
wwv_flow_imp.g_varchar2_table(80) := '6ACC9E055888401D044800EA8048156B17D023E074FF88A47B3706BA26E0CA96A667E7E4B9D78E554F0D3CF6C21179F2B553F2DAD8C5EA9304C7266765DC1C394FCC2E8A4EE76616646C6A4E4E9A9DA99679FAC869F9EA7387E51BE6B4C2CBC74ECBF4C2';
wwv_flow_imp.g_varchar2_table(81) := 'D2956A03FDD4B666FA37052AEB57C8313B4135702B77E6C2A49C31898ADBF2B0CE3F3B63ECA7DC9FEAA84F85747C929F6A6C6628BCB4E05E8F96B96DE788ECEE0BEFB97F6DE3F269FFC636B973B7F7EF4F69D18C9E98D897AFC7EBF00A44B565240051ED';
wwv_flow_imp.g_varchar2_table(82) := 'B918B55B77807A0F7D7A6054F4752DA1E58B45B930352DAF9D3C234FBE7458BEFADD43F2C8D387E42B4FBD608EEC9F932F3FF99CFCF7279F9747BEF3A27CDD9CDBD7322F1F3F2D139353BE0FF659AD1D3A62A16D35D9CA6A8B6B9EE72412E27701E1E173';
wwv_flow_imp.g_varchar2_table(83) := 'CDB900B2E6C67BACF0DAD94B1E4B45F4B6494D023C0B99851533FC5F5A323B43F3DAEDFFFB760DBB2D0AEDFCB7089E12570000100049444154ED1AF26C5BD9C45C0E781D8A67452C44C0438004C0038745CD15D05301D9919DE2043C371CA475F5BA5440';
wwv_flow_imp.g_varchar2_table(84) := 'DBD4B6E93A3352B1BE73FED7B4D931094047CF35B397CF78C99CEA9859F2B9A56EF90A2D7E7D693E2F477D1380F640AD2C17F2E67CB87BECFA6989378F780FA707DA50930BED1BEA94E10DEE778EE8CEBFE273DD83F0151281E836830420BA7D17CB96EB';
wwv_flow_imp.g_varchar2_table(85) := '39F1B6D1DDA29F1BE0989D631882D4F3FDBAF3D7A3D646B4471F8EE415EBFCE2923C7EE45C2336DD903A9F3C765E2E4EBB0FDB6BAC89000F83D2C69573DECF8038B06D50461BF8097FDA86464C239D2939B8C36714205FDBA9A946B4933AE32D400210EF';
wwv_flow_imp.g_varchar2_table(86) := 'FE8D64747AB49DE91F95AC39E2D6E171C7719A1E87E33892343BA9ECF00ED1F3FD7AAE5E1AF4E524926648DCFB88F8A9574F4A146E09BC608EFE9F7FFD8CA794263C412F00AC94BC2F80BC697443A89EFAE719F8B285FAA4C2039BFB96CDB9F6A55FECD7';
wwv_flow_imp.g_varchar2_table(87) := 'AEC19C560844799B8928379EB6C758C0EC807534203BB45DF4BC7B221DEC8AF17A88245269D1EB113243DB441310316DA947BD5E75E82883D772FD20A2AFBE7246CAE5703F19F09143C765C6E7A2CAEAE7410435F53987B36D8377E2E465DAEA65DBFB7C';
wwv_flow_imp.g_varchar2_table(88) := 'DA1EF2BE6EB51FDB5FBF0009C0FA0DA9A191026647A10F0CCA8E98F3EF3D03A2A3038DDA9CD69DEE1D94AC9E82E8EA133D326FD4B656D69BECE8114D3C56CE5FFE5E47018E5EF0BE206E79F966BF7EE5ECB43CFFFA59CFCD2632ED1274F85F2BAA94BD9F';
wwv_flow_imp.g_varchar2_table(89) := '84D8DB16FE7BFF358ED5A6FEF6F46AB3DF9857E12E80372CC2FB22DA2D23018876FF59D3FAEACEB97F93B46FD92B7A3E3EDDBB51EA312AA03B5DAD4BEBD4BA75B4A1993BFE373AD071CC48C788196C703FDDA1CF29F8EC93AFC8B999F09D1B3E3DB9289F';
wwv_flow_imp.g_varchar2_table(90) := 'FEF64B6F84E3F622DD37E4B668F5F93E09405B2ABA7FC236B425578FF9CA5C9FD8AF14E327026B1588EEBF9EB546CC7AD116303B4ABD184F6FC5CB6EDA257AC1A09EA3D76165BD70509FCEA747D33A74AFE7F0AB5347B7E83C5DA66574879FDE306C1289';
wwv_flow_imp.g_varchar2_table(91) := '5DD5A37DAD4BEB347BDF96DA244D3B13EDDD9E6D989A5B90CF3D7D44E6F3EE57C67B56D08085538B05F9C23347643197F7AC5DE34BFAC47755053EC3FFA96442CCFF57AD12A537C9444212E6F7D9B3CD3E069EEBB2B0E10251DF000940D47BD0E2F63B7A';
wwv_flow_imp.g_varchar2_table(92) := 'F15CA64DF47305D266742033B05932835B246BCEDDEBC57B6F4C43DBABF3749996D11D7E7AC3A024B2EDA2758486D04904BAFBE1C4F845F9CCD347451FB72B2DFECA15CBF29543A7E5E479EFFBFED539D53D50DFD6562F87701F31A9EFC61A509B69BF6F';
wwv_flow_imp.g_varchar2_table(93) := '02E04438BE069051657D054800EAEB496D6112D03F9E3A85A94D3E6DD123E464D7069F52222F9F3827FFE5C923522AFB166D58017D9CF27F7BE6983C77E4A4EF36AA71D5FA8989DA77E628D9ADF262B92CF5FC4C08B7ED346ABE5EE3A731B8D6EF11BBEB';
wwv_flow_imp.g_varchar2_table(94) := '3A2C68A240F437450210FD3E24829809A4FB8645AF4DF00BEBD0F131F9BD479E97C905EF5BE5FCEA59CBF28B7339F99DAF3C2BCF1D3DEDBB7AC28CD2A40736F9965BAD80E324579BFDC6BC5CD11C46BFF12E5A2F66F3DE17383A6644285A11D1DAA80990';
wwv_flow_imp.g_varchar2_table(95) := '0044ADC7686FEC0574B83C33B84DF4A75FB0631726E5938F3E2B87C69AF7B8E097C6A6E50F1F79562E4CFBDF91A03BB1CCC6CD81625935D684F79FA8C945EFEB0E56AD332433CFCFFBB4DD27F69084616D33E210B8F7BFAE3844480C08445040AF4F486F';
wwv_flow_imp.g_varchar2_table(96) := '1812C7F13F073C39BB209FF9F6CBF265732EFEE2425E2A0DB8704CEBD491862FBE704AFEF6DB8764D6E75E7F25771C47D203A392C8B4EBDB354D7E49D0C9C9F0DD111134D01397163C8B3A89E8DEE2E819180B43234002109AAEA021085C2DA0173706B9';
wwv_flow_imp.g_varchar2_table(97) := '1E40D75ACCE7E5EB2F1C954FFEC3B3F2C517CFC899A9052996D63F3C5E2C95E5FC6CCE241763F2A9AF3E27DF38F4BA2CE6839D724876F5492AC0F50CDA7EB7C94979DF2BFFD2D929598CE0698005D366BF511BBFD8DDCC98DF0C81786C8304201EFD4814';
wwv_flow_imp.g_varchar2_table(98) := '3115D04722EBED7341C39B9E5F946F1E3A2ABFF3C5A7E42FBEFDAA7CEBF509B968869ACB7AC559C04AF4687F7C6649BE75F4BCFCD9E3AFC86FFFFD93F2D88B47E4D2CC7CC01A4412E6BC7FA67F247079B782099FD183674E4EC899599FA174B7CA5B387F';
wwv_flow_imp.g_varchar2_table(99) := '7CAE20DF39E6FEF90E8E9390443ADBC216B2691B0448006CE8E530C6A8C3D4D5A92CA24F3C8BE4648EB0358646FA9A61F4ECE0367324DD57F3565E3D352E7FF7E44BF2FF7CEE5BF21F3EFF647567AEB7EC3D75FCA21C999815FDD4BEE9C542F5F553C72F';
wwv_flow_imp.g_varchar2_table(100) := 'C8175F38297FF28D97E5FFFABBEFC8FFF78527E4EF9E7A590E9F9910CF2BD55769953E6B413FD551CC4E6C95C535CDD2A360AF1DE1E90BD372F4A2F7507A4D1B6C52E1E3538B727EDA3DA1724C02E5A49AF7F8EB26851D9BCDC425101280B8F46488E3A8';
wwv_flow_imp.g_varchar2_table(101) := '14F3529CB920F98953B274F675593A7358164FBF2A8BA75E91C593519E5E168D6169EC88E4CE9F90C2E43929CE4D4A7969DEE434DE5778D7D45D8E2319732E5D1F60A4478635ADFBBDC2FA7CFE974F8ECBD7CC69822F3CF58AFCE5370F552F1EFCA3479F';
wwv_flow_imp.g_varchar2_table(102) := '33AF5F942F3CF5AA19DE3F26874F9F97A9B9B5ED50B56DDACE4CFF26F13B77FFBD66F9FED07AFC4640BE7664C2B79EB01578ECF58B9E4D4AEA332A7C4E7F7856C042040208240294A10802350B548A85EACE5077FAB973C7CCCE715C8AF3D352CE2D48B9';
wwv_flow_imp.g_varchar2_table(103) := '90934AA958DD4956CC917FA4A77249CAF925292DCC4A61FA82142E9E959C49747226D1D1B84B8BB39747386A165CB182E3883EC048AFA84FA4D777645830F60B4B39B3A35FAC0EEB2F2CE545E7ADD8624D6FF5B6C5CCD0564975F78BD4E1C85FAE7C398E';
wwv_flow_imp.g_varchar2_table(104) := '24DABAC4EBEBC9D7C7E5EC5C789E8CE8D5565D7672A620DF3E72565FBA4E7E4F84745D91054D1088CF264800E2D397A188A4627688C5D94B923BF7BAE42F9CB9BCD337C940A5D143E5A188DEECEB35A1313B584D724A662420377EC22404A7454705EAD1';
wwv_flow_imp.g_varchar2_table(105) := 'C46467AF6406B74AB2ADB31ED5D5A50E3D4F9F31A729F4613F75A97045257A4784E3382BE6BEF976ECD28CFCD5F3EEE7D3DF2C198E577FF3C239397EDEFDB64DC771446316BE1068B000094083816DAABE6886BF7366383C7F714CCA66A76F53EC5EB196';
wwv_flow_imp.g_varchar2_table(106) := '166664C98C822C8D1D95EA888057E100CB7487ABE7D8B3261148B4F042B144A64DB40D6DA3BB1ABAC3D2D300896C87A7CC9F7DEB1599CED5F1B48BE7D6D6BEF0E26249FEE4B1439E15E8A725EAE914CF422C6C99409C364C0210A7DE6C512C7AD4AFE7BF';
wwv_flow_imp.g_varchar2_table(107) := 'F5889F1DBF7B2794F38B923F7F4A72E3C7454F91B8970CB6444703DA36EF91ECF0F6A68E0824DBBB2EEFF837ED126D43B0D6AEAF54F5D4824715B38B39F9DD27FD9F4AE851455316FDFF8F1F177D84B2D7C6F4F64F31A3005E655886403D044800EAA168';
wwv_flow_imp.g_varchar2_table(108) := '711D3AD49D33C3DC7AFEDB6286C0A157CC2982D2E29CE4CE9F14B50BBCA247C1647BB76486B649DBC84ED14F3CACF7A880E338D55BD2B46E4D36AAA720CCA98866EEA434D148F8DC12F8A78FBD24CF8E2F4A58BF5EBEB8249F7EF235CFE625CCA88AF6A7';
wwv_flow_imp.g_varchar2_table(109) := '672116B650205E9B260188577F36359AE2DC94E4CCB0B65ED8D7D40DC760633A1AA0170AD663244039AAC3E46D9D9219DC524D06321BB75C4E065269D1658EE37E0E5DD75F3E398E23BA4E229D3175F44A7A6073759441EBD69D932E5B5EBE59AF2FDF05';
wwv_flow_imp.g_varchar2_table(110) := 'E1B86EAE542ECB6F7DE139393D1BEC4145AE153560C1D85C517EED33DF157DB0925BF58EE348BA77D06D31F311A8BB000940DD49EDA8502FF42B5C3A2B7A445B6BC4E6EF9CE8C7A0EA944C3812E529618231FFAFE960584F9D2C8D1D9172AEBE47AD8974';
wwv_flow_imp.g_varchar2_table(111) := '56F4097CBAC36EDB7CBD490AB64A6AC390E8307AD20CDF27CC9174C2ECDC9D445274D2D77A8E5D6FB7D37BF853BD43669D2DD236BAC7FC34EB766D9030DC939EECE811C7B45D3CBE5E3E7351FEF72FBE2433F9B247A9E62ED26B13FEF5175E94C367273D';
wwv_flow_imp.g_varchar2_table(112) := '37EC987ED3183D0BB1B0A50271DB380940DC7AB409F1E80EAB30392EBA030BBAB97432299B077AE4F6DD5BE4DD07F7C80FBCF546F9D0BD07AAD307EFBD45A2391D901FBAE780BCEFF61BE41D375D276FDDBD59AE1FD9201D99545096AA617EC29C0EC837';
wwv_flow_imp.g_varchar2_table(113) := 'E899F68E23BAD34F9B234BBD473F3BB45DDA365D57DDB9B76FBD41DAB7EEADBED6D307D9C16D923147FBE90D83669D6E595356230DFC32B164FA864DB3129E1BF9DAABA7E5FF78E4A8946A78FAA16785EB5858346DF8ADAF1C96C75F3BE3598BE338A29F';
wwv_flow_imp.g_varchar2_table(114) := '026982F32CC74204EA29E0FD2FA99E5BA2AE5808548A79D11D56D09D7F5F67BBBC65EF75F2FE7B0ECAFD07F7C90D3BB6C8E0C0807475F748BAAD5D52D9764967DB223AB54B5B7BBB6CE8DD20A3C34372FD8EAD72FB4D37C8FBEEBE45EEBA61BB6CEC6C0B';
wwv_flow_imp.g_varchar2_table(115) := 'F4F75C2F9C54D3A6FC82981D4DB5516FFC347F02DE78ED34A509EBD9888E54A47AFA7DABF8ECD3AFC9AFFCFDAB7269A97577064CE7CAF2CB9F7F45FEFEB9A3BEED4DF50C48D2E77907BE9550A0C102F1ABDEFCEB8F5F5044D420814A590A93E703DDE2D7';
wwv_flow_imp.g_varchar2_table(116) := '9649CBC13D3BE41DB7EF97FD5B87A4339B9664F8F72FB2DE2FFD07954DA765F7964D26F69BE5DE7DD7991181B46FB5E5425E4AF3D3BEE5AC2F60929554CF46D144C0CB421F3BF1F7CF1C957FFEB7CFCBEB9339AFA20D597662262F3FF757CFC8579E7F5D';
wwv_flow_imp.g_varchar2_table(117) := 'B42D5E1BD15834A66A62E655906508D45940FF5ED5B94AAA8BAB809EF72FCEBB3FC0E44ADCEDD9ACBCEDC05EB969FB8874A45357665BF7339B4ECA8E4D43F2AEDB6E909EF636DFF80B53E32226C9F22D687901279932A72A46CDFED2FFCFD7778E8EC927';
wwv_flow_imp.g_varchar2_table(118) := 'FEFA69796A6CBE696ACF8C2FC8CFFDC593F2DC71FF8713394EC2C4B24934A6A635900DAD49208E2BF9FF0B8A63D4C454B3800EF9EBD1BFDF8A9D5DDDF2CE3B6E92E10D5D7E45AD59DEDDD929EFBA7D9FF4767578C6ACA3009A64791662615520916993F4';
wwv_flow_imp.g_varchar2_table(119) := 'C068F5B5DFB763E393F2B14F7D557EE50BAF8A5E8DEF577EADCBB5EE5FFDC26BF2A37FF8A89C9808369AA331247C2E6C5C6B7B580F013F0112003F219657058A53E7C5EF8AFFB66C46EE3F70BDF4B6F90F79572BB5E85BBBB179BBB1E9E9F01E09D00440';
wwv_flow_imp.g_varchar2_table(120) := 'AFB3B08866CDA1EA9D0E7A7163900A7418FEF3DF3D22EFFE8F5F96DFF8CA11D17BF283AC17A4CC4B1796E4D7BF74581EFE4F5F91CF7DF7B0F97712642D9174EF46D1188295A6546B05E2B9F5443CC322AA7A0AE807F71467BD6F614AA5D272DBFEBD32D0';
wwv_flow_imp.g_varchar2_table(121) := 'C1CEDFCD5E77FE77DDB8D36D7175FEE551006FEB6A41BE550552BA13EDDC507D1DE45BD964029F7EE255F9993FFD96FCFC670EC97F7961429E39B758D3C582934B65F9EEB905F98B17CECB274C1D3FFBA78FCB679E7A4D4AE5E0B71EEA439552BD83419A';
wwv_flow_imp.g_varchar2_table(122) := '4C19041A264002D030DAF8545C9A9F324735DE7FDCF6EEDA213BFB3BE31374832219EAEB95AD231B3D6B2FCE5C147D5A60A558103DF512E5C904E019EB7A17EA730CD2039BAA47D3B5D4757176411E79F1B8FCBBCF3E29FFECCF1F975FF96F2FC8BFFFC6';
wwv_flow_imp.g_varchar2_table(123) := '09F9F4CB17E559730E5F8FEA5FBB9493572FE6E4D0C4927CEDC48CFCD5A10BF27F7FE3A4FCDAE75F949FFF8B6FCB6F7DF629F90753C7C5B9DA9EE3A0CF63D0366BDB6B6933655B2710D72D9300C4B567EB1897DEF7EF555D4F4F8FEC1BEDF32AC2B26502';
wwv_flow_imp.g_varchar2_table(124) := '775CBF431249F78B23F5544BFEFC09593A7B5472119F96C68E8A4EB9F1E392BF78460AD313D5BB1DAABF5375BAE05177A4E9BE1149CE10A86D00001000494441546F185EA61CFCE5F4C252F53EFD4F7DF545F98D4F7F5B3EFA078FCA077FF71FCCF4887C';
wwv_flow_imp.g_varchar2_table(125) := 'E8F7CDF47BFF201FFFCF8FC9BFF9DB27E40FBFFA823CF6CA29999AAF6DA77FA535DAC6CCC0A8689BAFCCE32702AD12200168957C44B6AB8FACD5C9ABB9FB778C4A36C9AF9297D1F2651D99A46C1BF41EB6AE98A16A3DF5A2A704A23DE5447F7F7444434F';
wwv_flow_imp.g_varchar2_table(126) := '23E903A47213A72467129CDCC4E96A322026D6E53E6B7D9DDE3028D9A16D52AF2BEA8B6648DFEBD1BDB5B453DBA46DD336D6B21E65C32010DF36F0573BBE7D5B97C8CAF925CF4FAE4BA7D3B275A3F7CEAC2E0D894925F3C58ABC3C3E2BA7A7D676041913';
wwv_flow_imp.g_varchar2_table(127) := '06D1E4A6B430239A0C2C8D1D117D5D8FD8F451BAD9E1EDA2E7D81DC7A94795EBAAC3711C4975F589B649DBB6AECA5819813A0B9000D419346ED5E950AD1E8DBAC5B56963BF64F82D72E379637EA92272E4E2BC3CFAFC5179FA8597A4B834FFC632DB5FE8';
wwv_flow_imp.g_varchar2_table(128) := 'A722EAA7235613017D18D23A4F0DE86D75998DA39219DA2EC9B64E719CE627028E93107D047376788764063689B6C9F67E8E6AFC716E377FBAE3DCBB7588AD52CCBBD692307F5887FA7A5C97B3E0B2C06CBE24DF7C6D4C9E7CE11599BA74E1F24CBE5F23';
wwv_flow_imp.g_varchar2_table(129) := 'A0A34DF90BA7257FF1AC6852704D815A662CDF016FDCD2D41DB0EEEC331B374BD6242009938088694B2D4DA72C02CD12200168967444B75331E741DD9A9E4CA6A4DFE7E1366EEBDA327F7CBE205F7AE6B09C3C7532D023946D71718B53479B8A7393A217';
wwv_flow_imp.g_varchar2_table(130) := '41568A05B762C1E73B8E243B7BA56D74976407B74AA346041CC76CA7A35BF4885FB7A5DB14334FF88AB840BC9B4F0210EFFE5D7F741EC3B1C9A4231DD9D4FAB711D31A4ECEE4E56BCFBD2A4BB3FE8F4F8E29C19AC3D20B1F73E75E97726E61CD75AC5C51';
wwv_flow_imp.g_varchar2_table(131) := '77CAD9919DD2B6656F3519D073F38E496257960BFA5ED7D53A34B168DB7A83E811BF0EFB075D9F7208B45A8004A0D53D10E6EDFB5C9D9D4826259D4A86398296B5EDE4744E9E7CF135C92FCCD5DC06C771446F13EBE96893D1FEEEEAC7286F1EE889DCCF';
wwv_flow_imp.g_varchar2_table(132) := '4DA6EDFDDD1DE640386126476AFDAA7E4AE2C5B1BA2601DA06C7ECF43519D073F3FAD1C8D9E1ED92E9DF24E9DE41D17BF4F50242DD91EB68C1952965461152DD7DD53299FE11D175745DAD43EBD2FED2BA99E22510F76812710F90F8D62350F15C399148';
wwv_flow_imp.g_varchar2_table(133) := '48CAA9FD0FBBC4FC6B62A1284FBF7458966AD8F9B7A753B26B53BFBCFDE65DF28377DF241FB9FF16F9E07D07E4FBEED82F1FBC67BFFCC403B7446AFAE1B7DD2CEFBB639FFCC05D37C9874C1CEFB96DAFBC6DDF0EB965FB90F4B6674C422081BEAAD7054C';
wwv_flow_imp.g_varchar2_table(134) := '9C5AFF3501AB6DCD9C9B77521949B6774BAA6740D27DC3A2F7E86706B7981DFC8E3727336A9019DC6A966D162D93EAD9585D47D71553C76A55330F812808900044A1975AD9468F5100479C56B62C94DB2E964AF2C4F32FCBFC7CB023FFF68E4E79F0D67D';
wwv_flow_imp.g_varchar2_table(135) := 'F293EFBE437EE2FE9BE45DFBB7C86DDBFA65FF48B75CD7DF2E3BFAB232D89991B6742252D386B694697B9BEC1E6897039B7BE5DEDDC3F2F0CDDBE44377DD201F7FCF1DF2F0AD7BA5B7AB33501F564702C68F8B3E1131D00AF52AE498DF6F9DEA551FF544';
wwv_flow_imp.g_varchar2_table(136) := '4C20FECD4DC43F44225CAB805E90B5D6756D5DEF9B875E97A939FF5BFCDAB31979AF392AFEE5F7BE451EBC7E5046BA332271DFD9687C66EACAA6E4BE3D23F24BEF798BFCE09DFBA4A7CDC42EDE5F9A0494E6F88C046F259622509B0009406D5E9446C055';
wwv_flow_imp.g_varchar2_table(137) := '60ECD28C9C3A7FD175F995059B077AE567DE79ABDC6B76826DE9E495D9D6FD4CA69272FBCE41F9D843B7CA96811EDFF8F53312F494806F410A205007011BAA2001B0A19789B1E1028B85923C7F6CCC773B3B368FC8C71E382083DD59DFB2B6141832161F';
wwv_flow_imp.g_varchar2_table(138) := 'BA679FEC1E1DF40C5947018AB3973CCBB0100104820B900004B7A22402AE022726A6E4C2A4F7ED7EA38303F2A377ED9176733EDFB5224B170C7466E5836FDD237B36F57B0AE82383EBF27C00CFADB010013B044800ECE867A26CA0C042B122474E9DF5DC';
wwv_flow_imp.g_varchar2_table(139) := '42B739CFFDC1B7EEAE5EC8E759D0E2855D6D69F9A13BF71A23F7674BE86708E8070A59CC44E808D44D8004A06E945464ABC0D8C569999DF77E60CDBB6FDD2343DD6DB612058EBB2B9B96B7DEB8C3B37C717E4A0A93E7A49C5B94D2E26CA427BDA6A17A77';
wwv_flow_imp.g_varchar2_table(140) := '83C7DD369E182C6C88802D959200D8D2D3C4D93081E363E352F27864F2B6A13ED937EA3DB4DDB0C645AC62C771E49E5D43D2D6D1E5D9F2C2F405C94F9C94C2A5B3923F7F5272E3272233E5CF9F32ED3E6726D3F68953923B775C72E3DF9B4C2C8549F3FB';
wwv_flow_imp.g_varchar2_table(141) := 'B438D7FCDB1E3DC559184701128038F62A31354D60A95496C9E919D7ED398E230F1FD829D914FFD45C91562CE848A76474B87FC5DC6BDFEA4581FAC8E0A8DDAE5AA994AB0F36D2B6EB871E95F38B525A9A37231973A2D73814A6272E27042631D0D7D511';
wwv_flow_imp.g_varchar2_table(142) := '826BC3674EC304ECA998BF4AF6F435913640606C66490A260970ABBAA7BB4BB6F7077BE08D5B1D36CDAF98A1F0C3E353B234C5D5FE9A18E868C0D2E9D724AF8F442EE46CFA5520D6260890003401994DC457606AA12015F39F5B843B86FB4412FC3373F3';
wwv_flow_imp.g_varchar2_table(143) := '593E7F6C6A49FEE4B197E54FBFFEA28C4D067B92E2F2F5E3FA5A4700F4F6C7DCB963A2CF4230E706E21A6A28E2B2A911FC65B2A9B789B5AE02FA4909D30B8B620E5A57AD37997064B4CFFF0137ABAE6CD1CCC9C5A27CE6D913F2A97F785A8E8C4D18CFB2';
wwv_flow_imp.g_varchar2_table(144) := '45D1070F55EF80C85F3A6B4E0F9C904A311F7C454A22E0224002E002C36C0482082C2D2EB9164B271332D2C3037FDC8074B8FFD0F89C7CEA9167E53BAF1C97C542D1AD28F39709E8F5024B675F97E29CF7732796ADC2CBC00276152401B0ABBF89B68E02';
wwv_flow_imp.g_varchar2_table(145) := '957259F279F723B1941901E86B4FD5718BF1AAEAE5F3F3F257DF7A452ECDCEC72BB02644A3A301858B67246FA6266C8E4DC454800420A61D4B588D17A8544C029073BF302B9B4A4A9B991ADF92E86DE1C4E4A2FCCD13AF4A7169ED3B7FC77124E124223C';
wwv_flow_imp.g_varchar2_table(146) := '39E238972759C357C59C7B2ACE4E8ADE29B086D559651501DB669100D8D6E3C45B37818A49004A1E5766A7CC298074D2A9DBF6E252D1E999BCFCD9375E92A585B9C02125D259B965D756F9C4C3B7C96FFFD8DBE5D31F7FA77CFD97DE2D5FFBA587CDF4AE';
wwv_flow_imp.g_varchar2_table(147) := '484E8FFE8B77CB977FE1DDF2D73FF790FC9E89E99FBFE73639B06BAB24D2FE9F8EB81C4EEF14E074C072115E07152001082A453904560898033091EAB7150BBEF7D691CBFF7DEF2D3F8CC0E44241FEECF15764613ED8CE7FC7C846F989070ECA677EF67E';
wwv_flow_imp.g_varchar2_table(148) := 'F9DD1FDA2F3F7BFB883CB0AD4B6E1CC8CA407BCA4C0933E9CFE84D831D29D9DC9DAAC6F23613D34FDD3622BF6762FC9B9FBE5F7EF21D0765FB509F110BF67F716A5CCAEB184D09B695B897B22F3E1200FBFA9C88116889C052B12C7FFDF431999D9AF4DD';
wwv_flow_imp.g_varchar2_table(149) := '7E5B3A697682B7C86F7FE856F957F76D96DD1B32D29B4D9AE17EDF55235B20E14835C6EBFBB3F2CBF76E96DFF9C81DF2B30F1D94B6B4FF7524FA50A4FCA573A2B70C46168086375D20D1F42DB2410410B052E0D9335372726CDC37F6D1FE6EF9E4C7EE37';
wwv_flow_imp.g_varchar2_table(150) := '3BC12DB2A337ED5B3EAE0576F4A4E517EFDE2C7FF0E3F7CB706F876F98571E1CE45B9002AB0AD8389304C0C65E2766049A2C30B95492C75F3E257ADD84D7A66FDF39247FF913F7CAC161FF1D9E573D715A76DB48BBFCD7FFE93EB975FBA06F58C5D94B52';
wwv_flow_imp.g_varchar2_table(151) := 'CE797F30956F2514B0468004C09AAE2650045A27F0AD93D372696ACAB301FB467AE5DFBEEF80F4B7273DCBD9B870A8332DBFF5FDB7C80D231B7CC32FCEFA9F62F1ADC4BA0276064C026067BF1335024D13B8B45094574E9CF5DC5E4F7B5AFEC5BB6F919D';
wwv_flow_imp.g_varchar2_table(152) := '1BB29EE56C5EA836FFEAE15BA42BEB7D4D4079694ECA79F70754D96C48EC570B90005CEDC13B0410A8B3C0A1F119B974F18267ADBFF0CE0372EFB66ECF322C14B97B6B97FCC2BB0E7852E8058165EE08F0345AB9D0D6F72400B6F63C7123D02481178E9F';
wwv_flow_imp.g_varchar2_table(153) := 'F7DCD2B68D3DF29103239E6558F8A6805A6DEDEB7C73C62AAF4A66146095D9CC42E02A011280AB3878830002F514B8B45894C9D959CF2AFF97F71C88F5ED7D9EC1AF61612AE1C8AFBCE71663E6B8AE5D5E5A106E0974E559B1C0DEB72400F6F63D9123D0';
wwv_flow_imp.g_varchar2_table(154) := '708113930B52F0F8BC84EDFDDD72DFB6DE86B7236E1B7870579FEC1CEC710FAB52960AD701B8FBB0A42A40025065E01B0208D45BA052A9C8699300944AEE1FEF7BF7EE1149F257A8667AC7AC71EB0EEFDB02B910D02005F8DFE622FCD3B3B9F7891D8106';
wwv_flow_imp.g_varchar2_table(155) := '0A98FDBF5C9C99978A391A5D6D33EDE9A4DC381AFC71B7ABD561F3BC5D43EEB704560C7EA598F77C54B5CD76C47E598004E0B203DF1140A0CE02A58AC8E292FBA725EAED6C9B7BDBEBBC557BAADBDCDB26039D19D780CB9A0088E904D7122C10B1DB8004';
wwv_flow_imp.g_varchar2_table(156) := 'C0EEFE277A041A2AB0B0E47E3F7A6747BBECE0BEFF35FB77A493D2954DBBAE5F2916CCE80B09802B100B8404805F020410688840A95C91258F1180742A2D3DD94443B66D43A59B7BB2924DB93F35B1522A8A94DDAFBFB0C1C82F46DB97F3AFCFF6DF00E2';
wwv_flow_imp.g_varchar2_table(157) := '47A041026533FCEC7501602AE988DED2D6A0CDC7BEDAC18E94645249F738CDCEBFE272FD85FB4A2CB1498004C0A6DE2656049A2960469FCB15F3CD659BE984FEF9715C9632DB4F2061E8329EB750187B0F7FBFFAE3BF9C08F55F200A0820800002082060';
wwv_flow_imp.g_varchar2_table(158) := '99000980651D4EB808208000022218081701F24B800002082080808D028C00D8D8EBC48C000208582D40F02A4002A00A4C08208000020858264002605987132E02082060BB00F15F162001B8ECC077041040000104AC122001B0AABB0916010410B05D80';
wwv_flow_imp.g_varchar2_table(159) := 'F8AF0890005C91E0270208208000021609900058D4D9848A000208D82E40FC6F0A9000BC69C12B041040000104AC112001B0A6ABEB1F281F34527F536A440081460A50F772011280E51ABCAE49A0582C4AB154AE691D0A238000020884438004201CFD10';
wwv_flow_imp.g_varchar2_table(160) := 'CA56388EE3D9AE5C3E2FE72E4DC9CCDCBCCC2D2E9969B1866949F2C59267FD2C44000104EA29405D570B90005CEDC1BBE5028EF9F5D069F9BC65AF2B15916FBC7858BEF89D43F2A5275F902F3DF562A0E98B4FBE289FFFD6F3F2E4ABC7255732952CAB93';
wwv_flow_imp.g_varchar2_table(161) := '970820800002CD11307FE19BB321B6124D012799F46CB82601F96259160B2559CC079B964CD962B92CE7262ECAA259D773032C44000104EA2240252B054800568AF0FE2A8144A6FDAAF7F57CA3FB7E0600EA294A5D0820804070011280E05656964C7674';
wwv_flow_imp.g_varchar2_table(162) := '8B934C352876EF6B0C1AB451AA4500010B0508F95A0112806B4D98B34C2091ED905467EFB239BC440001041088830009401C7AB1C131A4FB4624D9D6D9E0AD503D020820D02801EA5D4D8004603515E65D2DE038921DDE2EA9EE3E713CEE0AB87A25DE21';
wwv_flow_imp.g_varchar2_table(163) := '8000020884592011E6C6D1B61009981D7F6660B36486B649B2BD4B12E9ACE8B5018EE38863965D3D39216A384D410001DB05887F75011280D55D98EB22A03BFFECF00E69DBBC47DAB7EC95F66D379AE98615D33EE9D8BE5F3203A3E298E4C0A52A662380';
wwv_flow_imp.g_varchar2_table(164) := '000208B4508004A085F891DFB439FA17DDC15F33991100C79164478F38E98CF085000208B44E802DBB099000B8C9307FDD024E22214EC2FB4142EBDE08152080000208AC4920B1A6B558090104104000810808D04477011200771B96208000020820105B';
wwv_flow_imp.g_varchar2_table(165) := '011280D8762D818541C071C2D00ADA8080AD02C4ED254002E0A5C33204D621B0542A49AEB48E0A581501041068A00009400371A9DA6E81B9C582BC38364C2BE9D8000010004944415429E7E6F2726666494E4E069B4E4D2DCAD9999C2C15CA7603123D02';
wwv_flow_imp.g_varchar2_table(166) := 'EB1460756F0112006F1F9622B0668162B92C9F7FE225F99D2F3D2D7FF0DF9F954F3E1A6CFAA3475F903FF8EA21F9DC8B6392D38F4C5C730B58110104107017200170B7610902EB1628572A522AE4A598CF059F728B925F9895574F9E95A985FCBADB4005';
wwv_flow_imp.g_varchar2_table(167) := '08D82940D47E0224007E422C47A04502E55251348168D1E6D92C0208C45C800420E61D4C78111630A7102A660421C211D074045A26C086FD054800FC8D2881000208208040EC04480062D7A50484000208D82E40FC410448008228510601041040008198';
wwv_flow_imp.g_varchar2_table(168) := '099000C4AC4309275C028EE388934CAD3E394EB81A4B6B10888900610413200108E6442904D6249019DC2AED5BAE97B64DD75D35E93C5DB6A64A5909010410A8830009401D10A90281D5041C272189B64E11F3D3496564F9A4F374999611BE1040A08E02';
wwv_flow_imp.g_varchar2_table(169) := '541554800420A814E510588340A558705DEBF2B28AEB7216208000028D14200168A42E7523800002083455808D05172001086E454904104000010462234002109BAE241004A225C0671DAEAFBF8AA5B254CC7FEBAB256E6B134F2D022400B56851160104';
wwv_flow_imp.g_varchar2_table(170) := 'EA26B0942F48A14C1AB056D089C5229F16B9563CD6AB0A90005419F8860002CD16189F9A95AF1E9B96B97C59E60B6559A87132AB35BBC975DF5E35EE62A5A6D8759D89C5927C776C56CE4E2F78B4C9112761D79F780F0C16AD22C06FC72A28CC420081C6';
wwv_flow_imp.g_varchar2_table(171) := '0BCC2EE6E5DF7CE629F9D027BF291FF9D4E3F2C37FFCAD40D30FFDE137E4FB7FFF31F9DF1E79DD8C2044F72E8AB269FAFFFAE5A3F26113FB073F193CFE8FFCF1E3F2D14F7D53FEDD67BF23930B79F78ED29DBFC39F78772096F0DBC1EF000208B44C60A9';
wwv_flow_imp.g_varchar2_table(172) := '5094131766E4E8F969393C3E15683A79D11CF94ECEC9D75F3D2B97CC9170CB1ABFCE0DCFE44AF2C4B17179DDC47D7C2278FC47C7A7E5CCA559C9174B9E2D48A4B3968D007872B07015011280555098850002E11758C8E764DE0C9F87BFA5ABB750DB9E37';
wwv_flow_imp.g_varchar2_table(173) := '09D0EA4BD73F37D9D92B260310BE10701320017093613E0208845B2006C3DB4E22D91063FDFC896A02D090DAC35929ADAA5D8004A07633D640000104422D90EE1B3607FF8D492E421D388DAB498004A0262E0A23800002E11648F70E4AAA7343B81B59F7';
wwv_flow_imp.g_varchar2_table(174) := 'D651E15A044800D6A2C63A08208040C804F483A532FD23A247FFE238216B1DCD09A3000940187B853621608980E3389248A52591CE5C35E9396C2706E7F8659D5F6AB0D22691CE4AB2BD4B921D3DD523FD74CF8064FA3749767497A47A36AE738BD15C9D';
wwv_flow_imp.g_varchar2_table(175) := '56AF4D8004606D6EAC850002EB14D00BE0D27D2392DDB44BB2C33B2533B4BD3A6547AE93ECC84E490F8C8AE3D87D249B19DA76954DA66AB44DD266879F3147FB998DA3D5D72993046862B0CE2E6175CB0448002CEB70C245202C024E2A533D8AAD1EED57';
wwv_flow_imp.g_varchar2_table(176) := '4701B26614202BFA5E7766C98EEEEAEBB0B4B7D9ED701CA77AA4EF2CB351972B93FA09A32422227CAD518004608D70AC860002EB1470CCD17DC2E74F90D53B38E353A9AC1399D5117017F0F9D7E7BE224B10400081F508388E63FD10BFBF1F09809F11CB';
wwv_flow_imp.g_varchar2_table(177) := 'D72E4002B0763BD644000104104020B202240091ED3A1A8E000208D82E40FCEB112001588F1EEB228000020820105101128088761CCD460001046C1720FEF5099000ACCF8FB511400001041088A400094024BB8D4623800002B60B10FF7A054800D62BC8';
wwv_flow_imp.g_varchar2_table(178) := 'FA0820800002084450800420829D469311400001DB05887FFD022400EB37A4060410400001042227400210B92EA3C108208080ED02C45F0F0112807A28520702082080000211132001885887D15C041040C07601E2AF8F0009407D1CA905010410400081';
wwv_flow_imp.g_varchar2_table(179) := '4809900044AABB682C02082060BB00F1D74B8004A05E92D4830002082080408404480022D4593415010410B05D80F8EB274002503F4B6A420001041040203202240091E92A1A8A000208D82E40FCF5142001A8A726752180000208201011011280887414';
wwv_flow_imp.g_varchar2_table(180) := 'CD440001046C1720FEFA0A9000D4D793DA104000010410888400094024BA894622800002B60B107FBD054800EA2D4A7D0820800002084440800420029D441311400001DB0588BFFE022400F537A546041040000104422F400210FA2EA28108208080ED02';
wwv_flow_imp.g_varchar2_table(181) := 'C4DF0801128046A852673001A72249C709563684A5928984542A216C184D42000104020890000440A2C85A05BC77EE15B3F74C960B66275A914AB914A949C4B4B990939269B7978E639204AFE52C4300017F014A34468004A031AED4AA023E47F7A57245';
wwv_flow_imp.g_varchar2_table(182) := '3EF7F873F2D78F3D237FF3F8F3919AFEEAEBCFC85F3E7E48A3749F74E7EFF04FCC1D88250820D04A01FE3AB552DF866D27929E51962B65C9E5F3B2B8948BD4A46D2E95CB9EB125326DC2088027110B110820409146099000344A967AAB02C9F6AEEA4F1B';
wwv_flow_imp.g_varchar2_table(183) := 'BF253B7BC56400C217020820104601128030F64A8CDA94ECE81127998A5144C142D19835F660A5298500026E02CC6F9C000940E36CA9D908E88E30DD37625ED9F57FBA6F581C9FD31F7689102D0208844D8004206C3D12C3F6A4BA36484A87C36318DB6A';
wwv_flow_imp.g_varchar2_table(184) := '21A57B074DBC1B565BC43C0410A84980C28D14200168A42E75BF2190D9B845D21B86C489F155F11A5BA67F44F4E85F1CEF5B20DF80E105020820D02201128016C15BB759B343D40420BBE93AD19D64AABBBF7A949CECE89644A65D12E94C84A6ACE8C58D';
wwv_flow_imp.g_varchar2_table(185) := '7A8E3FD5B941D23D0326A64D921DDD25A99E8DD6752D0123D02801EA6DAC000940637DA97D854022D356DD49660646256D8E9633FD9B2433B8453243DB23346D336D37EDD6F66FD438369998064C02935D112D6F11400081F00A900084B76F62DF32BD40';
wwv_flow_imp.g_varchar2_table(186) := 'D04965AA3BCE443A1BB99FDA7689F1298DD8FF021260C805685EA30548001A2D4CFD0820800002088450800420849D429310400001DB0588BFF10224008D37660B082080000208844E800420745D428310400001DB0588BF19022400CD50661B08AC26E0';
wwv_flow_imp.g_varchar2_table(187) := 'F83F2BA033E3FD614AAB551B96796DA984243C42AC542A61692AED40C04A0112002BBB9DA0C320E038BA77D469F5D6144B253939B928A5B2D951EACE324293EEDCCFCC154CDBBD3F3171F5C8996BBB00F137478004A039CE6C05816B05F416C284FB3FC1';
wwv_flow_imp.g_varchar2_table(188) := 'B2D9E17FE5BBAFC87F7EF419F9D3AF3D17A9E94F1E79463EFDF5674C026092976B23AFCE711C93FCA841F51DDF1040A0D902EE7F7D9ADD12B6878065028ED9F9EBF30FBCC2BE349F932313B3F2CAB9E9484DDAE60B734B5EA1893E07C2B3000B2D1520EC';
wwv_flow_imp.g_varchar2_table(189) := '66099000344B9AED20B052C01CFD26DABB56CEB5E6BD9369B326560245208C02240061EC15DA648D40AAABCFCA23613DFAD7D8ADE968020D2C40C1E609900034CF9A2D21708D407547D83370CDFC38CF701C47F4332034F638C7496C08845D2011F606D2';
wwv_flow_imp.g_varchar2_table(190) := '3E04E22E90EE1D9454775FDCC3ACC6E7388E89B55F929DBDD5F77C43E06A01DE35538004A099DA6C0B011781CCC066C96CDC22713E2A7612C96A8CE9FE4DC2170208B45E8004A0F57D400B10A80AA4BA3648DBE86EB393DC2CC98E6ED18F4ED6BB0412A9';
wwv_flow_imp.g_varchar2_table(191) := '74757994BE397A81A37EC263A6BD1A4B7AC35035368EFCA3D48BCD6F2B5B6CAE00094073BDD91A029E023A0290EAEA93ECD076336D93CCC0A8A4CD941D36EF23346586B656DB9E19DC62E2D82E9A0038114C643C3B8B8508445C800420E21D48F3E32BE0';
wwv_flow_imp.g_varchar2_table(192) := 'A4329268EB94647B7724276DBB8E60C4B78788ACBE02D4D66C011280668BB33D0410400001044220400210824EA00908208080ED02C4DF7C011280E69BB3450410400001045A2E4002D0F22EA0010820B026814A45B25E9F37BCA64A9BB75226E9887E6A';
wwv_flow_imp.g_varchar2_table(193) := '62F3B618E62DD1B656089000B4429D6D228080AF80E3389E65CAA59259EEFE69836661A8FF2F954CDBAB3184BA99342EC602240031EE5C424320CE02A562511E3F352327670A726EBE18A9E99469F3E3A7A6A4582C7874914910C43B09F25839528B686C';
wwv_flow_imp.g_varchar2_table(194) := '6B0448005AE3CE561140C04FC0317F9E3C460172C592FCE6DF7E5B3EF4875F978FFEF1E3D1993EF54DF9F01F3D26BFF1374F48BEE09E00E83321C4237E3F3E9623E02760FE85F9156139020820D01A81EA4ED063D31573903CBBB024E72667A3334DCDC9';
wwv_flow_imp.g_varchar2_table(195) := 'F4FCA268DB3D42137D0E84D7F2F82C239256099000B44A9EED228080AF803E0ED9B7504C0B24B2ED318D8CB0C222400210969EA01D0820708D807E7680DF28C0352BC56046229D9164971D9F101983EE8A6C08240091ED3A1A8E40FC0512997649F70DC7';
wwv_flow_imp.g_varchar2_table(196) := '3FD01511A6BA072491CEAE98CB5B04EA2B4002505F4F6A4300813A0BE88723A57B07EB5C6B78ABD358533D03E16D605D5B4665AD14200168A53EDB46008140023A0A901DDA26894C5BA0F2512CA447FCD54F7FB470C4238AFD1587369300C4A117890101';
wwv_flow_imp.g_varchar2_table(197) := '0B04921D3DD58F16CEF48F48B2BDAB3A449E48A5CDCF4CB4A76C47F534877EE473AABBDF829E7C33445EB5568004A0B5FE6C1D01046A1070CC0E3FD5B351B2C33BA46D74B76475DAB44BB2119DDA46F748DBA6EB4487FDB9EDAF865F048AD6458004A02E';
wwv_flow_imp.g_varchar2_table(198) := '8C548200024D17701C7112C9484F763FE8A7E9BF316C70850009C00A10DE22800002082060830009800DBD4C8C08208040C804684EEB0548005ADF07B400010410400081A60B9000349D9C0D22800002B60B107F18044800C2D00BB40101041040008126';
wwv_flow_imp.g_varchar2_table(199) := '0B900034199CCD21800002B60B107F38044800C2D10FB402010410400081A60A900034959B8D21800002B60B107F58044800C2D213B403010410400081260A900034119B4D21800002B60B107F78044800C2D317B404010410400081A6099000348D9A0D';
wwv_flow_imp.g_varchar2_table(200) := '21800002B60B107F98044800C2D41BB4050104104000812609900034099ACD20800002B60B107FB8044800C2D51FB406010410400081A60890003485998D20800002B60B107FD8044800C2D623B407010410400081260890003401994D20800002B60B10';
wwv_flow_imp.g_varchar2_table(201) := '7FF8044800C2D727B408010410400081860B9000349C980D20800002B60B107F18054800C2D82BB409010410400081060B9000341898EA11400001DB05883F9C022400E1EC175A85000208208040430548001ACA4BE508208080ED02C41F56011280B0F6';
wwv_flow_imp.g_varchar2_table(202) := '0CED420001041040A0810224000DC4A56A041040C07601E20FAF00094078FB8696218000020820D03001128086D1523102082060BB00F18759800420CCBD43DB10400001041068900009408360A916010410B05D80F8C32D400210EEFEA1750820800002';
wwv_flow_imp.g_varchar2_table(203) := '0834448004A021AC548A000208D82E40FC61172001087B0FD13E0410400001041A204002D00054AA440001046C1720FEF00B900084BF8F682102082080000275172001A83B291522800002B60B107F14044800A2D04BB4110104104000813A0B9000D419';
wwv_flow_imp.g_varchar2_table(204) := '94EA10400001DB05883F1A022400D1E8275A890002082080405D054800EACA496508208080ED02C41F15011280A8F414ED440001041040A08E02240075C4A42A041040C07601E28F8E00094074FA8A962280000208205037011280BA51521102082060BB';
wwv_flow_imp.g_varchar2_table(205) := '00F147498004204ABD455B114000010410A8930009409D20A906010410B05D80F8A325400210ADFEA2B5082080000208D4458004A02E8C5482000208D82E40FC51132001885A8FD15E041040000104EA204002500744AA400001046C1720FEE809900044';
wwv_flow_imp.g_varchar2_table(206) := 'AFCF6831020820800002EB1620015837211520800002B60B107F14054800A2D86BB419010410400081750A9000AC1390D511400001DB05883F9A022400D1EC375A8D0002084CF4F3D400000430494441542080C0BA044800D6C5C7CA08208080ED02C41F';
wwv_flow_imp.g_varchar2_table(207) := '55011280A8F61CED460001041040601D022400EBC06355041040C07601E28FAE00094074FB8E96238000020820B06601128035D3B12202082060BB00F14759800420CABD47DB11400001041058A30009C01AE1580D010410B05D80F8A32D400210EDFEA3';
wwv_flow_imp.g_varchar2_table(208) := 'F5082080000208AC498004604D6CAC84000208D82E40FC51172001887A0FD27E041040000104D6204002B0063456410001046C1720FEE80B900044BF0F89000104104000819A0548006A266305041040C07601E28F830009401C7A9118104000010410A8';
wwv_flow_imp.g_varchar2_table(209) := '518004A046308A23800002B60B107F3C044800E2D18F44810002082080404D02240035715118010410B05D80F8E322400210979E240E0410400001046A102001A8018BA208208080ED02C41F1F011280F8F4259120800002082010588004203015051140';
wwv_flow_imp.g_varchar2_table(210) := '0001DB05883F4E02240071EA4D6241000104104020A000094040288A21800002B60B107FBC044800E2D59F448300020820804020011280404C14420001046C1720FEB8099000C4AD4789070104104000810002240001902882000208D82E40FCF1132001';
wwv_flow_imp.g_varchar2_table(211) := '885F9F1211020820800002BE022400BE4414400001046C1720FE380A9000C4B15789090104104000011F0112001F201623800002B60B107F3C054800E2D9AF4485000208208080A7000980270F0B11400001DB05883FAE02240071ED59E2420001041040';
wwv_flow_imp.g_varchar2_table(212) := 'C0438004C003874508208080ED02C41F5F011280F8F62D91218000020820E02A4002E04AC302041040C07601E28FB30009409C7B97D8104000010410701120017081613602082060BB00F1C75B800420DEFD4B74082080000208AC2A4002B02A0B331140';
wwv_flow_imp.g_varchar2_table(213) := '0001DB05883FEE02240071EF61E2430001041040601501128055509885000208D82E40FCF1172001887F1F1321020820800002D70890005C43C20C041040C07601E2B7418004C0865E264604104000010456089000AC00E12D02082060BB00F1DB214002';
wwv_flow_imp.g_varchar2_table(214) := '60473F1325020820800002570990005CC5C11B041040C07601E2B7458004C0969E264E041040000104960990002CC3E02502082060BB00F1DB234002604F5F13290208208000026F089000BC41C10B041040C07601E2B7498004C0A6DE26560410400001';
wwv_flow_imp.g_varchar2_table(215) := '04BE274002F03D087E20800002B60B10BF5D02240076F537D122800002082050152001A832F00D010410B05D80F86D132001B0ADC789170104104000012340026010F81F010410B05D80F8ED132001B0AFCF89180104104000012101E09700010410B05E';
wwv_flow_imp.g_varchar2_table(216) := '00001B0548006CEC75624600010410B05E8004C0FA5F01001040C07601E2B7538004C0CE7E276A0410400001CB0548002CFF05207C0410B05D80F86D152001B0B5E7891B01041040C06A011200ABBB9FE01140C07601E2B7578004C0DEBE277204104000';
wwv_flow_imp.g_varchar2_table(217) := '018B0548002CEE7C42470001DB0588DF660112009B7B9FD81140000104AC152001B0B6EB091C01046C17207EBB05FE07000000FFFF55FE755600000006494441540300CD0C12FF6EA93B8F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10867723578562247)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10859005871562161)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>46799228878309
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10859391261562163)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>46799228878599
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10859680004562164)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>46799228878670
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10859975898562164)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>46799228878728
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10860269935562165)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>46799228878788
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10860500670562165)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>46799228878891
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10860841324562166)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>46799228878983
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10861120782562166)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>46799228879029
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10861496821562167)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>46799228879100
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10861711566562167)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>46799228879181
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10862049365562168)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>46799228879258
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10862376798562168)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>46799228879370
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10862641420562169)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>46799228879486
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10862938856562169)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>46799228879616
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(10870666062562254)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>46799228890494
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(10870717449562254)
,p_name=>'Reader Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(apex_app_setting.get_value(',
'   p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
'    -- allow user not in the ACL to access the application',
'    return true;',
'else',
'    -- require user to have at least one role',
'    return apex_acl.has_user_any_roles (',
'        p_application_id => :APP_ID, ',
'        p_user_name      => :APP_USER);',
'end if;'))
,p_error_message=>'You are not authorized to view this application, either because you have not been granted access, or your account has been locked. Please contact the application administrator.'
,p_version_scn=>46799228890583
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(10870863228562254)
,p_name=>'Contribution Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator,Contributor'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_version_scn=>46799228890631
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(10870299138562252)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>46799228890128
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(10870408722562253)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
,p_version_scn=>46799228890335
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(10870523772562254)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>46799228890382
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(10871689320562259)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(10868127274562247)
,p_version_scn=>46799228890948
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(10871999302562259)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(10867929119562247)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>46799228891085
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11263589926569309)
,p_lov_name=>'ACCESS_ROLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>46799251989634
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11163144772569068)
,p_lov_name=>'DESKTOP THEME STYLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>46799251960387
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11271014333569325)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_imp.id(11271014333569325)||'.'
,p_location=>'STATIC'
,p_version_scn=>46799251991497
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11271375003569325)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11288341850569362)
,p_lov_name=>'FEEDBACK_RATING'
,p_lov_query=>'.'||wwv_flow_imp.id(11288341850569362)||'.'
,p_location=>'STATIC'
,p_version_scn=>46799251995993
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11288622620569363)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Positive'
,p_lov_return_value=>'3'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11289099566569363)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutral'
,p_lov_return_value=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11289427579569364)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Negative'
,p_lov_return_value=>'1'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-frown-o fa-2x feedback-negative" aria-hidden="true" ></span></span>'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11300693657569382)
,p_lov_name=>'FEEDBACK_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(11300693657569382)||'.'
,p_location=>'STATIC'
,p_version_scn=>46799251998195
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11300906036569382)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11301366749569383)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Acknowledged'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11301787471569383)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11302127911569384)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/oehr_customers_cust_first_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10928182456562664)
,p_lov_name=>'OEHR_CUSTOMERS.CUST_FIRST_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'OEHR_CUSTOMERS'
,p_return_column_name=>'CUSTOMER_ID'
,p_display_column_name=>'CUST_FIRST_NAME'
,p_default_sort_column_name=>'CUST_FIRST_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>46799228936225
);
end;
/
prompt --application/shared_components/user_interface/lovs/oehr_departments_department_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10963797952562830)
,p_lov_name=>'OEHR_DEPARTMENTS.DEPARTMENT_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'OEHR_DEPARTMENTS'
,p_return_column_name=>'DEPARTMENT_ID'
,p_display_column_name=>'DEPARTMENT_NAME'
,p_default_sort_column_name=>'DEPARTMENT_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>46799228954620
);
end;
/
prompt --application/shared_components/user_interface/lovs/oehr_employees_first_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10900000710562361)
,p_lov_name=>'OEHR_EMPLOYEES.FIRST_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'OEHR_EMPLOYEES'
,p_return_column_name=>'EMPLOYEE_ID'
,p_display_column_name=>'FIRST_NAME'
,p_default_sort_column_name=>'FIRST_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>46799228902491
);
end;
/
prompt --application/shared_components/user_interface/lovs/oehr_jobs_job_title
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10962696809562828)
,p_lov_name=>'OEHR_JOBS.JOB_TITLE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'OEHR_JOBS'
,p_return_column_name=>'JOB_ID'
,p_display_column_name=>'JOB_TITLE'
,p_default_sort_column_name=>'JOB_TITLE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>46799228954409
);
end;
/
prompt --application/shared_components/user_interface/lovs/oehr_locations_street_address
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11009623371565953)
,p_lov_name=>'OEHR_LOCATIONS.STREET_ADDRESS'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'OEHR_LOCATIONS'
,p_return_column_name=>'LOCATION_ID'
,p_display_column_name=>'STREET_ADDRESS'
,p_default_sort_column_name=>'STREET_ADDRESS'
,p_default_sort_direction=>'ASC'
,p_version_scn=>46799229351606
);
end;
/
prompt --application/shared_components/user_interface/lovs/oehr_regions_region_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10997849793565012)
,p_lov_name=>'OEHR_REGIONS.REGION_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'OEHR_REGIONS'
,p_return_column_name=>'REGION_ID'
,p_display_column_name=>'REGION_NAME'
,p_default_sort_column_name=>'REGION_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>46799229236237
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11182773681569119)
,p_lov_name=>'TIMEFRAME (4 WEEKS)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'SECONDS'
,p_display_column_name=>'DISP'
,p_version_scn=>46799251966072
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11163855964569076)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_imp.id(11163855964569076)||'.'
,p_location=>'STATIC'
,p_version_scn=>46799251960898
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11164128306569076)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11230361330569234)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_lov_query=>'.'||wwv_flow_imp.id(11230361330569234)||'.'
,p_location=>'STATIC'
,p_version_scn=>46799251979733
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11230684573569235)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Add Report Page'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11231092934569236)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Add Chart Page'
,p_lov_return_value=>'CHART'
,p_lov_template=>'<span class="fa fa-pie-chart" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(10872214150562261)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(11347826499569483)
,p_group_name=>'User Settings'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(10863843904562173)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10864087829562174)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10898023640562346)
,p_short_name=>'Dashboard'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10910835235562390)
,p_short_name=>'Customers'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10932951906562679)
,p_short_name=>'Order Search'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10960671363562824)
,p_short_name=>'Orders Calendar'
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10972516382562854)
,p_short_name=>'Employees'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11326728387569437)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11360220113779761)
,p_short_name=>'Jobs'
,p_link=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>22
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(10864748626562181)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>2721322117358710262
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(10863220888562170)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>46799228879749
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(10867929119562247)
,p_build_option_name=>'Feature: Access Control'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>46799228889802
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(10868086814562247)
,p_build_option_name=>'Feature: Activity Reporting'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>46799228889852
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(10868127274562247)
,p_build_option_name=>'Feature: Feedback'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>46799228889899
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(10868350162562247)
,p_build_option_name=>'Feature: Configuration Options'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>46799228889748
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>'Allow application administrators to enable or disable specific functionality, associated with an Oracle APEX build option, from within the application.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(10868681731562247)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>46799228889953
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(10868750338562247)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>46799228889996
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(11348076163569485)
,p_build_option_name=>'Feature: Push Notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>46799252010426
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(11348324676569485)
,p_build_option_name=>'Feature: User Settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>46799252010480
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>'The user settings page is a drawer that links to all user settings pages.'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(10863550422562171)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>46799228879915
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Demonstration - HR'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10887816401562321)
,p_plug_name=>'Demonstration - HR'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'Generated based on a Sample Dataset!'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11150035691569029)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(11147367711569025)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
,p_plug_query_num_rows=>15
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Dashboard'
,p_alias=>'DASHBOARD'
,p_step_title=>'Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10889115713562327)
,p_plug_name=>'Total Customer Orders'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(10889534501562327)
,p_region_id=>wwv_flow_imp.id(10889115713562327)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(10891255967562331)
,p_chart_id=>wwv_flow_imp.id(10889534501562327)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ( select l."CUST_FIRST_NAME" from "OEHR_CUSTOMERS" l where l."CUSTOMER_ID" = c."CUSTOMER_ID") "CUSTOMER_ID", ',
'       sum(c."ORDER_TOTAL") value',
'  from "OEHR_ORDERS" c',
' where c."ORDER_TOTAL" is not null',
' group by c."CUSTOMER_ID"',
' order by 2 desc'))
,p_max_row_count=>20
,p_series_type=>'bar'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'CUSTOMER_ID'
,p_items_label_rendered=>false
,p_items_label_position=>'auto'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10890072227562329)
,p_chart_id=>wwv_flow_imp.id(10889534501562327)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10890607802562331)
,p_chart_id=>wwv_flow_imp.id(10889534501562327)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10891896405562333)
,p_plug_name=>'Total Sales Rep Orders'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(10892217823562333)
,p_region_id=>wwv_flow_imp.id(10891896405562333)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(10893958255562336)
,p_chart_id=>wwv_flow_imp.id(10892217823562333)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ( select l."FIRST_NAME" from "OEHR_EMPLOYEES" l where l."EMPLOYEE_ID" = c."SALES_REP_ID") "SALES_REP_ID", ',
'       sum(c."ORDER_TOTAL") value',
'  from "OEHR_ORDERS" c',
' where c."ORDER_TOTAL" is not null',
' group by c."SALES_REP_ID"',
' order by 2 desc'))
,p_max_row_count=>20
,p_series_type=>'bar'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'SALES_REP_ID'
,p_items_label_rendered=>false
,p_items_label_position=>'auto'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10892795759562334)
,p_chart_id=>wwv_flow_imp.id(10892217823562333)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10893331781562335)
,p_chart_id=>wwv_flow_imp.id(10892217823562333)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10894510996562337)
,p_plug_name=>'Product Status'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(10894991361562338)
,p_region_id=>wwv_flow_imp.id(10894510996562337)
,p_chart_type=>'pie'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(10895494201562338)
,p_chart_id=>wwv_flow_imp.id(10894991361562338)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'TABLE'
,p_max_row_count=>20
,p_query_table=>'OEHR_PRODUCTS'
,p_series_type=>'pie'
,p_items_label_column_name=>'PRODUCT_STATUS'
,p_aggregate_function=>'COUNT'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10896086923562339)
,p_plug_name=>'Order Modes'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(10896417669562340)
,p_region_id=>wwv_flow_imp.id(10896086923562339)
,p_chart_type=>'pie'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(10896999151562341)
,p_chart_id=>wwv_flow_imp.id(10896417669562340)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'TABLE'
,p_max_row_count=>20
,p_query_table=>'OEHR_ORDERS'
,p_series_type=>'pie'
,p_items_label_column_name=>'ORDER_MODE'
,p_aggregate_function=>'COUNT'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10897534681562342)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10863843904562173)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Customers'
,p_alias=>'CUSTOMERS'
,p_step_title=>'Customers'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10899197529562355)
,p_name=>'Customers'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_CUSTOMERS'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10903432642562375)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>0
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:RP:P4_CUSTOMER_ID:\#CUSTOMER_ID#\'
,p_column_linktext=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_column_alignment=>'CENTER'
,p_report_column_required_role=>wwv_flow_imp.id(10870863228562254)
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10903856547562376)
,p_query_column_id=>2
,p_column_alias=>'CUST_FIRST_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Cust First Name'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10904252760562377)
,p_query_column_id=>3
,p_column_alias=>'CUST_LAST_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Cust Last Name'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10904617549562378)
,p_query_column_id=>4
,p_column_alias=>'STREET_ADDRESS'
,p_column_display_sequence=>4
,p_column_heading=>'Street Address'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10905078918562378)
,p_query_column_id=>5
,p_column_alias=>'POSTAL_CODE'
,p_column_display_sequence=>5
,p_column_heading=>'Postal Code'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10905478169562379)
,p_query_column_id=>6
,p_column_alias=>'CITY'
,p_column_display_sequence=>6
,p_column_heading=>'City'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10905800874562379)
,p_query_column_id=>7
,p_column_alias=>'STATE_PROVINCE'
,p_column_display_sequence=>7
,p_column_heading=>'State Province'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10906265687562380)
,p_query_column_id=>8
,p_column_alias=>'COUNTRY_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Country ID'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10906632581562380)
,p_query_column_id=>9
,p_column_alias=>'PHONE_NUMBER'
,p_column_display_sequence=>9
,p_column_heading=>'Phone Number'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10907039982562381)
,p_query_column_id=>10
,p_column_alias=>'NLS_LANGUAGE'
,p_column_display_sequence=>10
,p_column_heading=>'Nls Language'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10907458174562382)
,p_query_column_id=>11
,p_column_alias=>'NLS_TERRITORY'
,p_column_display_sequence=>11
,p_column_heading=>'Nls Territory'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10907891518562383)
,p_query_column_id=>12
,p_column_alias=>'CREDIT_LIMIT'
,p_column_display_sequence=>12
,p_column_heading=>'Credit Limit'
,p_column_format=>'999G999G999G999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10908296370562383)
,p_query_column_id=>13
,p_column_alias=>'CUST_EMAIL'
,p_column_display_sequence=>13
,p_column_heading=>'Cust Email'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10908640546562384)
,p_query_column_id=>14
,p_column_alias=>'ACCOUNT_MGR_ID'
,p_column_display_sequence=>14
,p_column_heading=>'Account Mgr'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_named_lov=>wwv_flow_imp.id(10900000710562361)
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10899237379562355)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(10899197529562355)
,p_landmark_label=>'Filters'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'current_facets_selector', '#active_facets',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'E',
  'show_total_row_count', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10902380429562367)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10910378397562389)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10863843904562173)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10909154758562385)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10899197529562355)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:4::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10902816202562371)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10902380429562367)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:RR,3::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10899774344562358)
,p_name=>'P3_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10899237379562355)
,p_prompt=>'Search'
,p_source=>'CUST_FIRST_NAME,CUST_LAST_NAME,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID,PHONE_NUMBER,NLS_LANGUAGE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10900479216562362)
,p_name=>'P3_ACCOUNT_MGR_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10899237379562355)
,p_prompt=>'Account Mgr'
,p_source=>'ACCOUNT_MGR_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'OEHR_EMPLOYEES.FIRST_NAME'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10900896476562363)
,p_name=>'P3_COUNTRY_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10899237379562355)
,p_prompt=>'Country ID'
,p_source=>'COUNTRY_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10901226428562364)
,p_name=>'P3_NLS_TERRITORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10899237379562355)
,p_prompt=>'Nls Territory'
,p_source=>'NLS_TERRITORY'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10901672051562365)
,p_name=>'P3_NLS_LANGUAGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10899237379562355)
,p_prompt=>'Nls Language'
,p_source=>'NLS_LANGUAGE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10902023677562367)
,p_name=>'P3_CREDIT_LIMIT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10899237379562355)
,p_prompt=>'Credit Limit'
,p_source=>'CREDIT_LIMIT'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC2:<300;|300,300 - 1#G#000;300|1000,1#G#000 - 2#G#000;1000|2000,2#G#000 - 3#G#000;2000|3000,>=3#G#000;3000|'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10909432159562386)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(10899197529562355)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10909929297562388)
,p_event_id=>wwv_flow_imp.id(10909432159562386)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10899197529562355)
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Customer'
,p_alias=>'CUSTOMER'
,p_page_mode=>'MODAL'
,p_step_title=>'Customer'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(10870863228562254)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10911332038562393)
,p_plug_name=>'Customer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_CUSTOMERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10921474521562650)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10921884468562651)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10921474521562650)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10923262319562653)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10921474521562650)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P4_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10923634102562654)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10921474521562650)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P4_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10924051922562654)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10921474521562650)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P4_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10911731217562394)
,p_name=>'P4_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_item_source_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer ID'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10912099971562630)
,p_name=>'P4_CUST_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_item_source_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cust First Name'
,p_source=>'CUST_FIRST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10912441760562632)
,p_name=>'P4_CUST_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_item_source_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cust Last Name'
,p_source=>'CUST_LAST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10912838638562633)
,p_name=>'P4_STREET_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_item_source_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Street Address'
,p_source=>'STREET_ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10913272989562633)
,p_name=>'P4_POSTAL_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_item_source_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Postal Code'
,p_source=>'POSTAL_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10913636482562634)
,p_name=>'P4_CITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_item_source_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'CITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10914078712562635)
,p_name=>'P4_STATE_PROVINCE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_item_source_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_use_cache_before_default=>'NO'
,p_prompt=>'State Province'
,p_source=>'STATE_PROVINCE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10914463142562636)
,p_name=>'P4_COUNTRY_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_item_source_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country ID'
,p_source=>'COUNTRY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10914801227562636)
,p_name=>'P4_PHONE_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_item_source_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone Number'
,p_source=>'PHONE_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>25
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10915267456562637)
,p_name=>'P4_NLS_LANGUAGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_item_source_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nls Language'
,p_source=>'NLS_LANGUAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10915605547562638)
,p_name=>'P4_NLS_TERRITORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_item_source_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nls Territory'
,p_source=>'NLS_TERRITORY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10916083798562638)
,p_name=>'P4_CREDIT_LIMIT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_item_source_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Credit Limit'
,p_source=>'CREDIT_LIMIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10916451681562641)
,p_name=>'P4_CUST_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_item_source_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cust Email'
,p_source=>'CUST_EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10916857400562641)
,p_name=>'P4_ACCOUNT_MGR_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_item_source_plug_id=>wwv_flow_imp.id(10911332038562393)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Account Mgr'
,p_source=>'ACCOUNT_MGR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'OEHR_EMPLOYEES.FIRST_NAME'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10921992960562651)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10921884468562651)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10922784754562653)
,p_event_id=>wwv_flow_imp.id(10921992960562651)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10924850983562656)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10911332038562393)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Customer'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10924850983562656
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10925214962562656)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>10925214962562656
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10924417938562655)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(10911332038562393)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Customer'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10924417938562655
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Order Search'
,p_alias=>'ORDER-SEARCH'
,p_step_title=>'Order Search'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10927237442562662)
,p_plug_name=>'Search Results'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ORDER_ID",',
'       "ORDER_DATE",',
'       "ORDER_MODE",',
'       "CUSTOMER_ID",',
'       ( select l1."CUST_FIRST_NAME" from "OEHR_CUSTOMERS" l1 where l1."CUSTOMER_ID" = m."CUSTOMER_ID") "CUSTOMER_ID_L$1",',
'       "ORDER_STATUS",',
'       "ORDER_TOTAL",',
'       "SALES_REP_ID",',
'       ( select l2."FIRST_NAME" from "OEHR_EMPLOYEES" l2 where l2."EMPLOYEE_ID" = m."SALES_REP_ID") "SALES_REP_ID_L$2",',
'       "PROMOTION_ID"',
'from "OEHR_ORDERS" m'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{ "itemName": "P5_ORDER_BY", "orderBys": [{"key":"CUSTOMER_ID_L$1","expr":"\"CUSTOMER_ID_L$1\" asc"},{"key":"ORDER_DATE","expr":"\"ORDER_DATE\" asc"},{"key":"ORDER_MODE","expr":"\"ORDER_MODE\" asc"}]}'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(10931625996562676)
,p_region_id=>wwv_flow_imp.id(10927237442562662)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'CUSTOMER_ID_L$1'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'ORDER_DATE'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'CUSTOMER_ID_L$1'
,p_badge_column_name=>'ORDER_MODE'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10927364140562662)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(10927237442562662)
,p_landmark_label=>'Filters'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'current_facets_selector', '#active_facets',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'E',
  'show_total_row_count', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10930424384562670)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10932417293562678)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10863843904562173)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10930989665562671)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10930424384562670)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:RR,5::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10927806883562664)
,p_name=>'P5_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10927364140562662)
,p_prompt=>'Search'
,p_source=>'ORDER_MODE,CUSTOMER_ID,SALES_REP_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10928514403562665)
,p_name=>'P5_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10927364140562662)
,p_prompt=>'Customer'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'OEHR_CUSTOMERS.CUST_FIRST_NAME'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10928996679562667)
,p_name=>'P5_ORDER_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10927364140562662)
,p_prompt=>'Order Total'
,p_source=>'ORDER_TOTAL'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC2:<2#G#000;|2000,2#G#000 - 10#G#000;2000|10000,10#G#000 - 20#G#000;10000|20000,20#G#000 - 40#G#000;20000|40000,>=40#G#000;40000|'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10929337402562667)
,p_name=>'P5_SALES_REP_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10927364140562662)
,p_prompt=>'Sales Rep'
,p_source=>'SALES_REP_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'OEHR_EMPLOYEES.FIRST_NAME'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10929730689562669)
,p_name=>'P5_ORDER_STATUS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10927364140562662)
,p_prompt=>'Order Status'
,p_source=>'ORDER_STATUS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC2:<2;|2,2 - 4;2|4,4 - 6;4|6,6 - 8;6|8,>=8;8|'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10930168510562669)
,p_name=>'P5_ORDER_MODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10927364140562662)
,p_prompt=>'Order Mode'
,p_source=>'ORDER_MODE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov_sort_direction=>'ASC'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'D'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10932100339562678)
,p_name=>'P5_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10927237442562662)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'CUSTOMER_ID_L$1'
,p_prompt=>'Order By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Customer Id L$1;CUSTOMER_ID_L$1,Order Date;ORDER_DATE,Order Mode;ORDER_MODE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Orders'
,p_alias=>'ORDERS'
,p_step_title=>'Orders'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10933988848562683)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10934744909562684)
,p_plug_name=>'Orders'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_ORDERS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'OEHR_ORDERS'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10936073951562690)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10936537563562691)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10937529130562695)
,p_name=>'ORDER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Order ID'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10938554039562697)
,p_name=>'ORDER_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_DATE'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Order Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10939536042562698)
,p_name=>'ORDER_MODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_MODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Order Mode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>8
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10940539195562700)
,p_name=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Customer'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10941576435562701)
,p_name=>'ORDER_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_STATUS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Order Status'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10942547635562703)
,p_name=>'ORDER_TOTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_TOTAL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Order Total'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10943578448562704)
,p_name=>'SALES_REP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALES_REP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sales Rep'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10944573454562706)
,p_name=>'PROMOTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROMOTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Promotion ID'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(10935293460562686)
,p_internal_uid=>10935293460562686
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>wwv_flow_imp.id(10870863228562254)
,p_update_authorization_scheme=>wwv_flow_imp.id(10870863228562254)
,p_delete_authorization_scheme=>wwv_flow_imp.id(10870863228562254)
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(10935671498562687)
,p_interactive_grid_id=>wwv_flow_imp.id(10935293460562686)
,p_static_id=>'109357'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>10
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(10935845873562688)
,p_report_id=>wwv_flow_imp.id(10935671498562687)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10936941444562693)
,p_view_id=>wwv_flow_imp.id(10935845873562688)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(10936537563562691)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10937977556562696)
,p_view_id=>wwv_flow_imp.id(10935845873562688)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(10937529130562695)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10938993597562697)
,p_view_id=>wwv_flow_imp.id(10935845873562688)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(10938554039562697)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10939964882562699)
,p_view_id=>wwv_flow_imp.id(10935845873562688)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(10939536042562698)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10940923709562700)
,p_view_id=>wwv_flow_imp.id(10935845873562688)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(10940539195562700)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10941939808562702)
,p_view_id=>wwv_flow_imp.id(10935845873562688)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(10941576435562701)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10942901566562703)
,p_view_id=>wwv_flow_imp.id(10935845873562688)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(10942547635562703)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10943938369562705)
,p_view_id=>wwv_flow_imp.id(10935845873562688)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(10943578448562704)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10944915913562706)
,p_view_id=>wwv_flow_imp.id(10935845873562688)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(10944573454562706)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10945854550562794)
,p_plug_name=>'Order Items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_ORDER_ITEMS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(10934744909562684)
,p_prn_page_header=>'OEHR_ORDER_ITEMS'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10947099744562796)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10947531194562797)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10948574733562799)
,p_name=>'ORDER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Order'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(10937529130562695)
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10949537812562800)
,p_name=>'LINE_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Line Item ID'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10950559521562802)
,p_name=>'PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Product'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10951576546562804)
,p_name=>'UNIT_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNIT_PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Unit Price'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990D0'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10952521282562805)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10953550726562807)
,p_name=>'ORDER_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Order Item ID'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(10946206832562795)
,p_internal_uid=>10946206832562795
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>wwv_flow_imp.id(10870863228562254)
,p_update_authorization_scheme=>wwv_flow_imp.id(10870863228562254)
,p_delete_authorization_scheme=>wwv_flow_imp.id(10870863228562254)
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(10946631472562796)
,p_interactive_grid_id=>wwv_flow_imp.id(10946206832562795)
,p_static_id=>'109467'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>10
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(10946819469562796)
,p_report_id=>wwv_flow_imp.id(10946631472562796)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10947910388562798)
,p_view_id=>wwv_flow_imp.id(10946819469562796)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(10947531194562797)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10948999052562799)
,p_view_id=>wwv_flow_imp.id(10946819469562796)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(10948574733562799)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10949939262562801)
,p_view_id=>wwv_flow_imp.id(10946819469562796)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(10949537812562800)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10950937454562803)
,p_view_id=>wwv_flow_imp.id(10946819469562796)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(10950559521562802)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10951958447562804)
,p_view_id=>wwv_flow_imp.id(10946819469562796)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(10951576546562804)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10952998757562806)
,p_view_id=>wwv_flow_imp.id(10946819469562796)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(10952521282562805)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10953999918562807)
,p_view_id=>wwv_flow_imp.id(10946819469562796)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(10953550726562807)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10934321120562684)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10933988848562683)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
,p_security_scheme=>wwv_flow_imp.id(10870863228562254)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10945555131562714)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10934744909562684)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'OEHR_ORDERS - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10934321120562684)
,p_internal_uid=>10945555131562714
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10954598663562808)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10945854550562794)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'OEHR_ORDER_ITEMS - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10934321120562684)
,p_internal_uid=>10954598663562808
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Orders Calendar'
,p_alias=>'ORDERS-CALENDAR'
,p_step_title=>'Orders Calendar'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10959722008562822)
,p_plug_name=>'Orders Calendar'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_ORDERS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_calendar_views', 'list:navigation',
  'calendar_views_and_navigation', 'month:week:day:list:navigation',
  'display_column', 'ORDER_DATE',
  'drag_and_drop', 'N',
  'end_date_column', '',
  'event_sorting', 'AUTOMATIC',
  'first_hour', '9',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'show_time', 'N',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'ORDER_DATE',
  'time_format', '00')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10960166421562823)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10863843904562173)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Employees'
,p_alias=>'EMPLOYEES'
,p_step_title=>'Employees'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10961723846562827)
,p_name=>'Employees'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_EMPLOYEES'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10966353129562845)
,p_query_column_id=>1
,p_column_alias=>'EMPLOYEE_ID'
,p_column_display_sequence=>0
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:RP:P9_EMPLOYEE_ID:\#EMPLOYEE_ID#\'
,p_column_linktext=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_column_alignment=>'CENTER'
,p_report_column_required_role=>wwv_flow_imp.id(10870863228562254)
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10966777062562845)
,p_query_column_id=>2
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'First Name'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10967180814562846)
,p_query_column_id=>3
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Last Name'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10967520421562846)
,p_query_column_id=>4
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>4
,p_column_heading=>'Email'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10967927374562847)
,p_query_column_id=>5
,p_column_alias=>'PHONE_NUMBER'
,p_column_display_sequence=>5
,p_column_heading=>'Phone Number'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10968399555562848)
,p_query_column_id=>6
,p_column_alias=>'HIRE_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Hire Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10968714554562848)
,p_query_column_id=>7
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>7
,p_column_heading=>'Job'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(10962696809562828)
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10969127553562849)
,p_query_column_id=>8
,p_column_alias=>'SALARY'
,p_column_display_sequence=>8
,p_column_heading=>'Salary'
,p_column_format=>'999G999G999G999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10969501300562849)
,p_query_column_id=>9
,p_column_alias=>'COMMISSION_PCT'
,p_column_display_sequence=>9
,p_column_heading=>'Commission Percent'
,p_column_format=>'999990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10969948160562850)
,p_query_column_id=>10
,p_column_alias=>'MANAGER_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Manager'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(10900000710562361)
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10970343400562850)
,p_query_column_id=>11
,p_column_alias=>'DEPARTMENT_ID'
,p_column_display_sequence=>11
,p_column_heading=>'Department'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_named_lov=>wwv_flow_imp.id(10963797952562830)
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10961885159562827)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(10961723846562827)
,p_landmark_label=>'Filters'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'current_facets_selector', '#active_facets',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'E',
  'show_total_row_count', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10965201041562842)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10972049939562853)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10863843904562173)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10970849873562851)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10961723846562827)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:9::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10965701562562843)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10965201041562842)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:RR,8::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10962392306562828)
,p_name=>'P8_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10961885159562827)
,p_prompt=>'Search'
,p_source=>'FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,JOB_ID,MANAGER_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10963020843562829)
,p_name=>'P8_JOB_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10961885159562827)
,p_prompt=>'Job'
,p_source=>'JOB_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'OEHR_JOBS.JOB_TITLE'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10963480033562830)
,p_name=>'P8_MANAGER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10961885159562827)
,p_prompt=>'Manager'
,p_source=>'MANAGER_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'OEHR_EMPLOYEES.FIRST_NAME'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10964110347562831)
,p_name=>'P8_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10961885159562827)
,p_prompt=>'Department'
,p_source=>'DEPARTMENT_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'OEHR_DEPARTMENTS.DEPARTMENT_NAME'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10964549681562832)
,p_name=>'P8_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10961885159562827)
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10964952340562842)
,p_name=>'P8_COMMISSION_PCT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10961885159562827)
,p_prompt=>'Commission Percent'
,p_source=>'COMMISSION_PCT'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC2:<0#D#15;|.15,0#D#15 - 0#D#2;.15|.2,0#D#2 - 0#D#25;.2|.25,0#D#25 - 0#D#3;.25|.3,>=0#D#3;.3|'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10971169808562852)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(10961723846562827)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10971682637562852)
,p_event_id=>wwv_flow_imp.id(10971169808562852)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10961723846562827)
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Employee'
,p_alias=>'EMPLOYEE'
,p_page_mode=>'MODAL'
,p_step_title=>'Employee'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(10870863228562254)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10973063014562855)
,p_plug_name=>'Employee'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_EMPLOYEES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10981038113563109)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10981466019563110)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10981038113563109)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10982831757563112)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10981038113563109)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P9_EMPLOYEE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10983212748563112)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10981038113563109)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P9_EMPLOYEE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10983655868563113)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10981038113563109)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P9_EMPLOYEE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10973426938562856)
,p_name=>'P9_EMPLOYEE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10973063014562855)
,p_item_source_plug_id=>wwv_flow_imp.id(10973063014562855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee ID'
,p_source=>'EMPLOYEE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10973711219563095)
,p_name=>'P9_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10973063014562855)
,p_item_source_plug_id=>wwv_flow_imp.id(10973063014562855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10974196716563095)
,p_name=>'P9_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10973063014562855)
,p_item_source_plug_id=>wwv_flow_imp.id(10973063014562855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>25
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10974504246563096)
,p_name=>'P9_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10973063014562855)
,p_item_source_plug_id=>wwv_flow_imp.id(10973063014562855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>25
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10974939591563097)
,p_name=>'P9_PHONE_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10973063014562855)
,p_item_source_plug_id=>wwv_flow_imp.id(10973063014562855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone Number'
,p_source=>'PHONE_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10975360947563098)
,p_name=>'P9_HIRE_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10973063014562855)
,p_item_source_plug_id=>wwv_flow_imp.id(10973063014562855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Hire Date'
,p_source=>'HIRE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10975787735563099)
,p_name=>'P9_JOB_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10973063014562855)
,p_item_source_plug_id=>wwv_flow_imp.id(10973063014562855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job'
,p_source=>'JOB_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'OEHR_JOBS.JOB_TITLE'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10976117212563099)
,p_name=>'P9_SALARY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(10973063014562855)
,p_item_source_plug_id=>wwv_flow_imp.id(10973063014562855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salary'
,p_source=>'SALARY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10976523937563100)
,p_name=>'P9_COMMISSION_PCT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(10973063014562855)
,p_item_source_plug_id=>wwv_flow_imp.id(10973063014562855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Commission Percent'
,p_source=>'COMMISSION_PCT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10976995385563101)
,p_name=>'P9_MANAGER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(10973063014562855)
,p_item_source_plug_id=>wwv_flow_imp.id(10973063014562855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Manager'
,p_source=>'MANAGER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'OEHR_EMPLOYEES.FIRST_NAME'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10977363978563102)
,p_name=>'P9_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(10973063014562855)
,p_item_source_plug_id=>wwv_flow_imp.id(10973063014562855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Department'
,p_source=>'DEPARTMENT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'OEHR_DEPARTMENTS.DEPARTMENT_NAME'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10981541893563110)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10981466019563110)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10982358220563111)
,p_event_id=>wwv_flow_imp.id(10981541893563110)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10984438609563114)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10973063014562855)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Employee'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10984438609563114
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10984843774563114)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>10984843774563114
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10984002496563113)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(10973063014562855)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Employee'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10984002496563113
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Regions'
,p_alias=>'REGIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Regions'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10992415776564074)
,p_plug_name=>'Regions'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_REGIONS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Regions'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10992528230564074)
,p_name=>'Regions'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'REGION_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:RP:P11_REGION_ID:\#REGION_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'DEMO'
,p_internal_uid=>10992528230564074
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10993264901564076)
,p_db_column_name=>'REGION_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Region ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10993605082564079)
,p_db_column_name=>'REGION_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Region Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11091851399568915)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'110919'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'REGION_NAME'
,p_sort_column_1=>'REGION_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10994060797564080)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10992415776564074)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:11::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10994334237564080)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(10992415776564074)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10994857880564081)
,p_event_id=>wwv_flow_imp.id(10994334237564080)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10992415776564074)
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Region'
,p_alias=>'REGION'
,p_page_mode=>'MODAL'
,p_step_title=>'Region'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10986373166563826)
,p_plug_name=>'Region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_REGIONS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10988059201564067)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10988473190564068)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10988059201564067)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10989873128564070)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10988059201564067)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P11_REGION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10990208385564070)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10988059201564067)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P11_REGION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10990649785564071)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10988059201564067)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P11_REGION_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10986734884563826)
,p_name=>'P11_REGION_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10986373166563826)
,p_item_source_plug_id=>wwv_flow_imp.id(10986373166563826)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Region ID'
,p_source=>'REGION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10987041009564066)
,p_name=>'P11_REGION_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10986373166563826)
,p_item_source_plug_id=>wwv_flow_imp.id(10986373166563826)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Region Name'
,p_source=>'REGION_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>25
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10988514093564068)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10988473190564068)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10989382350564069)
,p_event_id=>wwv_flow_imp.id(10988514093564068)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10991401982564072)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10986373166563826)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Region'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10991401982564072
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10991853402564072)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>10991853402564072
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10991055336564071)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(10986373166563826)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Region'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10991055336564071
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Countries'
,p_alias=>'COUNTRIES'
,p_page_mode=>'MODAL'
,p_step_title=>'Countries'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11003769581565021)
,p_plug_name=>'Countries'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_COUNTRIES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Countries'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11003853731565021)
,p_name=>'Countries'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'COUNTRY_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:RP:P13_COUNTRY_ID:\#COUNTRY_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'DEMO'
,p_internal_uid=>11003853731565021
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11004556664565022)
,p_db_column_name=>'COUNTRY_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Country ID'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11004981739565023)
,p_db_column_name=>'COUNTRY_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Country Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11005350431565023)
,p_db_column_name=>'REGION_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Region'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(10997849793565012)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11096421499568928)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'110965'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COUNTRY_ID:COUNTRY_NAME:REGION_ID:'
,p_sort_column_1=>'COUNTRY_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11005885140565024)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11003769581565021)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:13::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11006160011565024)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11003769581565021)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11006659833565025)
,p_event_id=>wwv_flow_imp.id(11006160011565024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11003769581565021)
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Country'
,p_alias=>'COUNTRY'
,p_page_mode=>'MODAL'
,p_step_title=>'Country'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10996611202564776)
,p_plug_name=>'Country'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_COUNTRIES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10999317637565015)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10999797625565015)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10999317637565015)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11001171238565017)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10999317637565015)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P13_COUNTRY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11001558869565018)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10999317637565015)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P13_COUNTRY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11001936869565018)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10999317637565015)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P13_COUNTRY_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10997077818564777)
,p_name=>'P13_COUNTRY_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10996611202564776)
,p_item_source_plug_id=>wwv_flow_imp.id(10996611202564776)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country ID'
,p_source=>'COUNTRY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10997399344565011)
,p_name=>'P13_COUNTRY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10996611202564776)
,p_item_source_plug_id=>wwv_flow_imp.id(10996611202564776)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country Name'
,p_source=>'COUNTRY_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10997771287565012)
,p_name=>'P13_REGION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10996611202564776)
,p_item_source_plug_id=>wwv_flow_imp.id(10996611202564776)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Region'
,p_source=>'REGION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'OEHR_REGIONS.REGION_NAME'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10999832903565015)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10999797625565015)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11000617961565016)
,p_event_id=>wwv_flow_imp.id(10999832903565015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11002756005565019)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10996611202564776)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Country'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11002756005565019
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11003192029565020)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11003192029565020
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11002386062565019)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(10996611202564776)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Country'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11002386062565019
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Warehouses'
,p_alias=>'WAREHOUSES'
,p_page_mode=>'MODAL'
,p_step_title=>'Warehouses'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11015518222565962)
,p_plug_name=>'Warehouses'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_WAREHOUSES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Warehouses'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11015659462565962)
,p_name=>'Warehouses'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'WAREHOUSE_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:RP:P15_WAREHOUSE_ID:\#WAREHOUSE_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'DEMO'
,p_internal_uid=>11015659462565962
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11016323451565964)
,p_db_column_name=>'WAREHOUSE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Warehouse ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11016712074565965)
,p_db_column_name=>'WAREHOUSE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Warehouse Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11017139640565965)
,p_db_column_name=>'LOCATION_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(11009623371565953)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11101632616568937)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111017'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WAREHOUSE_NAME:LOCATION_ID'
,p_sort_column_1=>'WAREHOUSE_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11017624635565966)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11015518222565962)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:15::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11017953548565966)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11015518222565962)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11018473508565967)
,p_event_id=>wwv_flow_imp.id(11017953548565966)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11015518222565962)
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Warehouse'
,p_alias=>'WAREHOUSE'
,p_page_mode=>'MODAL'
,p_step_title=>'Warehouse'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11008492157565721)
,p_plug_name=>'Warehouse'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_WAREHOUSES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11011188171565956)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11011560372565957)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11011188171565956)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11012991081565958)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11011188171565956)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P15_WAREHOUSE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11013303291565959)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11011188171565956)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P15_WAREHOUSE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11013789686565960)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11011188171565956)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P15_WAREHOUSE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11008891950565722)
,p_name=>'P15_WAREHOUSE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11008492157565721)
,p_item_source_plug_id=>wwv_flow_imp.id(11008492157565721)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Warehouse ID'
,p_source=>'WAREHOUSE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11009173532565953)
,p_name=>'P15_WAREHOUSE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11008492157565721)
,p_item_source_plug_id=>wwv_flow_imp.id(11008492157565721)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Warehouse Name'
,p_source=>'WAREHOUSE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>35
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11009549227565953)
,p_name=>'P15_LOCATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11008492157565721)
,p_item_source_plug_id=>wwv_flow_imp.id(11008492157565721)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Location'
,p_source=>'LOCATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'OEHR_LOCATIONS.STREET_ADDRESS'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11011693219565957)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11011560372565957)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11012463420565958)
,p_event_id=>wwv_flow_imp.id(11011693219565957)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11014514653565961)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11008492157565721)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Warehouse'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11014514653565961
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11014987656565961)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11014987656565961
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11014138656565960)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11008492157565721)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Warehouse'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11014138656565960
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Products'
,p_alias=>'PRODUCTS'
,p_page_mode=>'MODAL'
,p_step_title=>'Products'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11032632012566915)
,p_plug_name=>'Product Information'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_PRODUCT_INFORMATION'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Products'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11032759420566915)
,p_name=>'Products'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'PRODUCT_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:RP:P17_PRODUCT_ID:\#PRODUCT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'DEMO'
,p_internal_uid=>11032759420566915
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11033441714566916)
,p_db_column_name=>'PRODUCT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Product ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11033891315566917)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11034279409566918)
,p_db_column_name=>'PRODUCT_DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Product Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11034697194566918)
,p_db_column_name=>'CATEGORY_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Category ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11035062617566919)
,p_db_column_name=>'WEIGHT_CLASS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Weight Class'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990D0'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11035485042566919)
,p_db_column_name=>'WARRANTY_PERIOD'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Warranty Period'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11035817946566920)
,p_db_column_name=>'SUPPLIER_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Supplier ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11036269369566921)
,p_db_column_name=>'PRODUCT_STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Product Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11036670273566921)
,p_db_column_name=>'LIST_PRICE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'List Price'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11037017454566922)
,p_db_column_name=>'MIN_PRICE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Min Price'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11037457008566923)
,p_db_column_name=>'CATALOG_URL'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Catalog URL'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11107411652568948)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111075'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCT_NAME:PRODUCT_DESCRIPTION:WEIGHT_CLASS:WARRANTY_PERIOD:PRODUCT_STATUS:LIST_PRICE:MIN_PRICE:CATALOG_URL'
,p_sort_column_1=>'PRODUCT_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11037969046566924)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11032632012566915)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:17::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11038204206566924)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11032632012566915)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11038774204566925)
,p_event_id=>wwv_flow_imp.id(11038204206566924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11032632012566915)
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_imp_page.create_page(
 p_id=>17
,p_name=>'Product Information'
,p_alias=>'PRODUCT-INFORMATION'
,p_page_mode=>'MODAL'
,p_step_title=>'Product Information'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11020214017566665)
,p_plug_name=>'Product Information'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_PRODUCT_INFORMATION'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11028231925566908)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11028671007566908)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11028231925566908)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11030058186566911)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11028231925566908)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P17_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11030408972566911)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11028231925566908)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11030888856566912)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11028231925566908)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11020699358566666)
,p_name=>'P17_PRODUCT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11020214017566665)
,p_item_source_plug_id=>wwv_flow_imp.id(11020214017566665)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product ID'
,p_source=>'PRODUCT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11020924631566895)
,p_name=>'P17_PRODUCT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11020214017566665)
,p_item_source_plug_id=>wwv_flow_imp.id(11020214017566665)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Name'
,p_source=>'PRODUCT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11021300094566896)
,p_name=>'P17_PRODUCT_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11020214017566665)
,p_item_source_plug_id=>wwv_flow_imp.id(11020214017566665)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Description'
,p_source=>'PRODUCT_DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11021724902566897)
,p_name=>'P17_CATEGORY_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11020214017566665)
,p_item_source_plug_id=>wwv_flow_imp.id(11020214017566665)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category ID'
,p_source=>'CATEGORY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11022182935566897)
,p_name=>'P17_WEIGHT_CLASS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11020214017566665)
,p_item_source_plug_id=>wwv_flow_imp.id(11020214017566665)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Weight Class'
,p_source=>'WEIGHT_CLASS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11022589109566898)
,p_name=>'P17_WARRANTY_PERIOD'
,p_source_data_type=>'INTERVAL_Y2M'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11020214017566665)
,p_item_source_plug_id=>wwv_flow_imp.id(11020214017566665)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Warranty Period'
,p_source=>'WARRANTY_PERIOD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11022953634566899)
,p_name=>'P17_SUPPLIER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11020214017566665)
,p_item_source_plug_id=>wwv_flow_imp.id(11020214017566665)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Supplier ID'
,p_source=>'SUPPLIER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11023360450566900)
,p_name=>'P17_PRODUCT_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(11020214017566665)
,p_item_source_plug_id=>wwv_flow_imp.id(11020214017566665)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Status'
,p_source=>'PRODUCT_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11023784859566900)
,p_name=>'P17_LIST_PRICE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(11020214017566665)
,p_item_source_plug_id=>wwv_flow_imp.id(11020214017566665)
,p_use_cache_before_default=>'NO'
,p_prompt=>'List Price'
,p_source=>'LIST_PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11024184811566901)
,p_name=>'P17_MIN_PRICE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(11020214017566665)
,p_item_source_plug_id=>wwv_flow_imp.id(11020214017566665)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Min Price'
,p_source=>'MIN_PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11024521446566902)
,p_name=>'P17_CATALOG_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(11020214017566665)
,p_item_source_plug_id=>wwv_flow_imp.id(11020214017566665)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Catalog URL'
,p_source=>'CATALOG_URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11028740417566908)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11028671007566908)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11029563214566910)
,p_event_id=>wwv_flow_imp.id(11028740417566908)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11031674504566913)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11020214017566665)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Product Information'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11031674504566913
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11032012610566913)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11032012610566913
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11031285676566912)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11020214017566665)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Product Information'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11031285676566912
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_imp_page.create_page(
 p_id=>18
,p_name=>'Jobs'
,p_alias=>'JOBS'
,p_page_mode=>'MODAL'
,p_step_title=>'Jobs'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11047901407567889)
,p_plug_name=>'Jobs'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_JOBS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Jobs'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11048070178567889)
,p_name=>'Jobs'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'JOB_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:RP:P19_JOB_ID:\#JOB_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'DEMO'
,p_internal_uid=>11048070178567889
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11048764317567890)
,p_db_column_name=>'JOB_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Job ID'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11049162320567891)
,p_db_column_name=>'JOB_TITLE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Job Title'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11049587538567892)
,p_db_column_name=>'MIN_SALARY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Min Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11049993158567892)
,p_db_column_name=>'MAX_SALARY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Max Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11124382723568978)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111244'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'JOB_ID:JOB_TITLE:MIN_SALARY:MAX_SALARY:'
,p_sort_column_1=>'JOB_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11050479304567893)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11047901407567889)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:19::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11050705947567893)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11047901407567889)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11051295388567894)
,p_event_id=>wwv_flow_imp.id(11050705947567893)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11047901407567889)
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_imp_page.create_page(
 p_id=>19
,p_name=>'Job'
,p_alias=>'JOB'
,p_page_mode=>'MODAL'
,p_step_title=>'Job'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11040537117567638)
,p_plug_name=>'Job'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_JOBS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11043513006567883)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11043948447567883)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11043513006567883)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11045355007567885)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11043513006567883)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P19_JOB_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11045792052567886)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11043513006567883)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P19_JOB_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11046120250567886)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11043513006567883)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P19_JOB_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11040933254567639)
,p_name=>'P19_JOB_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11040537117567638)
,p_item_source_plug_id=>wwv_flow_imp.id(11040537117567638)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job ID'
,p_source=>'JOB_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11041282150567878)
,p_name=>'P19_JOB_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11040537117567638)
,p_item_source_plug_id=>wwv_flow_imp.id(11040537117567638)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job Title'
,p_source=>'JOB_TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>35
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11041546124567879)
,p_name=>'P19_MIN_SALARY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11040537117567638)
,p_item_source_plug_id=>wwv_flow_imp.id(11040537117567638)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Min Salary'
,p_source=>'MIN_SALARY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11041926336567880)
,p_name=>'P19_MAX_SALARY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11040537117567638)
,p_item_source_plug_id=>wwv_flow_imp.id(11040537117567638)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Max Salary'
,p_source=>'MAX_SALARY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11044085725567883)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11043948447567883)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11044837221567884)
,p_event_id=>wwv_flow_imp.id(11044085725567883)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11046937694567887)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11040537117567638)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Job'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11046937694567887
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11047347108567888)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11047347108567888
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11046526313567887)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11040537117567638)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Job'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11046526313567887
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Departments'
,p_alias=>'DEPARTMENTS'
,p_page_mode=>'MODAL'
,p_step_title=>'Departments'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11060569138568842)
,p_plug_name=>'Departments'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_DEPARTMENTS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Departments'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11060692825568842)
,p_name=>'Departments'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'DEPARTMENT_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:RP:P21_DEPARTMENT_ID:\#DEPARTMENT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'DEMO'
,p_internal_uid=>11060692825568842
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061398092568844)
,p_db_column_name=>'DEPARTMENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Department ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061780922568845)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11062110211568845)
,p_db_column_name=>'MANAGER_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Manager'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(10900000710562361)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11062542852568846)
,p_db_column_name=>'LOCATION_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(11009623371565953)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11131252756568990)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111313'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DEPARTMENT_NAME:MANAGER_ID:LOCATION_ID'
,p_sort_column_1=>'DEPARTMENT_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11063074075568847)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11060569138568842)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:21::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11063360494568847)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11060569138568842)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11063855788568848)
,p_event_id=>wwv_flow_imp.id(11063360494568847)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11060569138568842)
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_imp_page.create_page(
 p_id=>21
,p_name=>'Department'
,p_alias=>'DEPARTMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Department'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11053014626568600)
,p_plug_name=>'Department'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_DEPARTMENTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11056124958568835)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11056595649568836)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11056124958568835)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11057979472568838)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11056124958568835)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P21_DEPARTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11058360576568838)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11056124958568835)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P21_DEPARTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11058702636568839)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11056124958568835)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P21_DEPARTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11053450240568601)
,p_name=>'P21_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11053014626568600)
,p_item_source_plug_id=>wwv_flow_imp.id(11053014626568600)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Department ID'
,p_source=>'DEPARTMENT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11053739230568831)
,p_name=>'P21_DEPARTMENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11053014626568600)
,p_item_source_plug_id=>wwv_flow_imp.id(11053014626568600)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Department Name'
,p_source=>'DEPARTMENT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11054108292568831)
,p_name=>'P21_MANAGER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11053014626568600)
,p_item_source_plug_id=>wwv_flow_imp.id(11053014626568600)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Manager'
,p_source=>'MANAGER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'OEHR_EMPLOYEES.FIRST_NAME'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11054554185568832)
,p_name=>'P21_LOCATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11053014626568600)
,p_item_source_plug_id=>wwv_flow_imp.id(11053014626568600)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Location'
,p_source=>'LOCATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'OEHR_LOCATIONS.STREET_ADDRESS'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11056668639568836)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11056595649568836)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11057405875568837)
,p_event_id=>wwv_flow_imp.id(11056668639568836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11059509133568840)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11053014626568600)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Department'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11059509133568840
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11059932597568840)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11059932597568840
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11059183221568839)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11053014626568600)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Department'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11059183221568839
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>'Jobs'
,p_alias=>'JOBS1'
,p_step_title=>'Jobs'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11359754033779757)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10863843904562173)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11360464415779761)
,p_plug_name=>'Jobs'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_JOBS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Jobs'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11360593932779761)
,p_name=>'Jobs'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DEMO'
,p_internal_uid=>11360593932779761
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11361102987780003)
,p_db_column_name=>'JOB_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Job ID'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11361537285780004)
,p_db_column_name=>'JOB_TITLE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Job Title'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11361979486780005)
,p_db_column_name=>'MIN_SALARY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Min Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11362320518780005)
,p_db_column_name=>'MAX_SALARY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Max Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11362722908780006)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11363170822780366)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'113632'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'JOB_ID:JOB_TITLE:MIN_SALARY:MAX_SALARY:DESCRIPTION'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Demonstration - HR - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10880446693562291)
,p_plug_name=>'Demonstration - HR'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10882574755562304)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10880446693562291)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10880990129562299)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10880446693562291)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10881352852562301)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10880446693562291)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10881773121562302)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10880446693562291)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled and not apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10882179910562303)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10880446693562291)
,p_prompt=>'Remember me'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10884739524562311)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10884739524562311
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10885275364562312)
,p_page_process_id=>wwv_flow_imp.id(10884739524562311)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10885742672562312)
,p_page_process_id=>wwv_flow_imp.id(10884739524562311)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10882879755562307)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10882879755562307
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10883370121562309)
,p_page_process_id=>wwv_flow_imp.id(10882879755562307)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10883803760562310)
,p_page_process_id=>wwv_flow_imp.id(10882879755562307)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10884368160562310)
,p_page_process_id=>wwv_flow_imp.id(10882879755562307)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P9999_PERSISTENT_AUTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10886680037562314)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10886680037562314
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10886241441562313)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>10886241441562313
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11326292378569436)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10863843904562173)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11335562350569451)
,p_plug_name=>'Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11335931326569452)
,p_plug_name=>'Application Administration'
,p_parent_plug_id=>wwv_flow_imp.id(11335562350569451)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(11332857640569447)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11336326657569452)
,p_plug_name=>'Configuration'
,p_parent_plug_id=>wwv_flow_imp.id(11335562350569451)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_list_id=>wwv_flow_imp.id(11326972415569437)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(10868350162562247)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11336709698569453)
,p_plug_name=>'User Interface'
,p_parent_plug_id=>wwv_flow_imp.id(11335562350569451)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_list_id=>wwv_flow_imp.id(11327670841569439)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(10868750338562247)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11337166419569454)
,p_plug_name=>'Activity Reports'
,p_parent_plug_id=>wwv_flow_imp.id(11335562350569451)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_list_id=>wwv_flow_imp.id(11328377579569440)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(10868086814562247)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11337552332569454)
,p_plug_name=>'Column 2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11337965201569455)
,p_plug_name=>'Access Control'
,p_parent_plug_id=>wwv_flow_imp.id(11337552332569454)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(10867929119562247)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11338712580569456)
,p_plug_name=>'ACL Information'
,p_parent_plug_id=>wwv_flow_imp.id(11337965201569455)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope varchar2(45);',
'begin',
'    l_acl_scope := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'');',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'');',
'    else',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope);',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11339127659569457)
,p_name=>'User Counts Report'
,p_parent_plug_id=>wwv_flow_imp.id(11337965201569455)
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name, (select count(*) from apex_appl_acl_user_roles ur where r.role_id = ur.role_id) user_count, r.role_id',
'from apex_appl_acl_roles r',
'where r.application_id = :APP_ID',
'group by r.role_name, r.role_id',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11339823844569462)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11340256446569463)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11340639401569464)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11343765117569471)
,p_plug_name=>'Access Control Actions'
,p_parent_plug_id=>wwv_flow_imp.id(11337965201569455)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(11331080958569445)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11344192941569471)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(11337552332569454)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(10868127274562247)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11344550729569472)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(11344192941569471)
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value feedback_status, ',
'(select count(*) from apex_team_feedback f where f.application_id = :APP_ID and f.feedback_status = l.return_value) feedback_count ',
'from apex_application_lov_entries l',
'where l.application_id = :APP_ID',
'and l.list_of_values_name = ''FEEDBACK_STATUS''',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11345297203569478)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11345632544569478)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11347486496569482)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(11344192941569471)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(11332171058569447)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11338305042569456)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11337965201569455)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add User'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP,10042::'
,p_icon_css_classes=>'fa-user-plus'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11342815775569469)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11338305042569456)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11343395003569470)
,p_event_id=>wwv_flow_imp.id(11342815775569469)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11339127659569457)
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'Configuration Options'
,p_alias=>'CONFIGURATION-OPTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Configuration Options'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_required_patch=>wwv_flow_imp.id(10868350162562247)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Configuration settings allow you to make specific functionality either available (enabled) or unavailable (disabled) to end users.</p>',
'<p>If a specific function is not 100% ready, or needs to be temporarily removed, click <strong>Disabled</strong>. ',
'Once it should be made available, simply click <strong>Enabled</strong>.</p>',
'<p><em><strong>Note:</strong> Changes made here will not be reflected for individual end users currently running the application. Once the end user signs out and then signs back in the revised feature settings will be invoked.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11150442259569031)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11150674667569032)
,p_plug_name=>'Configuration Options'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    build_option_id     ID, ',
'    build_option_name   application_option,',
'    apex_item.hidden(1, build_option_id) ||',
'    apex_item.hidden(2, build_option_status) ||',
'    apex_item.switch ( ',
'         p_idx        => 3,',
'         p_value      => build_option_status,',
'         p_on_value   => ''Include'',',
'         p_on_label   => m.enabled,',
'         p_off_value  => ''Exclude'',',
'         p_off_label  => m.disabled,',
'         p_item_id    => ''BO_OPT_'' || rownum,',
'         p_item_label => ( case when build_option_status = ''Include'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_ENABLED'', apex_escape.html(build_option_name) )',
'                           when build_option_status = ''Exclude'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_DISABLED'', apex_escape.html(build_option_name) )',
'                           end )) "STATUS",',
'    component_comment   description,',
'    last_updated_on        updated,',
'    lower(last_updated_by) updated_by,',
'    build_option_status current_status',
'  from apex_application_build_options,',
'  (select apex_lang.message(''APEX.FEATURE.CONFIG.ENABLED'') enabled, apex_lang.message(''APEX.FEATURE.CONFIG.DISABLED'') disabled from dual) m',
' where application_id = :APP_ID ',
' and (feature_identifier not in ( ''APPLICATION_ACCESS_CONTROL'',''APPLICATION_CONFIGURATION'') or feature_identifier is null)'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Configuration Options'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11151259126569033)
,p_name=>'Configuration Options'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DEMO'
,p_internal_uid=>11151259126569033
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11151923867569039)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11152388679569040)
,p_db_column_name=>'APPLICATION_OPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Feature'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11152700421569041)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_allow_filtering=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11153196260569042)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11153545254569042)
,p_db_column_name=>'UPDATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11153993924569043)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11154363142569043)
,p_db_column_name=>'CURRENT_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Current Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11157161531569053)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111572'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_OPTION:STATUS:DESCRIPTION:UPDATED:UPDATED_BY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11158749483569057)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11150442259569031)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11158023481569056)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11150674667569032)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11159597792569059)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11159118828569058)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..apex_application.g_f01.count loop',
'    for c1 in ( select application_id, build_option_name, build_option_status',
'                from apex_application_build_options',
'                where apex_application.g_f01(i) = build_option_id',
'                   and application_Id = :APP_ID) loop',
'        if c1.build_option_status != apex_application.g_f03(i) then',
'            apex_util.set_build_option_status(  p_application_id => :APP_ID,',
'                                                p_id => apex_application.g_f01(i),',
'                                                p_build_status => upper(apex_application.g_f03(i)) );',
'        end if;',
'    end loop;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Configuration Options updated. '
,p_internal_uid=>11159118828569058
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Application Appearance'
,p_alias=>'APPLICATION-APPEARANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Appearance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_required_patch=>wwv_flow_imp.id(10868750338562247)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11159841024569060)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11159909358569060)
,p_plug_name=>'Configure Appearance'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11162338545569066)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11159841024569060)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11160912108569062)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11159841024569060)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11162731138569067)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11163034602569067)
,p_name=>'P10020_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11159909358569060)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Desktop Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DESKTOP THEME STYLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = t.application_id',
'   and s.theme_number   = t.theme_number',
'   and s.application_id = :app_id'))
,p_display_when_type=>'EXISTS'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>'The default Theme Style applies to all users.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11163799984569076)
,p_name=>'P10020_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11159909358569060)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End User Theme Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.theme_style_by_user_pref',
'  from apex_applications a',
' where a.application_id  = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_lov=>'.'||wwv_flow_imp.id(11163855964569076)||'.'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If checked, end users may choose their own Theme Style using the Customize link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11161066652569062)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11160912108569062)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11161784500569064)
,p_event_id=>wwv_flow_imp.id(11161066652569062)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11164854959569080)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10020_DESKTOP_THEME_STYLE_ID is not null then',
'    for l_theme in (select theme_number',
'                      from apex_application_themes',
'                     where application_id = :app_id',
'                       and is_current     = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => l_theme.theme_number,',
'            p_theme_style_id => :P10020_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>11164854959569080
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11165267457569081)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save End User Style Preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_enabled boolean := case when :P10020_END_USER_STYLE = ''Yes'' then true else false end;',
'begin',
'    for l_theme in ( select theme_number',
'                       from apex_applications',
'                      where application_id  = :APP_ID )',
'    loop',
'        if l_enabled then',
'            apex_theme.enable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'        else',
'            apex_theme.disable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'            apex_theme.clear_all_users_style(:APP_ID);',
'        end if;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>11165267457569081
);
end;
/
prompt --application/pages/page_10030
begin
wwv_flow_imp_page.create_page(
 p_id=>10030
,p_name=>'Activity Dashboard'
,p_alias=>'ACTIVITY-DASHBOARD'
,p_page_mode=>'MODAL'
,p_step_title=>'Activity Dashboard'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_required_patch=>wwv_flow_imp.id(10868086814562247)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11165501271569081)
,p_plug_name=>'Hourly Page Events'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(11165670407569081)
,p_region_id=>wwv_flow_imp.id(11165501271569081)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(11167795181569084)
,p_chart_id=>wwv_flow_imp.id(11165670407569081)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with nw as (',
'    -- APEX_ACTIVITY_LOG uses dates; convert system time to local time zone.',
'    select from_tz( cast( sysdate as timestamp ), to_char( systimestamp, ''TZR'' ) ) at local as tm from dual',
'),',
'window as (',
'    select',
'         trunc(nw.tm - ((level-1)/24),''HH'') start_tm,',
'         trunc(nw.tm - ((level-2)/24),''HH'') end_tm,',
'         trunc(sysdate-((level-1)/24),''HH'') log_start_tm,',
'         trunc(sysdate-((level-2)/24),''HH'') log_end_tm',
'    from nw',
'    connect by level <= round( 24 * ( 1/24/60/60 * nvl(:P10030_TIMEFRAME,1) ) )',
')',
'select w.start_tm log_time,',
'       ( select count(*)',
'           from apex_activity_log l',
'          where l.flow_id = :app_id',
'            and l.time_stamp between w.log_start_tm and w.log_end_tm ) as value',
'from window w',
'order by 1'))
,p_max_row_count=>350
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LOG_TIME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(11168947475569085)
,p_chart_id=>wwv_flow_imp.id(11165670407569081)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(11168328142569084)
,p_chart_id=>wwv_flow_imp.id(11165670407569081)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11165732714569081)
,p_plug_name=>'Most Active Pages'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(11165860255569081)
,p_region_id=>wwv_flow_imp.id(11165732714569081)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(11172784685569092)
,p_chart_id=>wwv_flow_imp.id(11165860255569081)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.step_id||''. ''||(select page_name from apex_application_pages p where p.application_id = :app_id and page_id = x.step_id) label, ',
'        value',
'from ( select step_id,',
'              count(*) as value',
'         from apex_activity_log',
'        where flow_id = :app_id',
'          and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'          and step_id is not null',
'        group by step_id',
'        order by 2 desc',
'     ) x'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(11173331804569093)
,p_chart_id=>wwv_flow_imp.id(11165860255569081)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(11173963631569093)
,p_chart_id=>wwv_flow_imp.id(11165860255569081)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11165994009569081)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(11166076978569081)
,p_region_id=>wwv_flow_imp.id(11165994009569081)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(11170257420569088)
,p_chart_id=>wwv_flow_imp.id(11166076978569081)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') ) as label,',
'       count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'group by nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') )',
'order by 2 desc'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(11170850389569089)
,p_chart_id=>wwv_flow_imp.id(11166076978569081)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(11171480121569090)
,p_chart_id=>wwv_flow_imp.id(11166076978569081)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11166111189569081)
,p_name=>'Recent Errors'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sqlerrm    label,',
'       time_stamp value',
'  from apex_activity_log',
' where flow_id    = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and sqlerrm    is not null',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11175025393569100)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11175454819569101)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_column_format=>'SINCE'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11166247976569081)
,p_name=>'Latest Activity'
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc       as username,',
'       max(time_stamp) as last_activity',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and userid_lc  is not null',
' group by userid_lc',
' order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No activities found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11178264312569112)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11178690310569112)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>'Last Activity'
,p_column_format=>'SINCE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11166327059569081)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11180935231569117)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11165501271569081)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11181373699569117)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11165732714569081)
,p_button_name=>'VIEW_ACTIVITY_DETAILS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RP,10034::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11181799163569118)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11165994009569081)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11182158417569118)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11166111189569081)
,p_button_name=>'VIEW_RECENT_ERRORS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:RP,10032::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11166408237569081)
,p_name=>'P10030_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11166327059569081)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11166588675569081)
,p_name=>'Change Filters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10030_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11183782332569121)
,p_event_id=>wwv_flow_imp.id(11166588675569081)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11165501271569081)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11184289125569122)
,p_event_id=>wwv_flow_imp.id(11166588675569081)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11165994009569081)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11184710435569123)
,p_event_id=>wwv_flow_imp.id(11166588675569081)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11165732714569081)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11185212960569123)
,p_event_id=>wwv_flow_imp.id(11166588675569081)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11166111189569081)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11185762459569124)
,p_event_id=>wwv_flow_imp.id(11166588675569081)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11166247976569081)
);
end;
/
prompt --application/pages/page_10031
begin
wwv_flow_imp_page.create_page(
 p_id=>10031
,p_name=>'Top Users'
,p_alias=>'TOP-USERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Top Users'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hour-graph { display: table; width: 100%; }',
'span.hour { display: table-cell; padding: 0; font-size: 11px; text-align: center; min-width: 32px; }',
'span.hour-label { opacity: 0.5; }',
'span.hour-value { display: block; }',
'span.hour { background-color: var(--ut-palette-success); color:  var(--ut-palette-success-contrast); }',
'span.hour.is-null { background-color: var(--ut-component-highlight-background-color); color: var(--ut-component-text-default-color); }',
'span.hour.is-over1k { background-color: var(--ut-palette-primary); color:  var(--ut-palette-primary-contrast); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_required_patch=>wwv_flow_imp.id(10868086814562247)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this report and chart to see the users with the most page views for the specified timeframe.</p>',
'<p>Select the reporting timeframe (Default = 1 day) and choose between the report and chart icons at the top of the page.</p>',
'<p>For the interactive report, use the search field, or select the <strong>User</strong> column heading, to select a specific user. You can perform numerous functions by clicking the <strong>Actions</strong> button, such as columns displayed / hidden'
||', rows per page, filter, and so forth. Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11218572002569196)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select the_user,',
'    ''<div class="hour-graph">''||',
'        ''<span class="hour''|| case when h00 = 0 then '' is-null'' when h00 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 0</span> <span class="hour-value">''|| ',
'        case when h00 > 999 then to_char((h00/1000),''99999999D0'') ||''k'' else to_char(h00) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h01 = 0 then '' is-null'' when h01 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 1</span> <span class="hour-value">''|| ',
'        case when h01 > 999 then to_char((h01/1000),''99999999D0'') ||''k'' else to_char(h01) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h02 = 0 then '' is-null'' when h02 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 2</span> <span class="hour-value">''|| ',
'        case when h02 > 999 then to_char((h02/1000),''99999999D0'') ||''k'' else to_char(h02) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h03 = 0 then '' is-null'' when h03 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 3</span> <span class="hour-value">''|| ',
'        case when h03 > 999 then to_char((h03/1000),''99999999D0'') ||''k'' else to_char(h03) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h04 = 0 then '' is-null'' when h04 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 4</span> <span class="hour-value">''|| ',
'        case when h04 > 999 then to_char((h04/1000),''99999999D0'') ||''k'' else to_char(h04) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h05 = 0 then '' is-null'' when h05 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 5</span> <span class="hour-value">''|| ',
'        case when h05 > 999 then to_char((h05/1000),''99999999D0'') ||''k'' else to_char(h05) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h06 = 0 then '' is-null'' when h06 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 6</span> <span class="hour-value">''|| ',
'        case when h06 > 999 then to_char((h06/1000),''99999999D0'') ||''k'' else to_char(h06) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h07 = 0 then '' is-null'' when h07 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 7</span> <span class="hour-value">''|| ',
'        case when h07 > 999 then to_char((h07/1000),''99999999D0'') ||''k'' else to_char(h07) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h08 = 0 then '' is-null'' when h08 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 8</span> <span class="hour-value">''|| ',
'        case when h08 > 999 then to_char((h08/1000),''99999999D0'') ||''k'' else to_char(h08) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h09 = 0 then '' is-null'' when h09 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 9</span> <span class="hour-value">''|| ',
'        case when h09 > 999 then to_char((h09/1000),''99999999D0'') ||''k'' else to_char(h09) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h10 = 0 then '' is-null'' when h10 > 999 then '' is-over1k'' end ||''"><span class="hour-label">10</span> <span class="hour-value">''|| ',
'        case when h10 > 999 then to_char((h10/1000),''99999999D0'') ||''k'' else to_char(h10) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h11 = 0 then '' is-null'' when h11 > 999 then '' is-over1k'' end ||''"><span class="hour-label">11</span> <span class="hour-value">''|| ',
'        case when h11 > 999 then to_char((h11/1000),''99999999D0'') ||''k'' else to_char(h11) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h12 = 0 then '' is-null'' when h12 > 999 then '' is-over1k'' end ||''"><span class="hour-label">12</span> <span class="hour-value">''|| ',
'        case when h12 > 999 then to_char((h12/1000),''99999999D0'') ||''k'' else to_char(h12) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h13 = 0 then '' is-null'' when h13 > 999 then '' is-over1k'' end ||''"><span class="hour-label">13</span> <span class="hour-value">''|| ',
'        case when h13 > 999 then to_char((h13/1000),''99999999D0'') ||''k'' else to_char(h13) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h14 = 0 then '' is-null'' when h14 > 999 then '' is-over1k'' end ||''"><span class="hour-label">14</span> <span class="hour-value">''|| ',
'        case when h14 > 999 then to_char((h14/1000),''99999999D0'') ||''k'' else to_char(h14) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h15 = 0 then '' is-null'' when h15 > 999 then '' is-over1k'' end ||''"><span class="hour-label">15</span> <span class="hour-value">''|| ',
'        case when h15 > 999 then to_char((h15/1000),''99999999D0'') ||''k'' else to_char(h15) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h16 = 0 then '' is-null'' when h16 > 999 then '' is-over1k'' end ||''"><span class="hour-label">16</span> <span class="hour-value">''|| ',
'        case when h16 > 999 then to_char((h16/1000),''99999999D0'') ||''k'' else to_char(h16) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h17 = 0 then '' is-null'' when h17 > 999 then '' is-over1k'' end ||''"><span class="hour-label">17</span> <span class="hour-value">''|| ',
'        case when h17 > 999 then to_char((h17/1000),''99999999D0'') ||''k'' else to_char(h17) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h18 = 0 then '' is-null'' when h18 > 999 then '' is-over1k'' end ||''"><span class="hour-label">18</span> <span class="hour-value">''|| ',
'        case when h18 > 999 then to_char((h18/1000),''99999999D0'') ||''k'' else to_char(h18) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h19 = 0 then '' is-null'' when h19 > 999 then '' is-over1k'' end ||''"><span class="hour-label">19</span> <span class="hour-value">''|| ',
'        case when h19 > 999 then to_char((h19/1000),''99999999D0'') ||''k'' else to_char(h19) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h20 = 0 then '' is-null'' when h20 > 999 then '' is-over1k'' end ||''"><span class="hour-label">20</span> <span class="hour-value">''|| ',
'        case when h20 > 999 then to_char((h20/1000),''99999999D0'') ||''k'' else to_char(h20) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h21 = 0 then '' is-null'' when h21 > 999 then '' is-over1k'' end ||''"><span class="hour-label">21</span> <span class="hour-value">''|| ',
'        case when h21 > 999 then to_char((h21/1000),''99999999D0'') ||''k'' else to_char(h21) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h22 = 0 then '' is-null'' when h22 > 999 then '' is-over1k'' end ||''"><span class="hour-label">22</span> <span class="hour-value">''|| ',
'        case when h22 > 999 then to_char((h22/1000),''99999999D0'') ||''k'' else to_char(h22) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h23 = 0 then '' is-null'' when h23 > 999 then '' is-over1k'' end ||''"><span class="hour-label">23</span> <span class="hour-value">''|| ',
'        case when h23 > 999 then to_char((h23/1000),''99999999D0'') ||''k'' else to_char(h23) end ||''</span></span>''||',
'        ''</div>'' hours,',
'        page_events,',
'    median_elapsed,',
'    rows_fetched,',
'    ir_searches,',
'    errors,',
'    most_recent',
'    from (  ',
'    select userid_lc                    as the_user,',
'        count(*)                        as page_events,',
'        median(elap)                    as median_elapsed,',
'        sum(num_rows)                   as rows_fetched,',
'        sum(decode(ir_search,null,0,1)) as ir_searches,',
'        sum(decode(sqlerrm,null,0,1))   as errors,',
'        max(time_stamp)                 as most_recent,',
'        sum(decode(to_char(time_stamp,''HH24''),0,1,0)) h00,',
'        sum(decode(to_char(time_stamp,''HH24''),1,1,0)) h01,',
'        sum(decode(to_char(time_stamp,''HH24''),2,1,0)) h02,',
'        sum(decode(to_char(time_stamp,''HH24''),3,1,0)) h03,',
'        sum(decode(to_char(time_stamp,''HH24''),4,1,0)) h04,',
'        sum(decode(to_char(time_stamp,''HH24''),5,1,0)) h05,',
'        sum(decode(to_char(time_stamp,''HH24''),6,1,0)) h06,',
'        sum(decode(to_char(time_stamp,''HH24''),7,1,0)) h07,',
'        sum(decode(to_char(time_stamp,''HH24''),8,1,0)) h08,',
'        sum(decode(to_char(time_stamp,''HH24''),9,1,0)) h09,',
'        sum(decode(to_char(time_stamp,''HH24''),10,1,0)) h10,',
'        sum(decode(to_char(time_stamp,''HH24''),11,1,0)) h11,',
'        sum(decode(to_char(time_stamp,''HH24''),12,1,0)) h12,',
'        sum(decode(to_char(time_stamp,''HH24''),13,1,0)) h13,',
'        sum(decode(to_char(time_stamp,''HH24''),14,1,0)) h14,',
'        sum(decode(to_char(time_stamp,''HH24''),15,1,0)) h15,',
'        sum(decode(to_char(time_stamp,''HH24''),16,1,0)) h16,',
'        sum(decode(to_char(time_stamp,''HH24''),17,1,0)) h17,',
'        sum(decode(to_char(time_stamp,''HH24''),18,1,0)) h18,',
'        sum(decode(to_char(time_stamp,''HH24''),19,1,0)) h19,',
'        sum(decode(to_char(time_stamp,''HH24''),20,1,0)) h20,',
'        sum(decode(to_char(time_stamp,''HH24''),21,1,0)) h21,',
'        sum(decode(to_char(time_stamp,''HH24''),22,1,0)) h22,',
'        sum(decode(to_char(time_stamp,''HH24''),23,1,0)) h23',
'    from apex_activity_log l',
'    where flow_id = :APP_ID',
'        and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'        and userid is not null',
'    group by userid_lc) x'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'REPORT'
,p_prn_page_header=>'Top Users'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11219647574569197)
,p_name=>'Top Users'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DEMO'
,p_internal_uid=>11219647574569197
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11220389448569211)
,p_db_column_name=>'THE_USER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11220790188569212)
,p_db_column_name=>'HOURS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Activity by Hour'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11221136227569213)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11221596957569214)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11221914864569215)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Rows Fetched'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11222366827569216)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'IR Search'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11222736410569217)
,p_db_column_name=>'ERRORS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11223173135569218)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Most_Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11226237025569225)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'112263'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11218625426569196)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11218821834569196)
,p_plug_name=>'Top Users Chart'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(11218900965569196)
,p_region_id=>wwv_flow_imp.id(11218821834569196)
,p_chart_type=>'donut'
,p_height=>'600'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.02
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){ ',
'',
'    this.pieSliceLabel = function(dataContext) {',
'        var series_name,',
'            percent = Math.round(dataContext.value/dataContext.totalValue*100);',
'        ',
'        if ( dataContext.seriesData ) {',
'            series_name = dataContext.seriesData.name;',
'        } else {',
'            series_name = ''Other'';',
'        }',
'        return series_name + " " + percent + "% ( " + dataContext.value + " )";',
'    }',
'    ',
'    // Set chart initialization options ',
'    options.dataLabel = pieSliceLabel; ',
'    return options; ',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(11229802438569234)
,p_chart_id=>wwv_flow_imp.id(11218900965569196)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc as userid,',
'       count(*) as page_views',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'   and userid     is not null',
' group by userid_lc',
' order by 2'))
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_items_value_column_name=>'PAGE_VIEWS'
,p_items_label_column_name=>'USERID'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11227193290569227)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11218572002569196)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11219042026569196)
,p_name=>'P10031_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11218625426569196)
,p_prompt=>'View As'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_lov=>'.'||wwv_flow_imp.id(11230361330569234)||'.'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '2',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11219293776569196)
,p_name=>'P10031_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11218625426569196)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11218704020569196)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10031_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11228492349569230)
,p_event_id=>wwv_flow_imp.id(11218704020569196)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11218572002569196)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11231882253569238)
,p_event_id=>wwv_flow_imp.id(11218704020569196)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11218572002569196)
);
end;
/
prompt --application/pages/page_10032
begin
wwv_flow_imp_page.create_page(
 p_id=>10032
,p_name=>'Application Error Log'
,p_alias=>'APPLICATION-ERROR-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Error Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_required_patch=>wwv_flow_imp.id(10868086814562247)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11211589203569184)
,p_plug_name=>'Application Error Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id,',
'       userid,',
'       time_stamp err_time,',
'       sqlerrm,',
'       sqlerrm_component_type,',
'       sqlerrm_component_name',
'  from apex_activity_log',
' where flow_id = :app_id',
'   and sqlerrm is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Application Error Log'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11212149283569184)
,p_name=>'Application Error Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DEMO'
,p_internal_uid=>11212149283569184
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11212846610569187)
,p_db_column_name=>'STEP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11213222524569188)
,p_db_column_name=>'USERID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11213636752569188)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Err Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11214087343569189)
,p_db_column_name=>'SQLERRM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11214402039569189)
,p_db_column_name=>'SQLERRM_COMPONENT_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Context'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11214890267569190)
,p_db_column_name=>'SQLERRM_COMPONENT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11217300484569194)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'112174'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11218293758569196)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11211589203569184)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10033
begin
wwv_flow_imp_page.create_page(
 p_id=>10033
,p_name=>'Page Performance'
,p_alias=>'PAGE-PERFORMANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Performance'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_required_patch=>wwv_flow_imp.id(10868086814562247)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the page performance and popularity. The report is ordered by <strong>Weighted Performance</strong> which is calculated by multiplying the Median Elapsed time and number of Page Views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11197590801569153)
,p_plug_name=>'Page Performance'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id page,',
'    (   select page_name',
'        from apex_application_pages p',
'        where p.page_id = l.step_id',
'            and p.application_id = :app_id ) page_name,',
'    median(elap)                   median_elapsed,',
'    count(*) * median(elap)        weighted_performance,',
'    sum(decode(sqlerrm,null,0,1))  errors,',
'    count(distinct userid)         distinct_users,',
'    count(distinct session_id)     application_sessions,',
'    count(*)                       page_views,',
'    max(elap)                      max_elapsed,',
'    sum(nvl(num_rows,0))           total_rows,',
'    sum(decode(page_mode,''P'',1,0)) partial_page_views,',
'    sum(decode(page_mode,''D'',1,0)) full_page_views,',
'    min(elap)                      min_elapsed,',
'    avg(elap)                      avg_elapsed',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10033_TIMEFRAME )',
'    and userid is not null',
'group by step_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10033_TIMEFRAME'
,p_prn_page_header=>'Page Performance'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11198196158569154)
,p_name=>'Page Performance'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DEMO'
,p_internal_uid=>11198196158569154
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11198806628569162)
,p_db_column_name=>'PAGE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11199225891569163)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11199643756569163)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11200025038569164)
,p_db_column_name=>'WEIGHTED_PERFORMANCE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Weighted Performance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D99'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11200417160569164)
,p_db_column_name=>'ERRORS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11200810703569165)
,p_db_column_name=>'DISTINCT_USERS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Distinct Users'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11201227609569166)
,p_db_column_name=>'APPLICATION_SESSIONS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Application Sessions'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11201641070569166)
,p_db_column_name=>'PAGE_VIEWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11202022383569167)
,p_db_column_name=>'MAX_ELAPSED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Max Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11202411380569168)
,p_db_column_name=>'TOTAL_ROWS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11202837042569168)
,p_db_column_name=>'PARTIAL_PAGE_VIEWS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Partial Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11203233875569169)
,p_db_column_name=>'FULL_PAGE_VIEWS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Full Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11203675372569169)
,p_db_column_name=>'MIN_ELAPSED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Min Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11204037691569170)
,p_db_column_name=>'AVG_ELAPSED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Avg Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11208971795569179)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'112090'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11197634596569153)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11209729557569180)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11197590801569153)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11197423212569153)
,p_name=>'P10033_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11197634596569153)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11197755412569153)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10033_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11211015601569183)
,p_event_id=>wwv_flow_imp.id(11197755412569153)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11197590801569153)
);
end;
/
prompt --application/pages/page_10034
begin
wwv_flow_imp_page.create_page(
 p_id=>10034
,p_name=>'Page Views'
,p_alias=>'PAGE-VIEWS'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Views'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_required_patch=>wwv_flow_imp.id(10868086814562247)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the most recent page views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11186291907569125)
,p_plug_name=>'Page Views'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    step_id||''. ''||(select page_name',
'                    from apex_application_pages p',
'                    where p.page_id = l.step_id',
'                        and p.application_id = :APP_ID) page_name,',
'    userid_lc     user_id,',
'    time_stamp    timestamp,',
'    elap          elapsed,',
'    step_id       page,',
'    decode(page_mode,''P'',''Partial'',''D'',''Full'',page_mode) page_mode,',
'    component_name,',
'    num_rows,',
'    ir_search,',
'    sqlerrm  error',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10034_TIMEFRAME )',
'    and userid is not null',
'    and step_id is not null',
'order by time_stamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10034_TIMEFRAME'
,p_prn_page_header=>'Page Views'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11186876930569125)
,p_name=>'Page Views'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DEMO'
,p_internal_uid=>11186876930569125
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11187516897569136)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11187986411569137)
,p_db_column_name=>'USER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11188353976569137)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11188762014569138)
,p_db_column_name=>'ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11189142762569139)
,p_db_column_name=>'PAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11189571771569139)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11189932880569140)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11190390112569140)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11190767244569141)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'IR Search'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11191182150569142)
,p_db_column_name=>'ERROR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11194839474569148)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111949'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11186398451569125)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11195786005569150)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11186291907569125)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11186134771569125)
,p_name=>'P10034_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11186398451569125)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11186437071569125)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10034_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11197045911569152)
,p_event_id=>wwv_flow_imp.id(11186437071569125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11186291907569125)
);
end;
/
prompt --application/pages/page_10035
begin
wwv_flow_imp_page.create_page(
 p_id=>10035
,p_name=>'Automations Log'
,p_alias=>'AUTOMATIONS-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Automations Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_required_patch=>wwv_flow_imp.id(10868086814562247)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the automations log.</p>',
'<p>Review logged information about previous automation executions. The log contains start and end timestamps as well as details about processed rows (successful and with errors). Drill down into Messages to see individual messages for processed rows.'
||'</p>',
''))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11232394000569239)
,p_plug_name=>'Automations Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.id,',
'       l.start_timestamp,',
'       a.name automation_name,',
'       l.status,',
'       l.successful_row_count,',
'       l.error_row_count,',
'       (select count(1) from apex_automation_msg_log m where m.automation_log_id = l.id) msg_count,',
'       l.is_job,',
'       l.end_timestamp',
'  from apex_appl_automations a, apex_automation_log l',
' where a.automation_id = l.automation_id',
' and l.application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Automations Log'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11232921638569239)
,p_name=>'Automations Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DEMO'
,p_internal_uid=>11232921638569239
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11233667349569252)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11234069791569253)
,p_db_column_name=>'START_TIMESTAMP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Started'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11234436404569254)
,p_db_column_name=>'AUTOMATION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Automation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11234881574569254)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11235256168569255)
,p_db_column_name=>'SUCCESSFUL_ROW_COUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Successful Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11235601966569256)
,p_db_column_name=>'ERROR_ROW_COUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Error Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11236092947569256)
,p_db_column_name=>'MSG_COUNT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Message'
,p_column_link=>'f?p=&APP_ID.:10036:&APP_SESSION.::&DEBUG.:RP,10036:P10036_LOG_ID:#ID#'
,p_column_linktext=>'#MSG_COUNT#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11236441194569257)
,p_db_column_name=>'IS_JOB'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Scheduled'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11236825708569258)
,p_db_column_name=>'END_TIMESTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Ended'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11240247381569264)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'112403'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'START_TIMESTAMP:AUTOMATION_NAME:STATUS:SUCCESSFUL_ROW_COUNT:ERROR_ROW_COUNT:MSG_COUNT'
,p_sort_column_1=>'START_TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11241165807569265)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11232394000569239)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10036
begin
wwv_flow_imp_page.create_page(
 p_id=>10036
,p_name=>'Log Messages'
,p_alias=>'LOG-MESSAGES'
,p_page_mode=>'MODAL'
,p_step_title=>'Log Messages'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_required_patch=>wwv_flow_imp.id(10868086814562247)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11241737681569266)
,p_plug_name=>'Automation Execution'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11244142343569270)
,p_name=>'Messages'
,p_template=>2100526641005906379
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select message_timestamp,',
'       message,',
'       message_type,',
'       pk_value',
'  from apex_automation_msg_log',
' where automation_log_id = :P10036_LOG_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>50
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11244569852569274)
,p_query_column_id=>1
,p_column_alias=>'MESSAGE_TIMESTAMP'
,p_column_display_sequence=>1
,p_column_heading=>'Timestamp'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11244949938569274)
,p_query_column_id=>2
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>2
,p_column_heading=>'Message'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11245356871569275)
,p_query_column_id=>3
,p_column_alias=>'MESSAGE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Message Type'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11245763413569275)
,p_query_column_id=>4
,p_column_alias=>'PK_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'Primary Key Value'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11242171776569266)
,p_name=>'P10036_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11241737681569266)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11242560344569267)
,p_name=>'P10036_AUTOMATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11241737681569266)
,p_prompt=>'Automation'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11242918887569268)
,p_name=>'P10036_START_TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11241737681569266)
,p_prompt=>'Started'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11243391926569269)
,p_name=>'P10036_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11241737681569266)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11243770331569270)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Log Detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select automation_name,',
'       start_timestamp,',
'       status',
'  into :P10036_AUTOMATION_NAME,',
'       :P10036_START_TIMESTAMP,',
'       :P10036_STATUS',
'  from apex_automation_log',
' where id = :P10036_LOG_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11243770331569270
);
end;
/
prompt --application/pages/page_10040
begin
wwv_flow_imp_page.create_page(
 p_id=>10040
,p_name=>'Configure Access Control'
,p_alias=>'CONFIGURE-ACCESS-CONTROL'
,p_page_mode=>'MODAL'
,p_step_title=>'Configure Access Control'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_required_patch=>wwv_flow_imp.id(10867929119562247)
,p_dialog_resizable=>'Y'
,p_protection_level=>'U'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the appropriate choice for any authenticated users.<br> ',
'Selecting <strong>No</strong> makes the application more secure as only specified users can access the application. ',
'However, if your application has a large user community then maintaining users may be onerous, and you may prefer to choose <strong>Yes</strong> and only enter application Administrators, and possibly Contributors.<br>',
'If you select <strong>Yes</strong> then you must also select how users not included in the users list are treated.</p>',
'<p>Select between requiring email addresses and any alphanumeric value for Usernames.<br>',
'Generally, you should set this setting to <strong>E-mail Address</strong> if your application uses (or will be configured to use) a centralized authentication scheme such as Oracle Access Manager, or SSO.</p>',
'<p><em><strong>Note:</strong> This application supports the following 3 access levels: Reader, Contributor, and Administrator.',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'</em></p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11247880049569280)
,p_plug_name=>'Access Control Configuration'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11247982268569280)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11249159959569283)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11247982268569280)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11249463809569283)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11247982268569280)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11250808376569285)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11251176837569286)
,p_name=>'P10040_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11247880049569280)
,p_prompt=>'Any authenticated user may access this application'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11249511043569283)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11249463809569283)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11250256194569284)
,p_event_id=>wwv_flow_imp.id(11249511043569283)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11251567428569287)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Access Control'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10040_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Access Control settings saved.'
,p_internal_uid=>11251567428569287
);
end;
/
prompt --application/pages/page_10041
begin
wwv_flow_imp_page.create_page(
 p_id=>10041
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_required_patch=>wwv_flow_imp.id(10867929119562247)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11251951401569288)
,p_plug_name=>'Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage User Access'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11252718574569288)
,p_name=>'Manage User Access'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP:P10042_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'DEMO'
,p_internal_uid=>11252718574569288
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11253431903569293)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11253809409569293)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11254241364569294)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11255890474569297)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'112559'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11256779307569298)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11251951401569288)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11257126345569299)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11251951401569288)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10043:&APP_SESSION.::&DEBUG.:10043::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11257521562569299)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11251951401569288)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:10042::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11252045287569288)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11251951401569288)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11258144659569300)
,p_event_id=>wwv_flow_imp.id(11252045287569288)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11251951401569288)
);
end;
/
prompt --application/pages/page_10042
begin
wwv_flow_imp_page.create_page(
 p_id=>10042
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS1'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_required_patch=>wwv_flow_imp.id(10867929119562247)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this form to enter users, their email address and set their access level. ',
'The settings defined under <em>Configure Access Control</em> will determine whether the username must be their email address or can be any alphanumeric entry.</p>',
'<p>This application supports the following 3 access levels: Reader, Contributor, and Administrator.</p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'<p>When editing an existing user you can lock their account which will prevent them from accessing the application.</p>',
'<p><em><strong>Note:</strong>   If using Oracle APEX accounts then users entered here must also be defined as end users by a Workspace Administrator, who can also set their password.</em></p>'))
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11258699347569301)
,p_plug_name=>'Form on Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APEX_APPL_ACL_USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11258758697569301)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11261537934569306)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11258758697569301)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11261978880569306)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11258758697569301)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11259769769569303)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11258758697569301)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11261191773569305)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11258758697569301)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11262257539569307)
,p_name=>'P10042_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11258699347569301)
,p_item_source_plug_id=>wwv_flow_imp.id(11258699347569301)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11262626606569308)
,p_name=>'P10042_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11258699347569301)
,p_item_source_plug_id=>wwv_flow_imp.id(11258699347569301)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11263008315569308)
,p_name=>'P10042_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11258699347569301)
,p_item_source_plug_id=>wwv_flow_imp.id(11258699347569301)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10042_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11263494969569309)
,p_name=>'P10042_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11258699347569301)
,p_item_source_plug_id=>wwv_flow_imp.id(11258699347569301)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Roles'
,p_source=>'ROLE_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features for authenticated users. This application supports the following 3 roles: Reader, Contributor, and Administrator.<p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create,edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>,in addition to Contributors capability,can also perform configuration of the application.</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11264726168569316)
,p_validation_name=>'Cannot remove yourself from administrator'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10042_USER_NAME = :APP_USER and',
'    apex_acl.is_role_removed_from_user (',
'        p_application_id => :APP_ID,',
'        p_user_name      => :APP_USER,',
'        p_role_static_id => ''ADMINISTRATOR'',',
'        p_role_ids       => apex_string.split_numbers(',
'                                p_str => case when :REQUEST = ''DELETE'' then',
'                                             null',
'                                         else',
'                                             :P10042_ROLE_IDS',
'                                         end,',
'                                p_sep => '':'') ) then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You cannot remove administrator role from yourself.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11259881981569304)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11259769769569303)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11260507089569305)
,p_event_id=>wwv_flow_imp.id(11259881981569304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11265083726569317)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(11258699347569301)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Manage User Access'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11265083726569317
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11265423576569317)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11258699347569301)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Manage User Access'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11265423576569317
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11265882111569318)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11265882111569318
);
end;
/
prompt --application/pages/page_10043
begin
wwv_flow_imp_page.create_page(
 p_id=>10043
,p_name=>'Add Multiple Users - Step 1'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-1'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_required_patch=>wwv_flow_imp.id(10867929119562247)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11266299214569318)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11266316996569318)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11266421213569318)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11266299214569318)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11268459671569321)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11266299214569318)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11269753349569323)
,p_branch_action=>'f?p=&APP_ID.:10044:&APP_SESSION.::&DEBUG.:RP,10044::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(11266421213569318)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11270191771569324)
,p_name=>'P10043_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11266316996569318)
,p_prompt=>'Roles'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11270560579569324)
,p_name=>'P10043_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11266316996569318)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11270989165569325)
,p_name=>'P10043_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11266316996569318)
,p_prompt=>'Username Format'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_imp.id(11271014333569325)||'.'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11268566463569321)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11268459671569321)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11269236070569322)
,p_event_id=>wwv_flow_imp.id(11268566463569321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11272090676569327)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    apex_t_varchar2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    -- create collections',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_VALID'');',
'',
'    -- replace delimiting characters with commas',
'    l_line := :P10043_PRELIM_USERS;',
'    l_line := replace(l_line, chr(10), '' '');',
'    l_line := replace(l_line, chr(13), '' '');',
'    l_line := replace(l_line, chr(9),  '' '');',
'    l_line := replace(l_line, ''<'', '' '');',
'    l_line := replace(l_line, ''>'', '' '');',
'    l_line := replace(l_line, '';'', '' '');',
'    l_line := replace(l_line, '':'', '' '');',
'    l_line := replace(l_line, ''('', '' '');',
'    l_line := replace(l_line, '')'', '' '');',
'    l_line := replace(l_line, '' '', '','');',
'',
'    -- get one comma separated line of emails',
'    for j in 1 .. 1000 loop',
'        if instr(l_line, '',,'') > 0 then',
'            l_line := replace(l_line, '',,'', '','');',
'        else',
'            exit;',
'        end if;',
'    end loop;',
'',
'    -- get an array of emails',
'    l_emails := apex_string.split(l_line, '','');',
'',
'    -- add emails to a collection',
'    l_username := null;',
'    l_domain   := null;',
'    l_at       := 0;',
'    l_dot      := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid    := true;',
'        l_username := upper(trim(l_emails(j)));',
'        l_username := trim(both ''.'' from l_username);',
'        l_username := replace(l_username, '' '', null);',
'        l_username := replace(l_username, chr(10), null);',
'        l_username := replace(l_username, chr(9), null);',
'        l_username := replace(l_username, chr(13), null);',
'        l_username := replace(l_username, chr(49824), null);',
'',
'        if l_username is not null then',
'            if nvl(:P10043_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -- Validate',
'              l_at     := instr(nvl(l_username, ''x''), ''@'');',
'              l_domain := substr(l_username, l_at+1);',
'              l_dot    := instr(l_domain, ''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select user_name username',
'                             from APEX_APPL_ACL_USERS',
'                            where user_name = l_username and application_id = :APP_ID)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select c001',
'                             from apex_collections',
'                            where collection_name = ''ACL_BULK_USER_VALID''',
'                              and c001            = l_username)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_VALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => null,',
'                    p_c003            => :P10043_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11266421213569318)
,p_internal_uid=>11272090676569327
);
end;
/
prompt --application/pages/page_10044
begin
wwv_flow_imp_page.create_page(
 p_id=>10044
,p_name=>'Add Multiple Users - Step 2'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .fa {',
'  color: var(--ut-component-text-muted-color);',
'}',
'',
'.a-ListView-item .u-success-text {',
'  color: var(--ut-palette-success) !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_required_patch=>wwv_flow_imp.id(10867929119562247)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11266561530569318)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11266653245569318)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11266818929569318)
,p_name=>'Exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(11266653245569318)
,p_template=>2664334895415463485
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11273906699569339)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11274365159569339)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11266984684569319)
,p_plug_name=>'&P10044_VALID_COUNT. Users to Add'
,p_parent_plug_id=>wwv_flow_imp.id(11266653245569318)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>10000
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'list_view_features', 'ADVANCED_FORMATTING',
  'text_formatting', '&USERNAME!HTML.')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11267042517569319)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11277421583569345)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>'' ||',
'       apex_lang.message (',
'           ''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'',',
'           apex_escape.html(:P10044_VALID_COUNT),',
'           apex_escape.html(:P10044_ROLE)',
'       ) ||',
'       ''</p>'';'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11278126043569347)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<p>No valid new users found</p>'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11267155727569319)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11266561530569318)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11278835654569348)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11266561530569318)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11279266625569349)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11266561530569318)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11280567536569351)
,p_name=>'P10044_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11267042517569319)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG( role_name, '', '')',
'         WITHIN GROUP (ORDER BY role_name) role_name',
'from APEX_APPL_ACL_ROLES',
'where application_id = :APP_ID',
'and instr(:P10043_ROLE, role_id, 1) > 0'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11280999857569351)
,p_name=>'P10044_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11267042517569319)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11281370293569352)
,p_name=>'P10044_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11267042517569319)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11279311507569349)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11279266625569349)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11280022443569350)
,p_event_id=>wwv_flow_imp.id(11279311507569349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11281793256569353)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Users to Access Control List'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' )',
'    loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.delete_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.delete_collection(''ACL_BULK_USER_VALID'');',
'    :P10043_PRELIM_USERS := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11267155727569319)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>11281793256569353
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11282181100569354)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11282181100569354
);
end;
/
prompt --application/pages/page_10050
begin
wwv_flow_imp_page.create_page(
 p_id=>10050
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(10868127274562247)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11282545784569354)
,p_plug_name=>'Form on Feedback'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11282655844569354)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11282743164569354)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11282655844569354)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11285728219569359)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11282655844569354)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11293464174569369)
,p_branch_action=>'f?p=&APP_ID.:10051:&APP_SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11287006747569360)
,p_name=>'P10050_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11282545784569354)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11287473723569361)
,p_name=>'P10050_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11282545784569354)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11287824435569362)
,p_name=>'P10050_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11282545784569354)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11288298906569362)
,p_name=>'P10050_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(11282545784569354)
,p_prompt=>'Experience'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_lov=>'.'||wwv_flow_imp.id(11288341850569362)||'.'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11290131928569365)
,p_name=>'P10050_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11282545784569354)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11293044130569369)
,p_validation_name=>'At least One Feedback Required'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10050_FEEDBACK is null and :P10050_RATING is null then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please provide feedback or your experience.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11285829460569359)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11285728219569359)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11286555771569360)
,p_event_id=>wwv_flow_imp.id(11285829460569359)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11290577533569366)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Submit Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'SUBMIT_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11282743164569354)
,p_process_success_message=>'Feedback Submitted'
,p_internal_uid=>11290577533569366
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11291058579569366)
,p_page_process_id=>wwv_flow_imp.id(11290577533569366)
,p_page_id=>10050
,p_name=>'p_comment'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10050_FEEDBACK'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11291587941569367)
,p_page_process_id=>wwv_flow_imp.id(11290577533569366)
,p_page_id=>10050
,p_name=>'p_application_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'APP_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11292025334569368)
,p_page_process_id=>wwv_flow_imp.id(11290577533569366)
,p_page_id=>10050
,p_name=>'p_page_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10050_PAGE_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11292557234569368)
,p_page_process_id=>wwv_flow_imp.id(11290577533569366)
,p_page_id=>10050
,p_name=>'p_rating'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>4
,p_value_type=>'ITEM'
,p_value=>'P10050_RATING'
);
end;
/
prompt --application/pages/page_10051
begin
wwv_flow_imp_page.create_page(
 p_id=>10051
,p_name=>'Feedback Submitted'
,p_alias=>'FEEDBACK-SUBMITTED'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback Submitted'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(10868127274562247)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11283106698569354)
,p_plug_name=>'Feedback Submitted'
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11283049450569354)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11283106698569354)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_css_classes=>'w40p'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11283229154569354)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11283049450569354)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11295052278569372)
,p_event_id=>wwv_flow_imp.id(11283229154569354)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
end;
/
prompt --application/pages/page_10053
begin
wwv_flow_imp_page.create_page(
 p_id=>10053
,p_name=>'Manage Feedback'
,p_alias=>'MANAGE-FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Feedback'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_required_patch=>wwv_flow_imp.id(10868127274562247)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Feedback can be entered by end users from any normal page within the application.</p>',
'<p>This report shows the feedback entered, any response enter by administrators, and the status of the feedback.</p>',
'<p>Click the edit icon (yellow pencil) to enter a response or update the feedback status.</p>',
'<p><em><strong>Note:</strong> If feedback recipients have been defined then feedback submissions will also be emailed to the email addresses in the feedback recipients list.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11284449589569355)
,p_plug_name=>'Manage Feedback'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select feedback_id id,',
'    page_id||''. ''||page_name page_name,',
'    created_on created,',
'    lower(created_by) created_by,',
'    feedback,',
'    feedback_rating rating,',
'    case feedback_rating',
'      when 1 then ''fa-frown-o feedback-negative'' ',
'      when 2 then ''fa-emoji-neutral feedback-neutral''  ',
'      when 3 then ''fa-smile-o feedback-positive''',
'    end rating_icon,',
'    feedback_status status,',
'    public_response response,',
'    http_user_agent user_agent,',
'    updated_on updated,',
'    lower(updated_by) updated_by,',
'    page_id',
'from apex_team_feedback f',
'where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage Feedback'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11307816590569392)
,p_name=>'Manage Feedback'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10054:&APP_SESSION.::&DEBUG.:RP:P10054_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'DEMO'
,p_internal_uid=>11307816590569392
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11308506752569398)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11308913083569398)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11309397100569399)
,p_db_column_name=>'CREATED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Filed'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11309781076569400)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Filed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11310125964569400)
,p_db_column_name=>'FEEDBACK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Feedback'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11310579334569401)
,p_db_column_name=>'RATING'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Rating'
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(11288341850569362)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11310988691569402)
,p_db_column_name=>'RATING_ICON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'RATING ICON'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11311393035569403)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(11300693657569382)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11311748831569403)
,p_db_column_name=>'RESPONSE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Response'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11312137627569404)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'User Agent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11312561020569405)
,p_db_column_name=>'UPDATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11312911485569405)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11313398624569406)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11317920653569415)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'113180'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:CREATED:CREATED_BY:FEEDBACK:RATING:STATUS:RESPONSE:UPDATED:UPDATED_BY'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11318882839569417)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11284449589569355)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11284339352569355)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11284449589569355)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11319531808569418)
,p_event_id=>wwv_flow_imp.id(11284339352569355)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11284449589569355)
);
end;
/
prompt --application/pages/page_10054
begin
wwv_flow_imp_page.create_page(
 p_id=>10054
,p_name=>'Feedback'
,p_alias=>'FEEDBACK1'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10870666062562254)
,p_required_patch=>wwv_flow_imp.id(10868127274562247)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11283743709569354)
,p_plug_name=>'Form Items Region'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11283892852569355)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11283907830569355)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11283892852569355)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11296684691569375)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11283892852569355)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11284196906569355)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11283892852569355)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10054_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11298284397569377)
,p_name=>'P10054_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11283743709569354)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11298606776569378)
,p_name=>'P10054_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11283743709569354)
,p_prompt=>'Page'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11299080215569379)
,p_name=>'P10054_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11283743709569354)
,p_prompt=>'Filed'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11299319213569379)
,p_name=>'P10054_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11283743709569354)
,p_prompt=>'Rating'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'HTML',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11299748494569380)
,p_name=>'P10054_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11283743709569354)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11300174288569381)
,p_name=>'P10054_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11283743709569354)
,p_prompt=>'Response'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11300590171569382)
,p_name=>'P10054_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11283743709569354)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_lov=>'.'||wwv_flow_imp.id(11300693657569382)||'.'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11302825508569385)
,p_name=>'P10054_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(11283743709569354)
,p_prompt=>'User Agent'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11296771458569375)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11296684691569375)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11297439332569376)
,p_event_id=>wwv_flow_imp.id(11296771458569375)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11303301005569386)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_feedback in (',
'   select page_id,',
'          page_name,',
'          case feedback_rating',
'                when 1 then ''<span class="fa fa-frown-o feedback-negative" aria-hidden="true" title="Negative"></span>'' ',
'                when 2 then ''<span class="fa fa-emoji-neutral feedback-neutral" aria-hidden="true" title="Neutral"></span>''  ',
'                when 3 then ''<span class="fa fa-smile-o feedback-positive" aria-hidden="true" title="Positive"></span>'' ',
'                end rating_icon,',
'          lower(created_by) || '' - '' || apex_util.get_since(created_on) filed,',
'          feedback,',
'          public_response,',
'          feedback_status,',
'          http_user_agent',
'     from apex_team_feedback',
'    where feedback_id = :P10054_ID )',
'loop',
'   :P10054_PAGE_ID         := l_feedback.page_id||''. ''||l_feedback.page_name;',
'   :P10054_FILED           := l_feedback.filed;',
'   :P10054_RATING_ICON     := l_feedback.rating_icon;',
'   :P10054_FEEDBACK        := l_feedback.feedback;',
'   :P10054_RESPONSE        := l_feedback.public_response;',
'   :P10054_FEEDBACK_STATUS := l_feedback.feedback_status;',
'   :P10054_USER_AGENT      := l_feedback.http_user_agent;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11303301005569386
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11303663279569386)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Reply to Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'REPLY_TO_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11283907830569355)
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>11303663279569386
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11304168554569387)
,p_page_process_id=>wwv_flow_imp.id(11303663279569386)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11304675397569388)
,p_page_process_id=>wwv_flow_imp.id(11303663279569386)
,p_page_id=>10054
,p_name=>'p_status'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P10054_FEEDBACK_STATUS'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11305190472569388)
,p_page_process_id=>wwv_flow_imp.id(11303663279569386)
,p_page_id=>10054
,p_name=>'p_public_response'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10054_RESPONSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11305564951569389)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Delete Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'DELETE_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11284196906569355)
,p_process_success_message=>'Feedback Deleted'
,p_internal_uid=>11305564951569389
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11306004712569389)
,p_page_process_id=>wwv_flow_imp.id(11305564951569389)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11306558043569390)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11284196906569355)
,p_internal_uid=>11306558043569390
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11306931175569391)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11306931175569391
);
end;
/
prompt --application/pages/page_10060
begin
wwv_flow_imp_page.create_page(
 p_id=>10060
,p_name=>'About'
,p_alias=>'ABOUT'
,p_step_title=>'About'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10872214150562261)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(10868681731562247)
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11320440648569422)
,p_plug_name=>'About Page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>'This application was generated directly from Sample Datasets. Go to SQL Workshop, Utilities, Sample Datasets to install tables and then create an application based on those tables.'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_10061
begin
wwv_flow_imp_page.create_page(
 p_id=>10061
,p_name=>'Help'
,p_alias=>'HELP'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(10868681731562247)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11321180579569423)
,p_plug_name=>'Search Dialog'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_page in ( select page_title,',
'                       help_text',
'                  from apex_application_pages',
'                 where application_id = :APP_ID',
'                   and page_id = :P10061_PAGE_ID )',
'loop',
'    if l_page.help_text is null then',
'        return ''No help is available for this page.'';',
'    else',
'        return case when substr(l_page.help_text, 1, 3) != ''<p>'' then ''<p>'' end ||',
'               apex_application.do_substitutions(l_page.help_text) ||',
'               case when substr(trim(l_page.help_text), -4) != ''</p>'' then ''</p>'' end;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11321526139569424)
,p_name=>'P10061_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11321180579569423)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_20000
begin
wwv_flow_imp_page.create_page(
 p_id=>20000
,p_name=>'Settings'
,p_alias=>'SETTINGS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(11347826499569483)
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_patch=>wwv_flow_imp.id(11348324676569485)
,p_protection_level=>'C'
,p_help_text=>'This page contains a list of settings applicable to the current application user.'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11352991881569497)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11353351403569498)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'APEX_WORKSPACE_APEX_USERS'
,p_query_where=>'user_name = :APP_USER'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(11353838803569499)
,p_region_id=>wwv_flow_imp.id(11353351403569498)
,p_layout_type=>'ROW'
,p_card_css_classes=>'a-CardView--noUI'
,p_title_adv_formatting=>false
,p_title_column_name=>'USER_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'EMAIL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'EMAIL'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11354387226569500)
,p_plug_name=>'Settings'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(11351914581569494)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
end;
/
prompt --application/pages/page_20010
begin
wwv_flow_imp_page.create_page(
 p_id=>20010
,p_name=>'Push Notifications'
,p_alias=>'PUSH-NOTIFICATIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings - Push Notifications'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(11347826499569483)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(11348076163569485)
,p_protection_level=>'C'
,p_help_text=>'This page contains the settings for controlling push notification subscription for the current user.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11349337649569488)
,p_plug_name=>'Push Notifications Not Supported'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion--not-supported'
,p_icon_css_classes=>'fa-bell-slash-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_region_attributes=>'#APEX_CSP_DISPLAY_NONE#'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications are not currently supported in your browser.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11349772220569489)
,p_plug_name=>'Push Notifications'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion'
,p_icon_css_classes=>'fa-bell-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications have to be enabled for each device you want to receive the notifications on. The first time you enable push notifications, you will have to grant permission to your browser. This setting can be changed at any time.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11349037146569487)
,p_button_sequence=>10
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Settings'
,p_button_redirect_url=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_button_css_classes=>'t-Button--inlineLink'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11350249744569491)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11349772220569489)
,p_prompt=>'Enable push notifications on this device'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11350546815569491)
,p_name=>'Change P20010_ENABLE_PUSH'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20010_ENABLE_PUSH'
,p_condition_element=>'P20010_ENABLE_PUSH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11351081869569492)
,p_event_id=>wwv_flow_imp.id(11350546815569491)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Subscribe to push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.subscribePushNotifications();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11351521237569493)
,p_event_id=>wwv_flow_imp.id(11350546815569491)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Unsubscribe from push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.unsubscribePushNotifications();'
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done



-- sqlcl_snapshot {"hash":"181c921b6c5b469ed445168cc5a1907300992a69","type":"APEX","name":"f100.sql","schemaName":"DEMO","sxml":""}