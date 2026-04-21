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
--     Pages:                     46
--       Items:                  112
--       Validations:              2
--       Processes:               47
--       Regions:                109
--       Buttons:                 81
--       Dynamic Actions:         32
--     Shared Components:
--       Logic:
--         App Settings:           2
--         Build Options:          9
--       Navigation:
--         Lists:                 10
--         Breadcrumbs:            1
--           Entries:              7
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
,p_checksum_salt=>'89AD5FC080C0A3EE3A263873AA5D150A60E9F417169D0FB71993933F1387A20A'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(9785048962052776)
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
,p_security_scheme=>wwv_flow_imp.id(9792193343052797)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Demonstration - HR'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>6
,p_version_scn=>46793287369798
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'default'
,p_pwa_is_push_enabled=>'Y'
,p_pwa_push_credential_id=>wwv_flow_imp.id(10276964479060019)
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
,p_navigation_list_id=>wwv_flow_imp.id(9785839534052778)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(9786942299052783)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/app_100_push_notifications_credentials_2
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(10276964479060019)
,p_name=>'App 100 Push Notifications Credentials (2)'
,p_static_id=>'App_100_Push_Notifications_Credentials_2_'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(9785839534052778)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>46793287363244
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9808319871052833)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9809804624052837)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-dashboard'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9819866231052853)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Customers'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-search'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9847814857053151)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Order Search'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-cards'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9854633505053166)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9880482805053230)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Orders Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-calendar-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9882413208053235)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Employees'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-search'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10247758037059970)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(9792010066052797)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(9786942299052783)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>46793287368105
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10243933190059962)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10244339823059963)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10050:&APP_SESSION.::&DEBUG.:RP,10050:P10050_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'apex_util.feedback_enabled'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(9789593500052791)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10244634826059963)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'About'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(9790055653052791)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10245163695059964)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Help'
,p_list_item_link_target=>'f?p=&APP_ID.:10061:&APP_SESSION.::&DEBUG.::P10061_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(10244634826059963)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(9790055653052791)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10245539676059964)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(10244634826059963)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10245949267059965)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'About Page'
,p_list_item_link_target=>'f?p=&APP_ID.:10060:&APP_SESSION.::&DEBUG.:10060::'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(10244634826059963)
,p_required_patch=>wwv_flow_imp.id(9790055653052791)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10246262548059965)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10276652452060014)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Settings'
,p_list_item_link_target=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-gear'
,p_parent_list_item_id=>wwv_flow_imp.id(10246262548059965)
,p_required_patch=>wwv_flow_imp.id(10270267323060004)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10246778814059966)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(10246262548059965)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10247137512059967)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(10246262548059965)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(10069049004059657)
,p_name=>'Page Navigation'
,p_list_status=>'PUBLIC'
,p_version_scn=>46793287324881
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10069442056059658)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-dashboard'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10069864168059659)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Customers'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-search'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10070219169059659)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Order Search'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-cards'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10070667717059660)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10071065112059660)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Orders Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-calendar-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10071412948059661)
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
 p_id=>wwv_flow_imp.id(10248864479059972)
,p_name=>'Application Configuration'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(9789798026052791)
,p_version_scn=>46793287363466
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10249245523059973)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Configuration Options'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>'Enable or disable application features'
,p_required_patch=>wwv_flow_imp.id(9789798026052791)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_interface
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(10249584552059973)
,p_name=>'User Interface'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(9790128723052791)
,p_version_scn=>46793287363548
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10249984817059974)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:10020::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_imp.id(9790128723052791)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(10250281014059974)
,p_name=>'Activity Reports'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(9789462724052791)
,p_version_scn=>46793287363813
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10250634459059975)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&APP_SESSION.::&DEBUG.:10030::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'View application activity metrics'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10251092577059975)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:10031::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report of page views aggregated by user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10251433245059976)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Application Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:10032::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report of errors logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10251814024059976)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Performance'
,p_list_item_link_target=>'f?p=&APP_ID.:10033:&APP_SESSION.::&DEBUG.:10033::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>'Report of activity and performance by application page'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10252265456059977)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Views'
,p_list_item_link_target=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RR,10034::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report of each page view by user including date of access and elapsed time'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10252631896059977)
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
 p_id=>wwv_flow_imp.id(10252952090059978)
,p_name=>'Access Control'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(9789381899052791)
,p_version_scn=>46793287363922
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10253333009059978)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10041:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10253787653059979)
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
 p_id=>wwv_flow_imp.id(10253924791059979)
,p_name=>'Feedback'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(9789593500052791)
,p_version_scn=>46793287364014
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10254390128059979)
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
 p_id=>wwv_flow_imp.id(10254665999059980)
,p_name=>'Application Administration'
,p_list_status=>'PUBLIC'
,p_version_scn=>46793287364381
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10255068818059980)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Regions'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Manage component'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10255499187059981)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Countries'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Manage component'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10255880094059981)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Warehouses'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Manage component'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10256286020059982)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Products'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Manage component'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10256648575059982)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Jobs'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Manage component'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10257057347059983)
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
 p_id=>wwv_flow_imp.id(10273846852060010)
,p_name=>'User Settings'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(10270267323060004)
,p_version_scn=>46793287367699
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10274235540060011)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Push Notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>'Configure whether you want to receive push notifications on this device.'
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(10269964837060004)
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
 p_id=>wwv_flow_imp.id(9787909972052786)
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
 p_id=>wwv_flow_imp.id(9788275545052787)
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
 p_id=>wwv_flow_imp.id(9788521806052789)
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
 p_id=>wwv_flow_imp.id(9788811803052789)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDD09941DD779D8F9AFDEDA7BA3BBD10B1A3B0112244082101771154591922859B263399222CB8E2D8F57652C3BB113DBE3334E9C78E69C99';
wwv_flow_imp.g_varchar2_table(2) := '93CC92CC1CEF96EC132F896DD952246B8D484994289114C515DC00107B038D06D0FBF2F6DCEF81201B8DAEE575BFA5AAEEBFC9EA7EAFEAD6ADFBFD6EA3EBAB5BCB4B1CF8D4A10A1306FC0EF03BC0EF00BF03FC0ED8F53B9010BE10400001041040C03201';
wwv_flow_imp.g_varchar2_table(3) := '111200EBBA9C801140000104102001E07700010410400001EB0434604600548109010410400001CB0448002CEB70C24500010410B05DE052FC2400971CF88E00020820808055022400567537C12280000208D82E70397E1280CB12FC440001041040C022';
wwv_flow_imp.g_varchar2_table(4) := '0112008B3A9B5011400001046C1778337E1280372D788500020820808035022400D67435812280000208D82EB03C7E1280E51ABC460001041040C0120112004B3A9A3011400001046C17B8327E12802B3D78870002082080801502240056743341228000';
wwv_flow_imp.g_varchar2_table(5) := '0208D82EB0327E12809522BC470001041040C0020112000B3A991011400001046C17B83A7E1280AB4D9883000208208040EC05480062DFC504880002082060BBC06AF19300ACA6C23C041040000104622E400210F30E263C0410400001DB05568F9F0460';
wwv_flow_imp.g_varchar2_table(6) := '7517E6228000020820106B01128058772FC12180000208D82EE0163F09809B0CF311400001041088B10009408C3B97D010400001046C17708F9F04C0DD8625082080000208C456800420B65D4B600820800002B60B78C54F02E0A5C33204104000010462';
wwv_flow_imp.g_varchar2_table(7) := '2A400210D38E252C0410400001DB05BCE32701F0F66129020820800002B11420018865B712140208208080ED027EF19300F809B11C010410400081180A9000C4B053090901041040C07601FFF84900FC8D2881000208208040EC04480062D7A504840002';
wwv_flow_imp.g_varchar2_table(8) := '082060BB4090F849008228510601041040008198099000C4AC43090701041040C0768160F193000473A214020820800002B1122001885577120C0208208080ED0241E32701082A45390410400001046224400210A3CE24140410400001DB0582C74F0210';
wwv_flow_imp.g_varchar2_table(9) := 'DC8A92082080000208C446800420365D49200820800002B60BD4123F09402D5A94450001041040202602240031E948C24000010410B05DA0B6F849006AF3A234020820800002B110200188453712040208208080ED02B5C64F0250AB18E5114000010410';
wwv_flow_imp.g_varchar2_table(10) := '88810009400C3A911010400001046C17A83D7E1280DACD5803010410400081C80B900044BE0B090001041040C07681B5C44F02B01635D641000104104020E202240011EF409A8F0002082060BBC0DAE22701589B1B6B218000020820106901128048771F';
wwv_flow_imp.g_varchar2_table(11) := '8D4700010410B05D60ADF19300AC558EF510400001041088B0000940843B8FA62380000208D82EB0F6F84900D66EC79A0820800002084456800420B25D47C311400001046C17584FFC2400EBD1635D041040000104222A400210D18EA3D90820800002B6';
wwv_flow_imp.g_varchar2_table(12) := '0BAC2F7E1280F5F9B136020820800002911420018864B7D1680410400001DB05D61B3F09C07A05591F010410400081080A900044B0D368320208208080ED02EB8F9F0460FD86D480000208208040E404480022D765341801041040C076817AC44F02500F';
wwv_flow_imp.g_varchar2_table(13) := '45EA400001041040206202240011EB309A8B0002082060BB407DE22701A88F23B520800002082010290112804875178D4500010410B05DA05EF19300D44B927A1040000104108890000940843A8BA62280000208D82E50BFF84900EA67494D0820800002';
wwv_flow_imp.g_varchar2_table(14) := '084446800420325D454311400001046C17A867FC2400F5D4A42E0410400001042222400210918EA2990820800002B60BD4377E1280FA7A521B02082080000291102001884437D1480410400001DB05EA1D3F0940BD45A90F0104104000810808900044A0';
wwv_flow_imp.g_varchar2_table(15) := '9368220208208080ED02F58F9F04A0FEA6D488000208208040E805480042DF45341001041040C0768146C44F02D00855EA44000104104020E402240021EF209A870002082060BB4063E22701688C2BB5228000020820106A01128050770F8D4300010410';
wwv_flow_imp.g_varchar2_table(16) := 'B05DA051F19300344A967A11400001041008B1000940883B87A62180000208D82ED0B8F849001A674BCD0820800002088456800420B45D43C310400001046C176864FC24008DD4A56E041040000104422A400210D28EA1590820800002B60B34367E1280';
wwv_flow_imp.g_varchar2_table(17) := 'C6FA523B020820800002A11420010865B7D0280410400001DB051A1D3F0940A385A91F010410400081100A900084B05368120208208080ED028D8F9F04A0F1C66C01010410400081D009900084AE4B68100208208080ED02CD889F04A019CA6C03010410';
wwv_flow_imp.g_varchar2_table(18) := '4000819009900084AC43680E0208208080ED02CD899F04A039CE6C050104104000815009900084AA3B680C0208208080ED02CD8A9F04A059D26C070104104000811009900084A833680A0208208080ED02CD8B9F04A079D66C09010410400081D0089000';
wwv_flow_imp.g_varchar2_table(19) := '84A62B68080208208080ED02CD8C9F04A099DA6C0B0104104000819008900084A42368060208208080ED02CD8D9F04A0B9DE6C0D0104104000815008900084A21B68040208208080ED02CD8E9F04A0D9E26C0F0104104000811008900084A01368020208';
wwv_flow_imp.g_varchar2_table(20) := '208080ED02CD8F9F04A0F9E66C11010410400081960B9000B4BC0B68000208208080ED02AD889F04A015EA6C13010410400081160B9000B4B803D83C0208208080ED02AD899F04A035EE6C15010410400081960A9000B4949F8D2380000208D82ED0AAF8';
wwv_flow_imp.g_varchar2_table(21) := '49005A25CF7611400001041068A10009400BF1D9340208208080ED02AD8B9F04A075F66C1901041040008196099000B48C9E0D2380000208D82ED0CAF849005AA9CFB611400001041068910009408BE0D92C0208208080ED02AD8D9F04A0B5FE6C1D0104';
wwv_flow_imp.g_varchar2_table(22) := '1040008196089000B4849D8D2280000208D82ED0EAF849005ADD036C7FED0295B2548A79292DCC4871E68214A6CE49FEC298E4274E4A6EFC98E4CE1EBD3499D7F98953D5655A46CB961667ABEBAE7DE3AC89000208445B800420DAFD675DEB2BE592940B';
wwv_flow_imp.g_varchar2_table(23) := '3929CD4F9B1DFA19C99D333BFB7327247FF14C350128CE5E94A259565A9C93D2D2FCA5C9BC2ECE4F892E2B689260CA6A42A0EBE6CF9F96E2DC64B54EADDB3A50024600811609B47EB32400ADEF035A1044C01CEDEBCE3B77F6982C9D3E243973945FDD71';
wwv_flow_imp.g_varchar2_table(24) := 'E71783AC7D5519DDD997CDBA5A872601D53A4DDD9A24E8B2AB5660060208201033011280987568DCC2D19D71616A42164FBD5A3DC2D79D76A362D4BAF51482260385E909D16D376A5BD48B0002760B84217A128030F4026DB84A4077BE7AAE3E3776D8EC';
wwv_flow_imp.g_varchar2_table(25) := 'F8C7A5522A5E55A65133745B85C971C99D3922DA066D4BA3B645BD08208040AB0448005A25CF765D05F4023DBD80AF307956CAC5826BB9462F2817F2D56B0BF2E74E88B6A9D1DBA37E0410B045201C71920084A31F68C5EB02C5B929C99F3B29E5FC9254';
wwv_flow_imp.g_varchar2_table(26) := '2A95D7E7B6F6875E4C989F3855BDF0B0B52D61EB08208040FD044800EA67494DEB1428E815FAE74F991D7F799D35D57F753D0D909B38297A6D40FD6BA7460410B049202CB1920084A5276C6E47A52CF90BA7451380B530F47475C89EED9BE5AEFD7BE4C1';
wwv_flow_imp.g_varchar2_table(27) := 'DB6E92F7DE7940DE7FCF5BE4036FBB557EE4BEDBE4FD771F90F7DCB15F1EB8759FDC79D31ED9B3638BF47677AD655352D06B03CC290193A5AC697D5642000104C222400210969EB0B51D66985FEFE12FCE4ED624D0DFDB23FBAFDD210FDD79B3BCEBD6BD';
wwv_flow_imp.g_varchar2_table(28) := '72CBEE2DB26BA84F366DE89481AE36D9D09E95CE6C5A3A3229D9D0D1261BBB3B64B4AF5B760FF7C92DBB36CB0307F65413855BF6EC14ADCB7124F0973E784847034802029351100104DE1008CF8B44789A424B6C1428CC9C975A76FEED998C1CD8738DBC';
wwv_flow_imp.g_varchar2_table(29) := 'E3C075B27FFB880C76B54B7B3A25C91AF6E05A5693034D14F66E1D96FB4D3270DB0DBBA5ABA33D7017681250983C1BB83C0511400081B00924C2D620DA638F803E84A76086D483449C4A24CC11FF4EF981BBF6CB8D5B87AA3BFD20EB0529D3914ECA9ED1';
wwv_flow_imp.g_varchar2_table(30) := '8DF2DE3B6E921B776D974C2A15643529CC5CE0C2C0405214420081CB0261FA490210A6DEB0A82DE5DCA2142E8C058AB8B7ABB33AD4BF7FFB705D77FC2B379E4D26E4C0CE4DF2904904BADBDB562E5EF5BD3E45B0BC34BFEA326622800002611620010873';
wwv_flow_imp.g_varchar2_table(31) := 'EFC4B46DFA013EB973C7CD2974FFDBFC4606FAE4ED37EF91BE8E6CD3347ADBB3F2D05B6F92C1BE5EDF6D56AA17308E556F5BF42D4C010410B05C205CE1930084AB3FE2DF9AD72FFAD3A7EDF905BB656450EEDEB74B7ADA337E45EBBEBCCD9C16D06B0346';
wwv_flow_imp.g_varchar2_table(32) := '87067CEBD60F272A4E4FF896A300020820102601128030F586056DD187EA9416667D231DDDD827F7DCB0B37A15BF6FE10615D05302F79A0424481250D28F249EABED4E860635DBBB5A93808919B5D0E71A2C9F749EE832EFB5598A0002EB1008DBAA2400';
wwv_flow_imp.g_varchar2_table(33) := '61EB9118B7478FFA835CF4D7D3D126F7ECDB2D69734EBED51C19D3867B6EDC2DBD3DDD9E4DA9989D6771FABC8471275A291644AF53A85E7469462AF4B6CBFCB913A28F5BD6293F71B2FAC8E38269BF96292DCE49A598F78C97850820107D011280E8F761';
wwv_flow_imp.g_varchar2_table(34) := '6422D09D8B7EE29E5783DBB359B967FF1EC99A2178AF72CD5C964D3872DF4DBB25934E7B6EB67A2A2004A300D576CC5C909CD9C92F9D7AE5D2C7278F1FAB5E74A90F5BD2DB2E7524461FB7AC93EEF0755E616ABC5A267FEE78759DA5D3AF56EBD00F44D2';
wwv_flow_imp.g_varchar2_table(35) := '729EC1B31001047C04C2B79804207C7D12CB16E9707329C0CEF1F61BAE9181AEE0F7E3370BABB73D2B77ECDDEDBB39DDC16AACBE05EB5C408FD87547BD3476A47A645F983C2B7A5A423F4CA9A243FE6684A26226BFCD6A99CB937E1892D6A175E54C02B1';
wwv_flow_imp.g_varchar2_table(36) := '54FD64C6094607FC10598E404404480022D251516F6671E6A2E80EC52B8E1D9B8664CB80FF95F75E753472D9F6C15EDF3B03F4344729C0350EF56AA7261BBAE3CF8D1FAF0EE3EB088BB64177E275DB86491CB44E1D05D051021D59D06D8A492CEAB50DEA';
wwv_flow_imp.g_varchar2_table(37) := '4120EE02618C8F04208CBD12C3369516A67DA3DAB76354CC68BB6FB9561638B07B9B393D91F66C42697ECAEC1B4B9E65EAB1503F39B17A0EFFE219935CE5EA5165A03A3411D0EB0896CE1EAB8E3288491002AD482104100895000940A8BA239E8DA9140B';
wwv_flow_imp.g_varchar2_table(38) := '522978EFA0AEDDBE59FA3ADB420F30DCDB29DB370D7AB6531F725469E045747AD4AFCF51C89F3F25BA33F66C4C031796730BD56B04B41DDAA6066E8AAA1188B840389B4F0210CE7E8955AB4A8BB3E620D1FDA13FA944526EDC36129998776F19F2FCDC00';
wwv_flow_imp.g_varchar2_table(39) := 'DD19EA55F78D08A89C5B34E7F8F5C8DBFF56CA466C7FB53A8BF3D3923B73A4A5C9C86AED621E0208780B900078FBB074BD026678B86476105ED50CF6F7563FB9CFAB4C9896F577B4C9A68D7D9E4D2A2D2D782E5FCB4275CC4F9C303BDAC5B5ACDED075CA';
wwv_flow_imp.g_varchar2_table(40) := '85BCE4C68F556F376CE886A81C81080A84B5C9240061ED9998B4AB7AF198396A750B279548C80E9F2175B7755B397FD4242D5EDBAF1496CC8E7AC9AB48F06526892AE8FDFBE74F8B5ED51F7C4511F5ED68CBCAEED141B977DF35F2D0ADD7CB0FDDB1573E';
wwv_flow_imp.g_varchar2_table(41) := '78EF7EF9E87D07E4C7DE7E403EFCB69BE4FD6FDD2BEF7CCB1EB97BEF35B267EB8874B6B755D7951ABEB4AF350928CEE8F310CA35AC49510410688540A2151B659BF60854AF4AF7B85ABCC31C4D6FECE98C1CC88069B3EE5CDD1A5E29164C025087237563';
wwv_flow_imp.g_varchar2_table(42) := 'A717DC1526C7CD6994E03BD54C2A2577DCB05D7EE28103F2EB3F74877CECBEBDF29E9BB6CA155899DE0000100049444154DBAE1D96B7EE1C94035BFA64EF68AFDCB0A957F66FEE973BAF1994FBF78CC80FECDF2AFFF49E3DF22FDF7FBBFCD8FD07E4F63D';
wwv_flow_imp.g_varchar2_table(43) := 'DBABC9805B9C2BE7EBDD07F98B67AB77249806AF5CCC7B042C14086FC82400E1ED9B58B4AC9CF7BEF8AFAFAB4B7A5BF0ACFFF5E2EA838ABC1E11AC3BC24A7EFD230085A90929CE5E0CDCDC0D9DEDF2BEDBF7CAAFFCE01DF28337EF906B36764B720DB756';
wwv_flow_imp.g_varchar2_table(44) := 'E85318AF1DEA967FF4961DF2ABEFBBBD3A42D0DFDD11B81DC5D949294C8D072E4F41041068BE000940F3CDEDDA62B9E8196F7F6F97E7F2B02E4C388E0CF99C06A875B87E65ACFAE4C4E2CC8595B3577DAF43F6F7EEDB291F7FF72D72D7AE41E9CAA6562D';
wwv_flow_imp.g_varchar2_table(45) := 'B796999954A23A42A0753F78E05AE930A71482D4A36DD7EB168294A50C02711508735C240061EE9D18B4AD52F61EB6EE0CB833091B85631AD4DD9E35DF3DFE2FAFFD59007AEA24E8B0FFB6A17EF9F03DFBCC10FF36E9CCD66FC7BF32B2F67452DE71FDA8';
wwv_flow_imp.g_varchar2_table(46) := '7CE8EE7D32BA71C3CAC557BDD75190BC5EB7E0730BE8552B320301049A224002D014663B37A2E7C1F59638AFE893C9E8FE0AB6A553A223016EF1E90ED06D99D77C35D30FEBD18BEABCCAE9B29B766E968FDE7383ECDAD8BC91143D35F04FEFDD2B7BB60E';
wwv_flow_imp.g_varchar2_table(47) := '69133CA78A5EC370EE84E8EF8267411622104B81700715DDBFBEE176A57546407764E273149C4E44F757B03D9316C7D1B10013EC6AFF9B9DDF6AB3FDE61526CF4A90D307EFD87FADFC933B76D775B8DFAF6D979777B7A5E5C7EFBE5EEE376DB83CCFEDA7';
wwv_flow_imp.g_varchar2_table(48) := '7E38915EC8E8B69CF90820D01A81E8FEF56D8D175BAD49A022FAC7DF6D9564222189088F00E885728E386EE199F96659C5FD0148A6C055FFEB27F395E6FC1F9B7CDF4DBBE4C1BDA357ADDFCC198EE3C883376C9207DE72BDEF66F5C1481A9B6FC1B01430';
wwv_flow_imp.g_varchar2_table(49) := 'C99B26B03A89791D9666D18E680984BDB589B03790F64559C011C7ECE4DD22A8E8CE5127B702219F7FE9EA069F1DBCE3048E427736C5D90B52F1D9E11CD8B5D5EC783707AEB791051DC7917B760DCA81DD5B3C37538D6D7AC2B34CB3176A9BF4C98A7AB1';
wwv_flow_imp.g_varchar2_table(50) := '6561725CF47A05FDA0237D96817ECE817ECE824E4B678E8AFED4655AA6604668741DBD4E43EB6876BBD91E02F5122001A89724F55C25E02492E2A43257CDBF3CA36C76FE459F8B042F970DE3CF62B1249EBB7FB373ACA5DDA5B929F1FB24C1EDC3FDF2D0';
wwv_flow_imp.g_varchar2_table(51) := '4DDBD6746B5F2D6DA9A56C36959077EFDB26A31BFB3C572B2DCD4BCBEF0A30C95539BF247A8742FEFC29D19D7DFEFC69D1072DE94EBDB430233A5251CE2D8896BB342D4AB5ED669996294C9FBF942C9C3D667E9E92E2EC45A98E7499DF674F00165A2610';
wwv_flow_imp.g_varchar2_table(52) := 'FE704900C2DF47D16DA139FA7712DE57A5EB4E34AA01E68A4573B4EE9E02384EF0A37F313BA6C2D4394F0ABDEBE003B7EF91EE366F53CF4A1AB4B0A73D2D1FBEEB7A694FA73DB7E017A3E7CAEB596876CEBAA3D6A3F9A5B1C3D507159516660DFBDAEFD4';
wwv_flow_imp.g_varchar2_table(53) := 'D0A37FAD237F614C964E1FAA2613FA098D62B6B59EA6B22E02CD1220016896B485DBB93402E0BD432896DD77A061275BCA17454731DCDAE92483EFA88BB393A23B14B7BA74FE3BDF72AD6CEC721F51D132AD9C367666E4ED375FE3D9043D526EEA288049';
wwv_flow_imp.g_varchar2_table(54) := 'AC8AE6087D69EC90E88E5A87ED3D1BB88E853A4A9037A30ABA2D1D29301DBA8EDA5835EA0251683F0940147A29C26D749249CFD6CFCCD7E171B99E5B68DCC28BB33E6D37A740826EBDBAC3F028DCD3D12607B6F47B9408C7A25BB70FCA80CFC39D7487DC';
wwv_flow_imp.g_varchar2_table(55) := 'F09DA3D9F16BA2B13476440A17CF9821FA7CD380CA85BC147454E0CC6BD5531E7E895DD31AC6861058214002B00284B7F5157092DE23001767E7EABBC126D5562C9765FCE294E7D69C9477EC9757D6FBFD2B3E0FCBB975F7D6509DF7BFDCF6953FDBD349';
wwv_flow_imp.g_varchar2_table(56) := 'D9BB6D78E5EC2BDE57CFAF9B9DE41533EBF8A69C5B94DCC429D1A3711D71A8B460485EB7A9D70FE4264E5E6A47AEFE9F0E594732AAAABB40342A240188463F45B6954EDA7BC87A767E41A616D6FFCCFC66032D154A3231E97EBB9E934C4922D31EA8597A';
wwv_flow_imp.g_varchar2_table(57) := 'D199EE30DC0AEBB9FF3B760DB92D0EDDFC03DB36CA86AE0ED77669ACBA73742DB08E057AD49F3B775C4A0B33A2DB594755755BB5B4302BB971D3A679F7DF97BA6D8C8A10A8418004A0062C8AD62EE0A43292F038125E5CCCCBC44CF48E8E2666E6A55872';
wwv_flow_imp.g_varchar2_table(58) := 'BF80AC1A773AEB0FA643D56667E55570F7E6E1963CECC7AB4D5ECB063BB3B26378C0AB889417CDC84F9D8FCCF5D4821E71EB888AE7C63D16EA759B995442BADAB2B2B1BB43067B3A4413B04CCAFB5496F87CE969006D9BB6D1A7288B63201095104800A2';
wwv_flow_imp.g_varchar2_table(59) := 'D253116DA7E3242491ED746D7DB15C92739333AECBC3BA60DCA7CD894C561C8FC4E7725C1593445477869767ACF273C750EF2A73C33B2B917064DF169F0420BF68CECB7B7F52642D1116A626442FF2AB651D2DDB9149CB1DD76E96DF78FFEDF2973FFB0E';
wwv_flow_imp.g_varchar2_table(60) := 'F9CA2F3D245FFEC4BBE41FFEE777C8A77FEE3EF9DB9FBD4F3EFFF1FBE54B9F7850BEF2CBEF92BFF89907E4D7DF7F9BBC75F766D1D31D5A472D93B6B1A0777BD439F9A9A50D9445E0B20009C065097E3646C01C52253BBA3DEB3E7B7E524A11BA1B606A21';
wwv_flow_imp.g_varchar2_table(61) := '27DA66AFA0BC929EE5EB558A7933547DE99142CBE75F7E3DB8A14BB66C704FA02E970BDBCF6173E49C4DA55C9B553D37EF73DD83EBCA2B1614CCCEBF50E3470F6F1BE8911FBF67AFFCC9C7DE26FFEF0FDF243F7160480E0C77C8E6EE940C77A664B03DF9';
wwv_flow_imp.g_varchar2_table(62) := 'E6D4919291CEB46CE9CEC85B46DAE5270F0CCB7FFCC07EF9E4C7DE2E3F79DF3ED9BAB167458BBCDF164C02A0937729964657203A2D4F44A7A9B434AA0289B64E71CC48805BFB17733979F6D819B7C5A19B7FF4DCA4CC2DB8DF01E0388E24326D12E44B77';
wwv_flow_imp.g_varchar2_table(63) := '845EE536F5F7CA704FD6AB48289775B725E5BAADC39E6DAB940A9ECB832CD407F8D4B2F3D7A1FC8F3F78B3FCD18FDD29BFF98E9D72F350BBF466934136754599DE6C426E1E6E975FBF6F87FCE18FDE293FFFC07E332290BEA28CD79B4BED0ED79311BDDA';
wwv_flow_imp.g_varchar2_table(64) := 'CBB2780A9000C4B35F4315955E10E7371CFEEAB1D3329F2F86AADDAB3566727E490E9F185B6DD11BF312ED5DE217EFE5C27A0AE0F2EBD57E6EDBD8BBDAECD0CF4B271372DDA8F76D8B95D2FAFA5B2FF82B4C8E07B24899F67CF8AE3DF2C55F7C503E71D7';
wwv_flow_imp.g_varchar2_table(65) := '16D9DA137C67EDB781EDBD69F9E5BBB7CA67FFD93BE4076FBD56745B7EEBE8724D5C4A3ED77F6839A6680944A9B5240051EAAD08B735D9B9C1B3F5C572495E3919EC8FB967450D5EF8D2C97392CB7BDF539E6CEF167D0852A0A654DC2F24D4F507BA828D';
wwv_flow_imp.g_varchar2_table(66) := '2468D9B04D43DDDE6DAF14D79E005CBAD5EF64A090770EF5CA5FFEF4FDF2DB0FEE964D5DF5DBF1CB8AAF2DDD69F93FDF7B9D7CEAA7EE974D7D5D2B96AEFE367FFEB434F2E144AB6F95B9085C122001B8E4C0F7060BA4BAFB2491F61ECA7EF5F8989CBA38';
wwv_flow_imp.g_varchar2_table(67) := 'DBE096ACBDFAB3D38B7262CC3B49D1D18E6467F0A3F64AC93B01D021EBB5B7B8B56BB6A7539E0DA8F8243F6E2BEB7513F9F3A7DC165F31FFDE3D5BE40F7EF40EB9D10CF55FB1A0816F6E1D69973FFB897BE4AEEBB6F86E45EF0EC89F1F138DC9B7300522';
wwv_flow_imp.g_varchar2_table(68) := '2010AD26920044ABBF22DB5ADD316A12E015808E023C73F8845C0CE1D301E7730579F4991745DBE81543BA7730F8D1BFA9A852763F0A761C1133726D4A45F3FF54C2F16E78D9FDE247D7152B65294C4D88DFB51349B3ED1FBB7BAFFC877F7493E891B96B';
wwv_flow_imp.g_varchar2_table(69) := '7D0D5AB0A53B25FFE90337C93FB9F37A4925BCFFCCEA08805E132026B60635876A115855C0FB3773D5559889C0DA04925D661420EBFE8018AD756A6656BE7FE8A4E44A6BD83968050D98160B45F9E673872457F0BE68ED5292D31FBC057A2B98C74E30A9';
wwv_flow_imp.g_varchar2_table(70) := '174E46F7A312249974249970FF13537D508F1A48F0AFD2C2ACF83D36596BFBE05BF7C86F3EB0537A32EEDBD7728D9C3AD309F9D7EFDC2DFFF8CEEB7C37539C9D148DCDB72005422D10B5C6B5EE5F47D4A468EFBA05F4BC78BA67C0B79EB3E72FCAE32F1D';
wwv_flow_imp.g_varchar2_table(71) := '951AF70DBEF5AEA5803EF2F79BCF1E920BD3DECF2A701C47D27D2322E6A7D4E9AB6C001CC7E728BA4EDB6A44350993C05477F22E953B4E6DB155CA2573F4EFFD8989BAA9FB6FD82AFFF2ED3BA5B6DA75CDFA4F8E54E4D7EFDB290FECDB2E7E5F7A51A030';
wwv_flow_imp.g_varchar2_table(72) := '0AE0C7C4F23A0A9000D41193AAFC05F40AF9645BA76FC1136727E491E75E151D7AF72DDCA0027AE4FFC833AFCAC494FF235C13666423D5D9535B4B7407E87184AC0940C1E71A81DA36D8DCD2FAB8648DC173AB6AE059E0CD85A5B949DF73E5B7EC18917F';
wwv_flow_imp.g_varchar2_table(73) := 'FBDE7DA247DF6FAED9DA576DA984FCF67BAE971BB60C7A36A4522C4891C7057B1A857B61F45A470210BD3E8B748BABA300FD23E298A343BF40C6262ECAB79E3F2C1373EEF7DCFBD5B1D6E517E797E4AB4FBDE8FB813F5ABF934C49CA9CFB97003169F9E5';
wwv_flow_imp.g_varchar2_table(74) := '93E32497BFBDEA75A114DD7300F339F7EB1BAA817A243FD5E5CBBF99D190E2EC45F11A51D0DBEF7EEB076E94C10E6FD3E5D536EBF5C6F694FCFB0F1C904CCABD6D1A5B717A424C90CD6A16DBB15C8004C0F25F8056849FC8B49BE1F261711CFF415A3DFA';
wwv_flow_imp.g_varchar2_table(75) := 'FED6332FCBD109EF4FDEAB571CFA40C2E3E7A7E5AB4F1E9499B9609F5190EE1B96647BB0DBBE56B6D3EFE3927345EFBB0456D617A6F773799F6B267C929FE5B114E7A7A4ECF309821FB9EB7AD9D3EF7DA7C9F23A9BFDFA9ADE8CFCD0ADBB3D37AB319678';
wwv_flow_imp.g_varchar2_table(76) := '3680A751581746B15D240051ECB518B439D53320A99E8D8122995FCAC9B79F7D59BEFDE2B1869E12985BCACB775E3A2A8F3EF39214CC706C90C6A5370C4BAAAB2F48D1D5CB98D183D5175C9A3BE777147DA95828BFCF2EF9240049F7A3E12B02D2A3FF99';
wwv_flow_imp.g_varchar2_table(77) := '0B57CC5AF9266DEAFAD86D5B57CE0EDDFB9FB963BBE8E70F78354C473A846B01BC885856270112803A41524DED02E90D4392EA0E7ED5FCD1B1B3F20F8F3F2FCF1F1F9792D929D4BEC5D5D7C897CAA6CEB3F2B9C79E91A33EF7F92FAF4177FCE90D83CB67';
wwv_flow_imp.g_varchar2_table(78) := 'D5FC5A4F8978AD34313DEFB538B4CB2A6628E5CCE49C77FB7C929FCB2B574A45A9F87C6EC03FBEE35A19EDF27EEEC0E5FA5AF9735B4F5A7EF836EF5180D2D2BC54227CED472B7D5BB7ED686E9904209AFD168F569B53003A7CAE3BD2A001E5F37979F6D0';
wwv_flow_imp.g_varchar2_table(79) := '51F9C21307E5F913E372DAEC64D672A1A00EAD9F999A97A78E9C922F3FFE9CA9F398943C6EC95BD93E4D5C321B37AF9C5DF3FB44C6FB6979A7CCE988E945EF23E99A37DA841566CCC8C5D1B3DE47ED895426504BCAB905D1F3E36E85077B3BE4A36FF17F';
wwv_flow_imp.g_varchar2_table(80) := 'E88EDBFACD9EFF81FDA332D8DBE9B9598DD9B3000B11A8830009401D10A962ED027A049CEE1F9174EFC640D7045CDED2F4EC9C3CFBEAD1EAA981479F3F2C4FBC7A525E1DBB507D92E0D8E4AC8C9B23E789D945D1E9ECCC828C4DCDC909B333D5324F1D3E';
wwv_flow_imp.g_varchar2_table(81) := '255F7FF6907CCB9C5678E9E829995E58BA5C6DA09FDAD64CFFA64065FD0A396627A8066EE54E9F9F94D32651715B1ED6F967668CFD94FB531DF5A9908E4FF2538DCD0C859716DCEBD132B7EE1C91DD7DE13DF7AF6D5C3EEDDBD82677ECF6FEFD292D9AD1';
wwv_flow_imp.g_varchar2_table(82) := '1313FBF2F5781D5E81A8B68C0420AA3D17A376EB0E50EFA14F0F8C8ABEAE25B47CB128E7A7A6E5D513A7E589170FC9D7BF7F501E7EEAA07CF5C9E7CD91FDB3F295279E95FFFEC473F2F0F75E906F9A73FB5AE6A563A7646272CAF7C13EABB543472CB4AD';
wwv_flow_imp.g_varchar2_table(83) := '265B596D71CDF39C4442FC2E203C74B6391740D6DC788F155E3D73D163A988DE36A949806721B3B06286FF4B4BDE03BEAE00001000494441546667685EBBFD7FEFAE61B745A19DFFB65D439E6D2B9B98CB01AF43F1AC8885087808900078E0B0A8B9027A';
wwv_flow_imp.g_varchar2_table(84) := '2A203BB2539C80E78683B4AE5E970A689BDA365D63462AD677CEFFAA363B2601E8E8B96AF6F2192F9A531D334B3EB7D42D5FA1C5AF2FCEE7E5886F02D01EA895E542DE9C0F778F5D3F2DF1A611EFE1F4401B6A72A1BD439D32BCC1FDCE11DDF9577CAE7B';
wwv_flow_imp.g_varchar2_table(85) := '10BE422210DD66900044B7EF62D9723D27DE36BA5BF473031CB3730C43907ABE5F77FE7AD4DA88F6E8C391BC629D5F5C92C70E9F6DC4A61B52E71347CFC98569F7617B8D3511E06150DAB872CEFB1910FBB70DCA68033FE14FDBD08869A433250776F88C';
wwv_flow_imp.g_varchar2_table(86) := '02E46B3B35D588765267BC054800E2DDBF918C4E8FB633FDA3923547DC3A3CEE384ED3E3701C47926627951DDE217ABE5FCFD54B83BE9C44D20C897B1F113FF9CA0989C22D81E7CDD1FF73AF9DF694D28427E805809592F70590378E6E08D553FF3C035F';
wwv_flow_imp.g_varchar2_table(87) := 'B6509F54B87F73DFB23957BFF48BFDEA3598D30A81286F3311E5C6D3F6180B981DB08E066487B6571F1A944807BB62BC1E2289545AF47A84CCD036D104444C5BEA51AF571D3ACAE0B55C3F88E8EB2F9F967239DC4F067CF8E03199F1B9A8B2FA7910414D';
wwv_flow_imp.g_varchar2_table(88) := '7DCEE16CDBE09D387999B67AD9F63E9FB687BCAF5BEDC7F6D72F4002B07E436A68A480D951E80383B223E6FC7BCF80E8E840A336A775A77B0725ABA720BAFA448FCC1BB5AD95F5263B7A44138F95F397BFD7518023E7BD2F885B5EBED9AF5F3E332DCFBD';
wwv_flow_imp.g_varchar2_table(89) := '76C673B3894CBB041DFED78A2A65EF2721F6B685FFDE7F8D63B5A9BF3DBDDAEC37E655B80BE00D8BF0BE8876CB4800A2DD7FD6B4BEBA73EEDF24ED5BF6889E8F4FF76E947A8C0AE84E57EBD23AB56EBDCABF993BFE373AD071CC48C788196C703FDDA1CF';
wwv_flow_imp.g_varchar2_table(90) := '29F8EC132FCBD999F09D1B3E35B9289FFEEE8B6F84E3F622DD37E4B668F5F93E09405B2ABA7FC236B425578FF9F25C9FD82F17E327026B1588EEBF9EB546CC7AD116303B4ABD184F6FC5CB6EDA257AC1A09EA3D76165BD7030D5B941F4685A87EEF51C7E';
wwv_flow_imp.g_varchar2_table(91) := '75EAE8AECED3655A4677F8E90DC32691D8553DDAD7BAB44EB3F76DA94DD2B433D1DEEDD986A9B905F9DC5387653EEF7E65BC67050D5838B558902F3C7D58167379CFDA35BEA44F7C5754E033FC9F4A26C4FC7FC52A517A934C2424617E9F3DDBEC63E0B9';
wwv_flow_imp.g_varchar2_table(92) := '2E0B1B2E10F50D900044BD072D6EBFA317CF65DA443F57206D460732039B2533B845B2E6DCBD5EBCF7C634B4BD3A4F976919DDE1A7370C4A22DB2E5A4768089D44A0BB1F8E8F5F90CF3C7544F471BBD2E2AF5CB12C5F3D784A4E9CF3BEEF5F9D53DD03F5';
wwv_flow_imp.g_varchar2_table(93) := '6D6DF57208F71193FA6EAC01B599F6FB26004E84E36B001955D6578004A0BE9ED4162601FDE3A95398DAE4D3163D424E766DF02925F2D2F1B3F25F9E382CA5B26FD18615D0C729FFB7A78FCAB3874FF86EA31A57AD9F98A87D678E92DD2A2F96CB52CFCF';
wwv_flow_imp.g_varchar2_table(94) := '8470DB4EA3E6EB357E1A836BFD1EB1BBAEC382260A447F532400D1EF4322889940BA6F58F4DA04BFB00E1E1B933F78F839995CF0BE55CEAF9EB52CBF309793DFFBEA33F2EC9153BEAB27CC284D7A60936FB9D50A384E72B5D96FCCCB15CD61F41BEFA2F5';
wwv_flow_imp.g_varchar2_table(95) := '6236EF7D81A3634684A21511AD8D9A000940D47A8CF6C65E4087CB3383DB447FFA053B767E523EF9C8337270AC798F0B7E716C5AFEF8E167E4FCB4FF1D09BA13CB6CDC1C289655634D78FF899A5CF4BEEE60D53A4332F3DCBC4FDB7D620F4918D636230E';
wwv_flow_imp.g_varchar2_table(96) := '817BFFEB8A4384C480400405F4FA84F48621711CFF73C093B30BF299EFBE245F31E7E22F2CE4A5D2800BC7B44E1D69F8D2F327E5EFBF7B50667DEEF55772C771243D302A894CBBBE5DD3E497049D980CDF1D1141033D7E71C1B3A89388EE2D8E9E81B130';
wwv_flow_imp.g_varchar2_table(97) := '34022400A1E90A1A82C095027A716390EB0174ADC57C5EBEF9FC11F9E4D79E912FBD705A4E4F2D48B1B4FEE1F162A92CE7667326B918934F7DFD59F9D6C1D764311FEC9443B2AB4F5201AE67D0F6BB4D4ECAFB5EF917CF4CC962044F032C9836FB8DDAF8';
wwv_flow_imp.g_varchar2_table(98) := 'C5EE66C6FC6608C4631B2400F1E847A288A9803E12596F9F0B1ADEF4FCA27CFBE011F9BD2F3D297FF5DD57E43BAF4DC80533D45CD62BCE0256A247FBE3334BF29D23E7E42F1E7B597EF78B4FC8A32F1C968B33F3016B104998F3FE99FE91C0E5DD0A267C';
wwv_flow_imp.g_varchar2_table(99) := '460F9E3E3121A7677D86D2DD2A6FE1FCF1B9827CEFA8FBE73B384E4212E96C0B5BC8A66D102001B0A197C318A30E5357A7B2883EF12C929339C2D6181AE96B86D1B383DBCC91745FCD5B79E5E4B8FCC3132FCAFFF3B9EFC87FF8FC13D59DB9DEB2F7E4B1';
wwv_flow_imp.g_varchar2_table(100) := '0B72786256F453FBA6170BD5D74F1E3B2F5F7AFE84FCD9B75E92FFEB1FBE27FFDF171E977F78F22539747A423CAF545FA555FAAC05FD5447313BB15516D7344B8F82BD7684A7CE4FCB910BDE43E9356DB049858F4D2DCAB969F784CA310994936ADEE3AF';
wwv_flow_imp.g_varchar2_table(101) := '9B14766C361397404800E2D293218EA352CC4B71E6BCE4274ECAD299D764E9F421593CF58A2C9E7C59164F44797A493486A5B1C3923B775C0A9367A5383729E5A57993D3785FE15D5377398E64CCB9747D80911E19D6B4EEEB85F5F9FC2F9D18976F98D3';
wwv_flow_imp.g_varchar2_table(102) := '045F78F265F9EB6F1FAC5E3CF8278F3C6B5EBF205F78F21533BC7F540E9D3A2753736BDBA16ADBB49D99FE4DE277EEFEF566F9FED07AFC4640BE7178C2B79EB01578F4B50B9E4D4AEA332A7C4E7F7856C042040208240294A10802350B548A85EACE5077';
wwv_flow_imp.g_varchar2_table(103) := 'FAB9B347CDCE715C8AF3D352CE2D48B990934AA958DD4956CC917FA4A77249CAF925292DCC4A61FABC142E9C919C49747226D1D1B84B8BB39746386A165CB182E3883EC048AFA84FA4D777645830F60B4B39B3A35FAC0EEB2F2CE545E7ADD8624D6FF5B6';
wwv_flow_imp.g_varchar2_table(104) := 'C5CCD0564975F78BD4E1C85F2E7F398E24DABAC4EBEB89D7C6E5CC5C789E8CE8D5565D7662A620DF3D7C465FBA4E7E4F84745D91054D1088CF264800E2D397A188A4627688C5D98B923BFB9AE4CF9FBEB4D337C940A5D143E5A188DEECEB35A1313B584D';
wwv_flow_imp.g_varchar2_table(105) := '724A662420377EDC2404A7444705EAD1C46467AF6406B74AB2ADB31ED5D5A50E3D4F9F31A729F4613F75A97045257A4784E3382BE6BEF976ECE28CFCCD73EEE7D3DF2C198E577FF7FC593976CEFDB64DC771446316BE1068B000094083816DAABE6886BF';
wwv_flow_imp.g_varchar2_table(106) := '7366383C7F614CCA66A76F53EC5EB196166664C98C822C8D1D91EA888057E100CB7487ABE7D8B3261148B4F042B144A64DB40D6DA3BB1ABAC3D2D300896C87A7CC5F7CE76599CED5F1B48BE7D6D6BEF0C26249FEECD1839E15E8A725EAE914CF422C6C99';
wwv_flow_imp.g_varchar2_table(107) := '409C364C0210A7DE6C512C7AD4AFE7BFF5889F1DBF7B2794F38B923F775272E3C7444F91B8970CB6444703DA365F2BD9E1ED4D1D1148B6775DDAF16FDA25DA8660AD5D5FA9EAA9058F2A661773F2FB4FF83F95D0A38AA62CFAFF1F3B26FA0865AF8DE9ED';
wwv_flow_imp.g_varchar2_table(108) := '9F624601BCCAB00C817A089000D443D1E23A74A83B6786B9F5FCB7C50C8143AF985304A5C539C99D3B216A1778458F82C9F66EC90C6D93B6919DA29F7858EF5101C771AAB7A469DD9A6C544F41985311CDDC4969A291F0B925F0CF1F7D519E195F94B07E';
wwv_flow_imp.g_varchar2_table(109) := 'BD7461493EFDC4AB9ECD4B985115ED4FCF422C6CA140BC364D0210AFFE6C6A34C5B929C999616DBDB0AFA91B8EC1C67434402F14ACC74880725487C9DB3A2533B8A59A0C64366EB9940CA4D2A2CB1CC7FD1CBAAEBF7C721C47749D443A63EAE895F4C0E6';
wwv_flow_imp.g_varchar2_table(110) := 'EA2883D6AD3B275DB6BC7CB35E5FBA0BC271DD5CA95C96DFF9C2B3726A36D8838A5C2B6AC082B1B9A2FCC667BE2FFA6025B7EA1DC79174EFA0DB62E6235077011280BA93DA51A15EE857B87846F488B6D688CDDF39D18F41D529997024CA53C20463FE5F';
wwv_flow_imp.g_varchar2_table(111) := 'D3C1B09E3A591A3B2CE55C7D8F5A13E9ACE813F87487DDB6F93A93146C95D48621D161F4A419BE4F9823E984D9B93B89A4E8A4AFF51CBBDE6EA7F7F0A77A87CC3A5BA46DF45AF3D3ACDBB541C2704F7AB2A3471CD376F1F87AE9F405F9DFBFF4A2CCE4CB';
wwv_flow_imp.g_varchar2_table(112) := '1EA59ABB48AF4DF8D75F78410E9D99F4DCB063FA4D63F42CC4C2960AC46DE3240071EBD126C4A33BACC2E4B8E80E2CE8E6D2C9A46C1EE891DB766F91771FB8567EE8AD37C887EED95F9D3E78CFCD12CD69BFFCC8DDFBE57DB75D2FEFB8F11A79EBEECD72';
wwv_flow_imp.g_varchar2_table(113) := 'DDC806E9C8A482B2540DF313E67440BE41CFB4771CD19D7EDA1C59EA3DFAD9A1EDD2B6E99AEACEBD7DEBF5D2BE754FF5B59E3EC80E6E938C39DA4F6F1834EB74CB9AB21A69E0978925D3376C9A95F0DCC8375E3925FFC7C347A454C3D30F3D2B5CC7C2A2';
wwv_flow_imp.g_varchar2_table(114) := '69C3EF7CF5903CF6EA69CF5A1CC711FD1448139C67391622504F01EF7F49F5DC1275C542A052CC8BEEB082EEFCFB3ADBE52D7BAE91F7DF7D40EE3BB057AEDFB145060706A4ABBB47D26DED92CAB64B3ADB16D1A95DDADADB6543EF06191D1E92EB766C95';
wwv_flow_imp.g_varchar2_table(115) := 'DB6EBC5EDE77D7CD72E7F5DB6563675BA0BFE77AE1A49A36E517C4EC68AA8D7AE3A7F913F0C66BA7294D58CF4674A422D5D3EF5BC5679F7A557EED8BAFC8C5A5D6DD19309D2BCBAF7EFE65F9E2B3477CDB9BEA1990A4CFF30E7C2BA1408305E257BDF9D7';
wwv_flow_imp.g_varchar2_table(116) := '1FBFA088A8410295B21426CF05BAC5AF2D939603D7EE9077DCB64FF66D1D92CE6C5A92E1DFBFC87ABFF41F54369D96DD5B3699D86F927BF65E634604D2BED5960B7929CD4FFB96B3BE804956523D1B4513012F0B7DECC4179F3E22FFFCEF9F93D726735E';
wwv_flow_imp.g_varchar2_table(117) := '451BB2ECF84C5E7EE16F9E96AF3EF79A685BBC36A2B1684CD5C4CCAB20CB10A8B380FEBDAA7395541757013DEF5F9C777F80C9E5B8DBB35979DBFE3D72E3F611E948A72ECFB6EE67369D941D9B86E45DB75E2F3DED6DBEF117A6C6454C92E55BD0F2024E';
wwv_flow_imp.g_varchar2_table(118) := '32654E558C9AFDA5FF9FAFEF1D19934FFCED53F2E4D87CD3D49E1E5F905FF8AB27E4D963FE0F27729C84896593684C4D6B201B5A93401C57F2FF1714C7A889A966011DF2D7A37FBF153BBBBAE59DB7DF28C31BBAFC8A5AB3BCBBB353DE75DB5EE9EDEAF0';
wwv_flow_imp.g_varchar2_table(119) := '8C59470134C9F22CC4C2AA4022D326E981D1EA6BBF6F47C727E5639FFABAFCDA175E11BD1ADFAFFC5A976BDDBFFE8557E5C7FFF811393E116C34476348F85CD8B8D6F6B01E027E0224007E422CAF0A14A7CE89DF15FF6DD98CDCB7FF3AE96DF31FF2AE56';
wwv_flow_imp.g_varchar2_table(120) := '6AD1B77663F37663D3D3E13D12A009805E676111CD9A43D53B1DF4E2C62015E830FCE7BF7F58DEFD1FBF22BFF5D5C3A2F7E407592F489917CF2FC96F7EF9903CF49FBE2A9FFBFE21F3EF24C85A22E9DE8DA231042B4DA9D60AC473EB8978864554F514D0';
wwv_flow_imp.g_varchar2_table(121) := '0FEE29CE7ADFC2944AA5E5D67D7B64A0839DBF9BBDEEFCEFBC61A7DBE2EAFC4BA300DED6D5827CAB0AA47427DAB9A1FA3AC8B7B2C9043EFDF82BF2737FFE1DF9C5CF1C94FFF2FC843C7D76B1A68B052797CAF2FDB30BF257CF9F934F983A7EFECF1F93CF';
wwv_flow_imp.g_varchar2_table(122) := '3CF9AA94CAC16F3DD4872AA57A078334993208344C8004A061B4F1A9B8343F658E6ABCFFB8EDD9B54376F677C627E8064532D4D72B5B47367AD65E9CB920FAB4C04AB1207AEA25CA9309C033D6F52ED4E718A40736558FA66BA9EBC2EC823CFCC231F977';
wwv_flow_imp.g_varchar2_table(123) := '9F7D42FED95F3E26BFF6DF9E977FFFADE3F2E9972EC833E61CBE1ED5BF7A3127AF5CC8C9C18925F9C6F119F99B83E7E5FFFED609F98DCFBF20BFF857DF95DFF9EC93F23553C785B9DA9EE3A0CF63D0366BDB6B6933655B2710D72D9300C4B567EB1897DE';
wwv_flow_imp.g_varchar2_table(124) := 'F7EF555D4F4F8FEC1DEDF32AC2B26502B75FB7431249F78B23F5544BFEDC71593A734472119F96C68E884EB9F16392BF705A0AD3131B5472A60000100049444154D5BB1DAABF5375BAE05177A4E9BE11496F185EA61CFCE5F4C252F53EFD4F7DFD05F9AD';
wwv_flow_imp.g_varchar2_table(125) := '4F7F573EFA478FC8077FFF6B667A583EF48766FA83AFC9C7FFF3A3F26FFEFE71F9E3AF3F2F8FBE7C52A6E66BDBE95F6E8DB63133302ADAE6CBF3F88940AB0448005A251F91EDEA236B75F26AEEBE1DA3924DF2ABE465B47C59472629DB06BD87AD2B66A8';
wwv_flow_imp.g_varchar2_table(126) := '5A4FBDE82981684F39D1DF1F1DD1D0D348FA00A9DCC449C99904273771AA9A0C888975B9CF5A5FA7370C4A76689BD4EB8AFAA219D2F77A746F2DEDD43669DBB48DB5AC47D93008C4B70DFCD58E6FDFD625B2727EC9F393EBD2E9B46CDDE8BD33AB4B4362';
wwv_flow_imp.g_varchar2_table(127) := '52C97CB1222F8DCFCAA9A9B51D41C6844134B9292DCC8826034B6387455FD723367D946E767887E83976C771EA51E5BAEA701C47525D7D92D54F6CECE859575DAC8C40BD054800EA2D1AB3FA74A8568F46DDC2DAB4B15F32FC16B9F1BC31BF5411397C61';
wwv_flow_imp.g_varchar2_table(128) := '5E1E79EE883CF5FC8B525C9A7F6399ED2FF45311F5D311AB89803E0C699DA706129936C96C1C95CCD07649B6758AE3343F11709C84E823983519C90C6C9204B7FA45F6D73CCE0DE74F779C7BB70EB1558A79D75A12E60FEB501F4735AE40AF2F98CD97E4';
wwv_flow_imp.g_varchar2_table(129) := 'DBAF8EC913CFBF2C5317CFBF3E971F2B0574B4297FFE94E42F9C114D0A562EAFE9FDF21DF0C62D4DDD01EBCE3EB371B3644D029230098898B6D4D4760A23D024011280264147753315731ED4ADEDC9644AFA7D1E6EE3B6AE2DF3C7E70BF2E5A70FC98993';
wwv_flow_imp.g_varchar2_table(130) := '27023D42D91617B73875B4A93837297A1164A558702B167CBEE348B2B357DA4677497670AB346A44C071CC763ABA458FF8755BBA4D31F384AF880BC4BBF92400F1EEDFF547E7311C9B4C3AD2914DAD7F1B31ADE1C44C5EBEF1EC2BB234EBFFF8E49812AC';
wwv_flow_imp.g_varchar2_table(131) := '392CBDF03177F63529E716D65CC7CA1575A79C1DD9296D5BF65493013D37EF98247665B9A0EF755DAD43138BB6ADD78B1EF1EBB07FD0F5298740AB0548005ADD0361DEBECFD5D9896452D2A96498236859DB4E4CE7E489175E95FCC25CCD6D701C47F436';
wwv_flow_imp.g_varchar2_table(132) := 'B19E8E3619EDEFAE7E8CF2E6819EC8FDDC64DADEDFDD610E84136672A4D6AFEAA7245E18AB6B12A06D70CC4E5F93013D37AF1F8D9C1DDE2E99FE4D92EE1D14BD475F2F20D41DB98E165C9E52661421D5DD572D93E91F115D47D7D53AB42EED2FAD9B295E';
wwv_flow_imp.g_varchar2_table(133) := '02718F2611F700896F3D0215CF95138984A49CDAFFB04BCCBF26168AF2D48B8764A9869D7F7B3A25BB36F5CBDB6FDA253F7CD78DF291FB6E960FDEBB5F7EE0F67DF2C1BBF7C94FDD7F73A4A61F7DDB4DF2BEDBF7CA0FDD79A37CC8C4F19E5BF7C8DBF6EE';
wwv_flow_imp.g_varchar2_table(134) := '909BB70F496F7BC6240412E8AB7A5DC0C4C9F55F13B0DAD6CCB979279591647BB7A47A0624DD372C7A8F7E66708BD9C1EF787332A30699C1AD66D966D132A99E8DD575745D3175AC5635F3108882000940147AA9956DF4180570C46965CB42B9ED62A924';
wwv_flow_imp.g_varchar2_table(135) := '8F3FF792CCCF073BF26FEFE894076ED92B3FFDEEDBE5A7EEBB51DEB56F8BDCBAAD5FF68D74CB35FDEDB2A32F2B839D19694B2722356D684B99B6B7C9EE8176D9BFB957EED93D2C0FDDB44D3E74E7F5F2F1F7DC2E0FDDB2477ABB3A03F561752460FC98E8';
wwv_flow_imp.g_varchar2_table(136) := '131103AD50AF428EF9FDD6A95EF5514FC404E2DFDC44FC4324C2B50AE805596B5DD7D6F5BE7DF035999AF3BFC5AF3D9B91F79AA3E25F7DEF5BE481EB0665A43B2312F79D8DC667A6AE6C4AEEBD76447EE53D6F911FBE63AFF4B499D8C5FB4B9380D21C9F';
wwv_flow_imp.g_varchar2_table(137) := '91E0ADC452046A132001A8CD8BD208B80A8C5D9C9193E72EB82EBFBC60F340AFFCDC3B6F917BCC4EB02D9DBC3CDBBA9FC954526EDB39281F7BF016D932D0E31BBF7E46829E12F02D480104EA20604315240036F43231365C60B15092E78E8EF96E67C7E6';
wwv_flow_imp.g_varchar2_table(138) := '11F9D8FDFB65B03BEB5BD6960243C6E24377EF95DDA3839E21EB284071F6A267191622804070011280E0569444C055E0F8C4949C9FF4BEDD6F7470407EFCCE6BA5DD9CCF77ADC8D205039D59F9E05BAF956B37F57B0AE82383EBF27C00CFADB010013B04';
wwv_flow_imp.g_varchar2_table(139) := '4800ECE867A26CA0C042B122874F9EF1DC42B739CFFDC1B7EEAE5EC8E759D0E2855D6D69F9913BF61823F7674BE86708E8070A59CC44E808D44D8004A06E945464ABC0D88569999DF77E60CDBB6FB95686BADB6C250A1C7757362D6FBD618767F9E2FC94';
wwv_flow_imp.g_varchar2_table(140) := '1426CF4A39B728A5C5D9484F7A4D43F5EE068FBB6D3C3158D810015B2A2501B0A5A789B36102C7C6C6A5E4F1C8E46D437DB277D47B68BB618D8B58C58EE3C8DDBB86A4ADA3CBB3E585E9F3929F3821858B67247FEE84E4C68F4766CA9F3B69DA7DD64CA6';
wwv_flow_imp.g_varchar2_table(141) := 'ED13272577F698E4C65F9F4C2C8549F3FBB438D7FCDB1E3DC559184701128038F62A31354D60A95496C9E919D7ED398E230FEDDF29D914FFD45C91562CE848A76474B87FC5DCABDFEA4581FAC8E0A8DDAE5AA994AB0F36D2B6EB871E95F38B525A9A3723';
wwv_flow_imp.g_varchar2_table(142) := '1973A2D73814A6272E25042631D0D7D51182ABC3674EC304ECA998BF4AF6F435913640606C66490A260970ABBAA7BB4BB6F7077BE08D5B1D36CDAF98A1F043E353B234C5D5FE9A18E868C0D2A95725AF8F442EE46CFA5520D6260890003401994DC45760';
wwv_flow_imp.g_varchar2_table(143) := '6AA12015F39F5B843B86FB4412FC3373F3593E7F6C6A49FEECD197E4CFBFF9828C4D067B92E2F2F5E3FA5A4700F4F6C7DCD9A3A2CF4230E706E21A6A28E2B2A911FC65B2A9B789B5AE02FA4909D30B8B620E5A57AD37997064B4CFFF0137ABAE6CD1CCC9';
wwv_flow_imp.g_varchar2_table(144) := 'C5A27CE699E3F2A9AF3D2587C7268C67D9A2E88387AA7740E42F9E31A7078E4BA5980FBE22251170112001708161360241049616975C8BA5930919E9E1813F6E403ADC7F707C4E3EF5F033F2BD978FC962A1E85694F9CB04F47A81A533AF4971CEFBB913';
wwv_flow_imp.g_varchar2_table(145) := 'CB56E1656001BB0A9200D8D5DF445B47814AB92CF9BCFB9158CA8C00F4B5A7EAB8C57855F5D2B979F99BEFBC2C1767E7E3155813A2D1D180C285D39237531336C726622A400210D38E25ACC60B542A2601C8B95F98954D25A5CD4C8D6F49F4B6707C7251';
wwv_flow_imp.g_varchar2_table(146) := 'FEEEF157A4B8B4F69DBFE338927012119E1C719C4B93ACE1AB62CE3D15672745EF1458C3EAACB28A806DB348006CEB71E2AD9B40C52400258F2BB353E614403AE9D46D7B71A9E8D44C5EFEE25B2FCAD2C25CE09012E9ACDCBC6BAB7CE2A15BE5777FE2ED';
wwv_flow_imp.g_varchar2_table(147) := 'F2E98FBF53BEF92BEF966FFCCA43667A5724A747FEC5BBE52BBFF46EF9DB5F7850FEC0C4F4CFDF73ABECDFB5551269FF4F475C0EA7770A703A60B908AF830A90000495A21C022B04CC019848F5DB8A05AFBF75E4D27FAFBFE58711985C28C85F3CF6B22C';
wwv_flow_imp.g_varchar2_table(148) := 'CC07DBF9EF18D9283F75FF01F9CCCFDF27BFFF23FBE4E76F1B91FBB775C90D035919684F99296126FD19BD69B023259BBB53D558DE6662FA995B47E40F4C8C7FF7B3F7C94FBFE3806C1FEA3362C1FE2F4E8D4B791DA329C1B612F752F6C54702605F9F13';
wwv_flow_imp.g_varchar2_table(149) := '31022D11582A96E56F9F3A2AB35393BEDB6F4B27CD4EF066F9DD0FDD22FFEADECDB27B43467AB34933DCEFBB6A640B241CA9C6785D7F567EF59ECDF27B1FB95D7EFEC103D296F6BF8E441F8A94BF7856F496C1C802D0F0A60B249ABE4536880002560A3C';
wwv_flow_imp.g_varchar2_table(150) := '737A4A4E8C8DFBC63EDADF2D9FFCD87D6627B84576F4A67DCBC7B5C08E9EB4FCF25D9BE58F7EF23E19EEEDF00DF3F283837C0B526055011B679200D8D8EBC48C40930526974AF2D84B2745AF9BF0DAF46D3B87E4AF7FEA1E3930ECBFC3F3AA274ECB6E1D';
wwv_flow_imp.g_varchar2_table(151) := '6997FFFA3FDD2BB76C1FF40DAB387B51CA39EF0FA6F2AD8402D608900058D3D5048A40EB04BE73625A2E4E4D793660EF48AFFCDBF7ED97FEF6A467391B170E75A6E5777EF066B97E64836FF8C559FF532CBE955857C0CE804900ECEC77A246A069021717';
wwv_flow_imp.g_varchar2_table(152) := '8AF2F2F1339EDBEB694FCBBF78F7CDB27343D6B39CCD0BD5E65F3D74B37465BDAF09282FCD4939EFFE802A9B0D89FD4A0112802B3D78870002751638383E23172F9CF7ACF597DEB95FEED9D6ED59868522776DED925F7AD77E4F0ABD20B0CC1D019E462B';
wwv_flow_imp.g_varchar2_table(153) := '17DAFA9E04C0D69E276E049A24F0FCB1739E5BDAB6B1473EB27FC4B30C0BDF1450ABAD7D9D6FCE58E555C98C02AC329B59085C2140027005076F1040A09E0217178B32393BEB59E5FFF29EFDB1BEBDCF33F8352C4C251CF9B5F7DC6CCC1CD7B5CB4B0BC2';
wwv_flow_imp.g_varchar2_table(154) := '2D81AE3C2B16D8FB9604C0DEBE2772041A2E707C72410A1E9F97B0BDBF5BEEDDD6DBF076C46D030FECEA939D833DEE6155CA52E13A00771F9654054800AA0C7C4300817A0B542A153965128052C9FDE37DEFDA3D2249FE0AD54CEF98356ED9E17D5B2017';
wwv_flow_imp.g_varchar2_table(155) := '021AA400FFDB5C847F7A36F73EB123D04001B3FF970B33F3523147A3AB6DA63D9D941B46833FEE76B53A6C9EB76BC8FD96C08AC1AF14F39E8FAAB6D98ED82F0990005C72E03B0208D459A05411595C72FFB444BD9D6D736F7B9DB76A4F759B7BDB64A033';
wwv_flow_imp.g_varchar2_table(156) := 'E31A70591300319DE05A820522761B9000D8DDFF448F4043051696DCEF47EFEC68971DDCF7BF66FF8E7452BAB269D7F52BC582197D2101700562819000F04B8000020D1128952BB2E43102904EA5A5279B68C8B66DA874734F56B229F7A726564A4591B2';
wwv_flow_imp.g_varchar2_table(157) := 'FBF5173618F9C568FB72FEF5D9FE1B40FC083448A06C869FBD2E004C251DD15BDA1AB4F9D8573BD891924C2AE91EA7D9F9575CAEBF705F892536099000D8D4DBC48A403305CCE873B962BEB96C339DD03F3F8ECB5266FB09240C5DC6F3160A63EFE1EF57';
wwv_flow_imp.g_varchar2_table(158) := '7FFC9713A1FE0B4401010410400001042C132001B0ACC3091701041040400403E122407E09104000010410B0518011001B7B9D9811400001AB05085E054800548109010410400001CB0448002CEB70C2450001046C1720FE4B022400971CF88E00020820';
wwv_flow_imp.g_varchar2_table(159) := '808055022400567537C122800002B60B10FF65011280CB12FC440001041040C0220112008B3A9B5011400001DB0588FF4D011280372D788500020820808035022400D67475FD03E58346EA6F4A8D0820D04801EA5E2E4002B05C83D73509148B452996CA';
wwv_flow_imp.g_varchar2_table(160) := '35AD436104104000817008900084A31F42D90AC7713CDB95CBE7E5ECC52999999B97B9C525332DD6302D49BE58F2AC9F85082080403D05A8EB4A0112802B3D78B75CC031BF1E3A2D9FB7EC75A522F2AD170EC997BE7750BEFCC4F3F2E5275F08347DE989';
wwv_flow_imp.g_varchar2_table(161) := '17E4F3DF794E9E78E598E44AA6926575F21201041040A03902E62F7C7336C456A229E024939E0DD724205F2CCB62A1248BF960D392295B2C97E5ECC4055934EB7A6E8085082080405D04A864A50009C04A11DE5F2190C8B45FF1BE9E6F74DFCF00403D45';
wwv_flow_imp.g_varchar2_table(162) := 'A90B010410082E400210DCCACA92C98E6E7192A906C5EE7D8D4183364AB5082060A100215F2D400270B50973960924B21D92EAEC5D36879708208000027110200188432F36388674DF8824DB3A1BBC15AA470001041A2540BDAB099000ACA6C2BC2B051C';
wwv_flow_imp.g_varchar2_table(163) := '47B2C3DB25D5DD278EC75D0157AEC43B0410400081300B24C2DC38DA162201B3E3CF0C6C96CCD03649B67749229D15BD36C0711C71CCB22B2727440DA729082060BB00F1AF2E4002B0BA0B735D0474E79F1DDE216D9BAF95F62D7BA47DDB0D66BA7EC5B4';
wwv_flow_imp.g_varchar2_table(164) := '573AB6EF93CCC0A838263970A98AD908208000022D14200168217EE4376D8EFE4577F0574D6604C07124D9D1234E3A237C21800002AD1360CB6E0224006E32CC5FB78093488893F07E90D0BA37420508208000026B1248AC692D56420001041040200202';
wwv_flow_imp.g_varchar2_table(165) := '34D15D8004C0DD8625082080000208C456800420B65D4B606110709C30B482362060AB00717B09900078E9B00C8175082C954A922BADA302564500010412A0F4A300001000494441541A284002D0405CAAB65B606EB1202F8C4DCAD9B9BC9C9E59921393';
wwv_flow_imp.g_varchar2_table(166) := 'C1A693538B726626274B85B2DD80448FC03A0558DD5B8004C0DB87A508AC59A0582ECBE71F7F517EEFCB4FC91FFDF767E4938F049BFEE491E7E58FBE7E503EF7C298E4F42313D7DC025644000104DC054800DC6D5882C0BA05CA958A940A7929E673C1A7';
wwv_flow_imp.g_varchar2_table(167) := 'DCA2E41766E5951367646A21BFEE36500102760A10B59F0009809F10CB11689140B954144D205AB479368B000231172001887907135E8405CC29848A1941887004341D819609B0617F0112007F234A208000020820103B011280D875290121800002B60B';
wwv_flow_imp.g_varchar2_table(168) := '107F10011280204A94410001041040206602240031EB50C2099780E338E22453AB4F8E13AEC6D21A0462224018C10448008239510A8135096406B74AFB96EBA46DD335574C3A4F97ADA9525642000104EA204002500744AA40603501C74948A2AD53C4FC';
wwv_flow_imp.g_varchar2_table(169) := '745219593EE93C5DA665842F0410A8A3005505152001082A453904D6205029165CD7BAB4ACE2BA9C0508208040230548001AA94BDD08208000024D156063C1054800825B5112010410400081D8089000C4A62B0904816809F05987EBEBAF62A92C15F3DF';
wwv_flow_imp.g_varchar2_table(170) := 'FA6A89DBDAC4538B0009402D5A94450081BA092CE50B52289306AC157462B1C8A745AE158FF5AA0224005506BE218040B305C6A766E5EB47A7652E5F96F94259166A9CCC6ACD6E72DDB7578DBB58A929765D6762B124DF1F9B9533D30B1E6D72C449D8F5';
wwv_flow_imp.g_varchar2_table(171) := '27DE038345AB08F0DBB10A0AB31040A0F102B38B79F9379F79523EF4C96FCB473EF598FCE89F7E27D0F4237FFC2DF9C13F7C54FEB7875F332308D1BD8BA26C9AFEBF7EE5887CD8C4FEC14F068FFF237FFA987CF453DF967FF7D9EFC9E442DEBDA374E7EF';
wwv_flow_imp.g_varchar2_table(172) := 'F027DE1D8825FC76F03B8000022D13582A14E5F8F91939726E5A0E8D4F059A4E5C3047BE9373F2CD57CEC8457324DCB2C6AF73C333B9923C7E745C5E33711F9B081EFF91F169397D7156F2C592670B12E9AC6523009E1C2C5C45800460151466218040F8';
wwv_flow_imp.g_varchar2_table(173) := '0516F2399937C3E7E16FE9EA2DD4B6E74D02B4FAD2F5CF4D76F68AC900842F04DC044800DC64988F0002E11688C1F0B6934836C4583F7FA29A0034A4F670564AAB6A172001A8DD8C3510400081500BA4FB86CDC17F63928B50074EE36A122001A8898BC2';
wwv_flow_imp.g_varchar2_table(174) := '08208040B805D2BD8392EADC10EE46D6BD7554B816011280B5A8B10E020820103201FD60A94CFF88E8D1BF384EC85A4773C228400210C65EA14D085822E0388E24526949A433574C7A0EDB89C1397E59E7971AACB449A4B3926CEF9264474FF5483FDD33';
wwv_flow_imp.g_varchar2_table(175) := '2099FE4D921DDD25A99E8DEBDC623457A7D56B132001589B1B6B2180C03A05F402B874DF886437ED92ECF04EC90C6DAF4ED9916B243BB253D203A3E238761FC96686B65D6193A91A6D93B4D9E167CCD17E66E368F575CA24019A18ACB34B58DD32011200';
wwv_flow_imp.g_varchar2_table(176) := 'CB3A9C7011088B8093CA548F62AB47FBD55180AC1905C88ABED79D59B2A3BBFA3A2CED6D763B1CC7A91EE93BCB6CD4E5F2A47EC2288988085F6B14200158231CAB2180C03A051C73749FF0F91364F50ECEF8542AEB44667504DC057CFEF5B9AFC8120410';
wwv_flow_imp.g_varchar2_table(177) := '40603D028EE3583FC4EFEF4702E067C4F2B50B9000ACDD8E3511400001041088AC00094064BB8E8623800002B60B10FF7A044800D6A3C7BA0820800002084454800420A21D47B311400001DB05887F7D022400EBF3636D0410400001042229400210C96E';
wwv_flow_imp.g_varchar2_table(178) := 'A3D108208080ED02C4BF5E011280F50AB23E020820800002111420018860A7D164041040C07601E25FBF0009C0FA0DA901010410400081C809900044AECB683002082060BB00F1D7438004A01E8AD481000208208040C404480022D6613417010410B05D';
wwv_flow_imp.g_varchar2_table(179) := '80F8EB234002501F476A410001041040205202240091EA2E1A8B000208D82E40FCF5122001A89724F520800002082010210112800875164D450001046C1720FEFA099000D4CF929A104000010410888C00094064BA8A8622800002B60B107F3D054800EA';
wwv_flow_imp.g_varchar2_table(180) := 'A9495D0820800002084444800420221D453311400001DB0588BFBE022400F5F5A4360410400001042221400210896EA29108208080ED02C45F6F0112807A8B521F02082080000211102001884027D144041040C07601E2AFBF000940FD4DA91101041040';
wwv_flow_imp.g_varchar2_table(181) := '0081D00B900084BE8B682002082060BB00F137428004A011AAD4194CC0A948D27182950D61A9642221954A081B46931040008100022400019028B25601EF9D7BC5EC3D93E582D98956A4522E456A12316D2EE4A464DAEDA5E39824C16B39CB1040C05F80';
wwv_flow_imp.g_varchar2_table(182) := '128D112001688C2BB5AA80CFD17DA95C91CF3DF6ACFCEDA34FCBDF3DF65CA4A6BFF9E6D3F2D78F1DD428DD27DDF93BFC13730762090208B45280BF4EADD4B761DB89A46794E54A5972F9BC2C2EE52235699B4BE5B2676C894C9B3002E049C44204020850';
wwv_flow_imp.g_varchar2_table(183) := 'A4510224008D92A5DEAA40B2BDABFAD3C66FC9CE5E311980F08500020884518004208CBD12A336253B7AC449A6621451B05034668D3D58694A2180809B00F31B274002D0385B6A3602BA234CF78D985776FD9FEE1B16C7E7F4875D22448B000261132001';
wwv_flow_imp.g_varchar2_table(184) := '085B8FC4B03DA9AE0D92D2E1F018C6B65A48E9DE4113EF86D516310F01046A12A070230548001AA94BDD6F0864366E91F4862171627C55BCC696E91F113DFA17C7FB16C837607881000208B4488004A045F0D66DD6EC103501C86EBA46742799EAEEAF1E';
wwv_flow_imp.g_varchar2_table(185) := '25273BBA25916997443A13A1292B7A71A39EE34F756E9074CF8089699364477749AA67A3755D4BC008344A807A1B2B4002D0585F6A5F2190C8B4557792998151499BA3E54CFF26C90C6E91CCD0F6084DDB4CDB4DBBB5FD1B358E4D26A60193C0645744CB';
wwv_flow_imp.g_varchar2_table(186) := '5B04104020BC022400E1ED9BD8B74C2F10745299EA8E3391CE46EEA7B65D627C4A23F6BF80041872019AD768011280460B533F020820800002211420010861A7D024041040C07601E26FBC000940E38DD902020820800002A1132001085D97D020041040';
wwv_flow_imp.g_varchar2_table(187) := 'C07601E26F860009403394D90602AB0938FECF0AE8CC787F98D26AD586655E5B2A21098F102B954A589A4A3B10B0528004C0CA6E27E83008388EEE1D755ABD35C552494E4C2E4AA96C7694BAB38CD0A43BF7D37305D376EF4F4C5C3D72E6DA2E40FCCD11';
wwv_flow_imp.g_varchar2_table(188) := '2001688E335B41E06A01BD8530E1FE4FB06C76F85FFDFECBF29F1F795AFEFC1BCF466AFAB3879F964F7FF369930098E4E5EAC8AB731CC7243F6A507DC737041068B680FB5F9F66B784ED216099806376FEFAFC03AFB02FCEE7E4F0C4ACBC7C763A5293B6';
wwv_flow_imp.g_varchar2_table(189) := 'F9FCDC925768A2CF81F02CC0424B0508BB59022400CD92663B08AC143047BF89F6AE9573AD79EF64DAAC8995401108A3000940187B8536592390EAEAB3F248588FFE35766B3A9A40030B50B079022400CDB3664B085C2550DD11F60C5C353FCE331CC711';
wwv_flow_imp.g_varchar2_table(190) := 'FD0C088D3DCE71121B0261174884BD81B40F81B80BA47B0725D5DD17F730ABF1398E6362ED9764676FF53DDF10B8528077CD14200168A636DB42C0452033B059321BB7489C8F8A9D44B21A63BA7F93F0850002AD172001687D1FD00204AA02A9AE0DD236';
wwv_flow_imp.g_varchar2_table(191) := 'BADBEC24374BB2A35BF4A393F52E81442A5D5D1EA56F8E5EE0A89FF09869AFC692DE30548D8D23FF28F562F3DBCA169B2B4002D05C6FB68680A7808E00A4BAFA243BB4DD4CDB2433302A69336587CDFB084D99A1ADD5B66706B79838B68B26004E041319';
wwv_flow_imp.g_varchar2_table(192) := 'CFCE62210211172001887807D2FCF80A38A98C24DA3A25D9DE1DC949DBAE2318F1ED2122ABAF00B5355B8004A0D9E26C0F0104104000811008900084A013680202082060BB00F1375F8004A0F9E66C11010410400081960B9000B4BC0B68000208AC49A0';
wwv_flow_imp.g_varchar2_table(193) := '5291ACD7E70DAFA9D2E6AD94493AA29F9AD8BC2D86794BB4AD15022400AD50679B0820E02BE0388E679972A96496BB7FDAA05918EAFF4B25D3F66A0CA16E268D8BB10009408C3B97D01088B340A95894C74ECEC88999829C9D2F466A3A69DAFCD8C92929';
wwv_flow_imp.g_varchar2_table(194) := '160B1E5D641204F14E823C568ED4221ADB1A011280D6B8B3550410F01370CC9F278F51805CB124BFFDF7DF950FFDF137E5A37FFA5874A64F7D5B3EFC278FCA6FFDDDE3922FB82700FA4C08F188DF8F8FE508F809987F617E45588E000208B446A0BA13F4';
wwv_flow_imp.g_varchar2_table(195) := 'D874C51C24CF2E2CC9D9C9D9E84C5373323DBF28DA768FD0449F03E1B53C3ECB88A455022400AD9267BB0820E02BA08F43F62D14D302896C7B4C2323ACB008900084A527680702085C25A09F1DE0370A70D54A319891486724D965C72744C6A0BB221B02';
wwv_flow_imp.g_varchar2_table(196) := '094064BB8E8623107F8144A65DD27DC3F10F744584A9EE0149A4B32BE6F21681FA0A9000D4D793DA1040A0CE02FAE148E9DEC13AD71ADEEA34D654CF40781B58D79651592B0548005AA9CFB611402090808E026487B64922D316A87C140BE9117FF5D31F';
wwv_flow_imp.g_varchar2_table(197) := '2D1CF188627FC5A1CD240071E8456240C0028164474FF5A38533FD23926CEFAA0E91275269F33313ED29DB513DCDA11FF99CEAEEB7A027DF0C9157AD15200168AD3F5B4700811A041CB3C34FF56C94ECF00E691BDD2D599D36ED926C44A7B6D16BA56DD3';
wwv_flow_imp.g_varchar2_table(198) := '35A2C3FEDCF657C32F0245EB2240025017462A410081A60B388E388964A427BB1FF4D3F4DF1836B84280046005086F114000010410B0418004C0865E264604104020640234A7F5022400ADEF035A80000208208040D30548009A4ECE0611400001DB0588';
wwv_flow_imp.g_varchar2_table(199) := '3F0C02240061E805DA80000208208040930548009A0CCEE610400001DB05883F1C022400E1E8075A81000208208040530548009ACACDC610400001DB05883F2C02240061E909DA81000208208040130548009A88CDA610400001DB05883F3C022400E1E9';
wwv_flow_imp.g_varchar2_table(200) := '0B5A82000208208040D30448009A46CD8610400001DB05883F4C02240061EA0DDA82000208208040930448009A04CD6610400001DB05883F5C022400E1EA0F5A83000208208040530448009AC2CC4610400001DB05883F6C02240061EB11DA8300020820';
wwv_flow_imp.g_varchar2_table(201) := '8040130448009A80CC2610400001DB05883F7C022400E1EB135A84000208208040C30548001A4ECC0610400001DB05883F8C02240061EC15DA84000208208040830548001A0C4CF508208080ED02C41F4E01128070F60BAD420001041040A0A10224000D';
wwv_flow_imp.g_varchar2_table(202) := 'E5A572041040C07601E20FAB000940587B8676218000020820D04001128006E2523502082060BB00F18757800420BC7D43CB1040000104106898000940C368A918010410B05D80F8C32C400210E6DEA16D08208000020834488004A041B0548B000208D8';
wwv_flow_imp.g_varchar2_table(203) := '2E40FCE11620010877FFD03A0410400001041A224002D010562A450001046C1720FEB00B900084BD87681F0208208000020D10200168002A5522800002B60B107FF8054800C2DF47B410010410400081BA0B9000D49D940A11400001DB05883F0A022400';
wwv_flow_imp.g_varchar2_table(204) := '51E825DA880002082080409D054800EA0C4A7508208080ED02C41F0D01128068F413AD440001041040A0AE02240075E5A432041040C07601E28F8A000940547A8A7622800002082050470112803A62521502082060BB00F147478004203A7D454B114000';
wwv_flow_imp.g_varchar2_table(205) := '010410A89B000940DD28A908010410B05D80F8A324400210A5DEA2AD082080000208D4498004A04E905483000208D82E40FCD112200188567FD15A041040000104EA2240025017462A410001046C1720FEA809900044ADC7682F02082080000275102001';
wwv_flow_imp.g_varchar2_table(206) := 'A803225520800002B60B107FF4044800A2D767B418010410400081750B9000AC9B900A10400001DB05883F8A02240051EC35DA8C0002082080C03A054800D609C8EA082080A95015ED000004404944415480ED02C41F4D01128068F61BAD460001041040';
wwv_flow_imp.g_varchar2_table(207) := '605D022400EBE26365041040C07601E28FAA000940547B8E76238000020820B00E01128075E0B12A02082060BB00F14757800420BA7D47CB11400001041058B30009C09AE95811010410B05D80F8A32C400210E5DEA3ED082080000208AC518004608D70';
wwv_flow_imp.g_varchar2_table(208) := 'AC86000208D82E40FCD11620018876FFD17A041040000104D6244002B0263656420001046C1720FEA80B900044BD07693F0208208000026B10200158031AAB20800002B60B107FF4054800A2DF874480000208208040CD0224003593B10202082060BB00';
wwv_flow_imp.g_varchar2_table(209) := 'F1C7418004200EBD480C082080000208D4284002502318C511400001DB05883F1E022400F1E847A2400001041040A0260112809AB8288C000208D82E40FC71112001884B4F120702082080000235089000D4804551041040C07601E28F8F0009407CFA92';
wwv_flow_imp.g_varchar2_table(210) := '48104000010410082C400210988A8208208080ED02C41F2701128038F526B120800002082010508004202014C510400001DB05883F5E022400F1EA4FA2410001041040209000094020260A21800002B60B107FDC044800E2D6A3C4830002082080400001';
wwv_flow_imp.g_varchar2_table(211) := '1280004814410001046C1720FEF8099000C4AF4F89080104104000015F0112005F220A20800002B60B107F1C054800E2D8ABC4840002082080808F0009800F108B11400001DB05883F9E022400F1EC57A2420001041040C0538004C093878508208080ED';
wwv_flow_imp.g_varchar2_table(212) := '02C41F57011280B8F62C71218000020820E0214002E081C322041040C07601E28FAF0009407CFB96C81040000104107015200170A5610102082060BB00F1C759800420CEBD4B6C082080000208B8089000B8C0301B010410B05D80F8E32D400210EFFE25';
wwv_flow_imp.g_varchar2_table(213) := '3A041040000104561520015895859908208080ED02C41F77011280B8F730F1218000020820B08A0009C02A28CC420001046C1720FEF80B9000C4BF8F8910010410400081AB044800AE22610602082060BB00F1DB20400260432F13230208208000022B04';
wwv_flow_imp.g_varchar2_table(214) := '48005680F016010410B05D80F8ED102001B0A39F89120104104000812B044800AEE0E00D02082060BB00F1DB224002604B4F1327020820800002CB0448009661F012010410B05D80F8ED112001B0A7AF891401041040008137044800DEA0E00502082060';
wwv_flow_imp.g_varchar2_table(215) := 'BB00F1DB24400260536F132B020820800002AF0B9000BC0EC10F041040C07601E2B74B8004C0AEFE265A041040000104AA0224005506BE21800002B60B10BF6D022400B6F538F1228000020820600448000C02FF23800002B60B10BF7D022400F6F53911';
wwv_flow_imp.g_varchar2_table(216) := '238000020820202400FC1220800002D60B0060A30009808DBD4ECC0820800002D60B900058FF2B00000208D82E40FC760A9000D8D9EF448D0002082060B9000980E5BF00848F0002B60B10BFAD022400B6F63C712380000208582D40026075F7133C0208';
wwv_flow_imp.g_varchar2_table(217) := 'D82E40FCF60A9000D8DBF7448E0002082060B1000980C59D4FE8082060BB00F1DB2C40026073EF133B0208208080B5022400D6763D81238080ED02C46FB7C0FF000000FFFF146BCAE400000006494441540300FD1212FF883A4D540000000049454E44AE';
wwv_flow_imp.g_varchar2_table(218) := '426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(9789112780052790)
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
 p_id=>wwv_flow_imp.id(9780548458052769)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>46793254588344
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9780863814052769)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>46793254588412
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9781118446052770)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>46793254588479
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9781487378052770)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>46793254588547
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9781738291052771)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>46793254588601
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9782080944052771)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>46793254588668
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9782329573052772)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>46793254588737
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9782629433052772)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>46793254588804
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9782940857052773)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>46793254588886
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9783243006052773)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>46793254588954
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9783551311052774)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>46793254589019
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9783862402052774)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>46793254589065
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9784121221052774)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>46793254589107
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9784432270052775)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>46793254589149
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(9792010066052797)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>46793254591984
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(9792193343052797)
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
,p_version_scn=>46793254592083
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(9792265236052797)
,p_name=>'Contribution Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator,Contributor'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_version_scn=>46793254592148
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(9791617206052795)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>46793254591669
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(9791891170052796)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
,p_version_scn=>46793254591839
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(9791933258052796)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>46793254591885
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
 p_id=>wwv_flow_imp.id(9793030257052799)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(9789593500052791)
,p_version_scn=>46793254592242
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(9793324387052800)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(9789381899052791)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>46793254592352
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
 p_id=>wwv_flow_imp.id(10185361786059865)
,p_lov_name=>'ACCESS_ROLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>46793287351798
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10084799714059685)
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
,p_version_scn=>46793287327687
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10192876671059878)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_imp.id(10192876671059878)||'.'
,p_location=>'STATIC'
,p_version_scn=>46793287353296
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10193107279059879)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10210186343059907)
,p_lov_name=>'FEEDBACK_RATING'
,p_lov_query=>'.'||wwv_flow_imp.id(10210186343059907)||'.'
,p_location=>'STATIC'
,p_version_scn=>46793287356913
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10210471585059908)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Positive'
,p_lov_return_value=>'3'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10210869506059908)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutral'
,p_lov_return_value=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10211216274059909)
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
 p_id=>wwv_flow_imp.id(10222563534059926)
,p_lov_name=>'FEEDBACK_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(10222563534059926)||'.'
,p_location=>'STATIC'
,p_version_scn=>46793287358938
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10222830229059926)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10223252893059927)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Acknowledged'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10223660429059928)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10224050212059928)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/oehr_customers_cust_first_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9849412302053155)
,p_lov_name=>'OEHR_CUSTOMERS.CUST_FIRST_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'OEHR_CUSTOMERS'
,p_return_column_name=>'CUSTOMER_ID'
,p_display_column_name=>'CUST_FIRST_NAME'
,p_default_sort_column_name=>'CUST_FIRST_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>46793254637499
);
end;
/
prompt --application/shared_components/user_interface/lovs/oehr_departments_department_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9885180889053241)
,p_lov_name=>'OEHR_DEPARTMENTS.DEPARTMENT_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'OEHR_DEPARTMENTS'
,p_return_column_name=>'DEPARTMENT_ID'
,p_display_column_name=>'DEPARTMENT_NAME'
,p_default_sort_column_name=>'DEPARTMENT_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>46793254649263
);
end;
/
prompt --application/shared_components/user_interface/lovs/oehr_employees_first_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9821468911052859)
,p_lov_name=>'OEHR_EMPLOYEES.FIRST_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'OEHR_EMPLOYEES'
,p_return_column_name=>'EMPLOYEE_ID'
,p_display_column_name=>'FIRST_NAME'
,p_default_sort_column_name=>'FIRST_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>46793254599810
);
end;
/
prompt --application/shared_components/user_interface/lovs/oehr_jobs_job_title
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9884060809053239)
,p_lov_name=>'OEHR_JOBS.JOB_TITLE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'OEHR_JOBS'
,p_return_column_name=>'JOB_ID'
,p_display_column_name=>'JOB_TITLE'
,p_default_sort_column_name=>'JOB_TITLE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>46793254649084
);
end;
/
prompt --application/shared_components/user_interface/lovs/oehr_locations_street_address
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9931166147056508)
,p_lov_name=>'OEHR_LOCATIONS.STREET_ADDRESS'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'OEHR_LOCATIONS'
,p_return_column_name=>'LOCATION_ID'
,p_display_column_name=>'STREET_ADDRESS'
,p_default_sort_column_name=>'STREET_ADDRESS'
,p_default_sort_direction=>'ASC'
,p_version_scn=>46793255029942
);
end;
/
prompt --application/shared_components/user_interface/lovs/oehr_regions_region_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9919319529055514)
,p_lov_name=>'OEHR_REGIONS.REGION_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'OEHR_REGIONS'
,p_return_column_name=>'REGION_ID'
,p_display_column_name=>'REGION_NAME'
,p_default_sort_column_name=>'REGION_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>46793254918368
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10104478623059717)
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
,p_version_scn=>46793287333511
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10085427920059686)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_imp.id(10085427920059686)||'.'
,p_location=>'STATIC'
,p_version_scn=>46793287327836
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10085742071059686)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10152093942059811)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_lov_query=>'.'||wwv_flow_imp.id(10152093942059811)||'.'
,p_location=>'STATIC'
,p_version_scn=>46793287345760
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10152381160059811)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Add Report Page'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10152717893059812)
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
 p_id=>wwv_flow_imp.id(9793680760052801)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(10269742077060004)
,p_group_name=>'User Settings'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(9785391022052777)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9785582430052777)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9819464965052853)
,p_short_name=>'Dashboard'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9832119616052879)
,p_short_name=>'Customers'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9854278677053165)
,p_short_name=>'Order Search'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9882095393053234)
,p_short_name=>'Orders Calendar'
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9893925623053257)
,p_short_name=>'Employees'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10248656652059972)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
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
 p_id=>wwv_flow_imp.id(9786220124052779)
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
 p_id=>wwv_flow_imp.id(9784791948052775)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>46793254589200
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(9789381899052791)
,p_build_option_name=>'Feature: Access Control'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>46793254591342
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(9789462724052791)
,p_build_option_name=>'Feature: Activity Reporting'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>46793254591392
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(9789593500052791)
,p_build_option_name=>'Feature: Feedback'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>46793254591445
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(9789798026052791)
,p_build_option_name=>'Feature: Configuration Options'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>46793254591284
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>'Allow application administrators to enable or disable specific functionality, associated with an Oracle APEX build option, from within the application.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(9790055653052791)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>46793254591497
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(9790128723052791)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>46793254591556
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(10269964837060004)
,p_build_option_name=>'Feature: Push Notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>46793287366819
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(10270267323060004)
,p_build_option_name=>'Feature: User Settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>46793287366874
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
 p_id=>wwv_flow_imp.id(9785048962052776)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>46793254589266
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
 p_id=>wwv_flow_imp.id(9809216754052836)
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
 p_id=>wwv_flow_imp.id(10071712926059661)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(10069049004059657)
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
 p_id=>wwv_flow_imp.id(9810586618052839)
,p_plug_name=>'Total Customer Orders'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(9810978270052839)
,p_region_id=>wwv_flow_imp.id(9810586618052839)
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
 p_id=>wwv_flow_imp.id(9812607231052843)
,p_chart_id=>wwv_flow_imp.id(9810978270052839)
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
 p_id=>wwv_flow_imp.id(9811424966052840)
,p_chart_id=>wwv_flow_imp.id(9810978270052839)
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
 p_id=>wwv_flow_imp.id(9812044525052842)
,p_chart_id=>wwv_flow_imp.id(9810978270052839)
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
 p_id=>wwv_flow_imp.id(9813291267052844)
,p_plug_name=>'Total Sales Rep Orders'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(9813651626052844)
,p_region_id=>wwv_flow_imp.id(9813291267052844)
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
 p_id=>wwv_flow_imp.id(9815309189052847)
,p_chart_id=>wwv_flow_imp.id(9813651626052844)
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
 p_id=>wwv_flow_imp.id(9814139957052845)
,p_chart_id=>wwv_flow_imp.id(9813651626052844)
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
 p_id=>wwv_flow_imp.id(9814725273052846)
,p_chart_id=>wwv_flow_imp.id(9813651626052844)
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
 p_id=>wwv_flow_imp.id(9815924363052848)
,p_plug_name=>'Product Status'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(9816314265052848)
,p_region_id=>wwv_flow_imp.id(9815924363052848)
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
 p_id=>wwv_flow_imp.id(9816813007052849)
,p_chart_id=>wwv_flow_imp.id(9816314265052848)
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
 p_id=>wwv_flow_imp.id(9817439632052850)
,p_plug_name=>'Order Modes'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(9817823915052850)
,p_region_id=>wwv_flow_imp.id(9817439632052850)
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
 p_id=>wwv_flow_imp.id(9818315752052851)
,p_chart_id=>wwv_flow_imp.id(9817823915052850)
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
 p_id=>wwv_flow_imp.id(9818974987052852)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(9785391022052777)
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
 p_id=>wwv_flow_imp.id(9820580960052856)
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
 p_id=>wwv_flow_imp.id(9824808850052867)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>0
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:RP:P4_CUSTOMER_ID:\#CUSTOMER_ID#\'
,p_column_linktext=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_column_alignment=>'CENTER'
,p_report_column_required_role=>wwv_flow_imp.id(9792265236052797)
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9825273029052868)
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
 p_id=>wwv_flow_imp.id(9825672907052869)
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
 p_id=>wwv_flow_imp.id(9826056052052869)
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
 p_id=>wwv_flow_imp.id(9826449927052870)
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
 p_id=>wwv_flow_imp.id(9826892562052870)
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
 p_id=>wwv_flow_imp.id(9827287708052871)
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
 p_id=>wwv_flow_imp.id(9827650402052871)
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
 p_id=>wwv_flow_imp.id(9828088744052872)
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
 p_id=>wwv_flow_imp.id(9828492643052873)
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
 p_id=>wwv_flow_imp.id(9828872583052873)
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
 p_id=>wwv_flow_imp.id(9829213719052874)
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
 p_id=>wwv_flow_imp.id(9829638758052875)
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
 p_id=>wwv_flow_imp.id(9830059358052875)
,p_query_column_id=>14
,p_column_alias=>'ACCOUNT_MGR_ID'
,p_column_display_sequence=>14
,p_column_heading=>'Account Mgr'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_named_lov=>wwv_flow_imp.id(9821468911052859)
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9820627318052856)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(9820580960052856)
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
 p_id=>wwv_flow_imp.id(9823792671052864)
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
 p_id=>wwv_flow_imp.id(9831706841052878)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(9785391022052777)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9830500169052876)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9820580960052856)
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
 p_id=>wwv_flow_imp.id(9824289215052865)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9823792671052864)
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
 p_id=>wwv_flow_imp.id(9821109460052858)
,p_name=>'P3_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9820627318052856)
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
 p_id=>wwv_flow_imp.id(9821851968052860)
,p_name=>'P3_ACCOUNT_MGR_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9820627318052856)
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
 p_id=>wwv_flow_imp.id(9822262429052861)
,p_name=>'P3_COUNTRY_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9820627318052856)
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
 p_id=>wwv_flow_imp.id(9822681470052861)
,p_name=>'P3_NLS_TERRITORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9820627318052856)
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
 p_id=>wwv_flow_imp.id(9823076475052862)
,p_name=>'P3_NLS_LANGUAGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9820627318052856)
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
 p_id=>wwv_flow_imp.id(9823479410052863)
,p_name=>'P3_CREDIT_LIMIT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9820627318052856)
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
 p_id=>wwv_flow_imp.id(9830828706052877)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9820580960052856)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9831326272052878)
,p_event_id=>wwv_flow_imp.id(9830828706052877)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9820580960052856)
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
,p_required_role=>wwv_flow_imp.id(9792265236052797)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9832633875052881)
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
 p_id=>wwv_flow_imp.id(9842706805053143)
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
 p_id=>wwv_flow_imp.id(9843178562053144)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9842706805053143)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9844556412053146)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9842706805053143)
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
 p_id=>wwv_flow_imp.id(9844920402053147)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9842706805053143)
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
 p_id=>wwv_flow_imp.id(9845395667053147)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9842706805053143)
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
 p_id=>wwv_flow_imp.id(9833046963052881)
,p_name=>'P4_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9832633875052881)
,p_item_source_plug_id=>wwv_flow_imp.id(9832633875052881)
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
 p_id=>wwv_flow_imp.id(9833329515053128)
,p_name=>'P4_CUST_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9832633875052881)
,p_item_source_plug_id=>wwv_flow_imp.id(9832633875052881)
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
 p_id=>wwv_flow_imp.id(9833723319053129)
,p_name=>'P4_CUST_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9832633875052881)
,p_item_source_plug_id=>wwv_flow_imp.id(9832633875052881)
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
 p_id=>wwv_flow_imp.id(9834113730053129)
,p_name=>'P4_STREET_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9832633875052881)
,p_item_source_plug_id=>wwv_flow_imp.id(9832633875052881)
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
 p_id=>wwv_flow_imp.id(9834535563053130)
,p_name=>'P4_POSTAL_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9832633875052881)
,p_item_source_plug_id=>wwv_flow_imp.id(9832633875052881)
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
 p_id=>wwv_flow_imp.id(9834974686053131)
,p_name=>'P4_CITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9832633875052881)
,p_item_source_plug_id=>wwv_flow_imp.id(9832633875052881)
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
 p_id=>wwv_flow_imp.id(9835389426053131)
,p_name=>'P4_STATE_PROVINCE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9832633875052881)
,p_item_source_plug_id=>wwv_flow_imp.id(9832633875052881)
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
 p_id=>wwv_flow_imp.id(9835782625053132)
,p_name=>'P4_COUNTRY_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9832633875052881)
,p_item_source_plug_id=>wwv_flow_imp.id(9832633875052881)
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
 p_id=>wwv_flow_imp.id(9836140290053133)
,p_name=>'P4_PHONE_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9832633875052881)
,p_item_source_plug_id=>wwv_flow_imp.id(9832633875052881)
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
 p_id=>wwv_flow_imp.id(9836522389053133)
,p_name=>'P4_NLS_LANGUAGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(9832633875052881)
,p_item_source_plug_id=>wwv_flow_imp.id(9832633875052881)
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
 p_id=>wwv_flow_imp.id(9836924628053134)
,p_name=>'P4_NLS_TERRITORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(9832633875052881)
,p_item_source_plug_id=>wwv_flow_imp.id(9832633875052881)
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
 p_id=>wwv_flow_imp.id(9837350078053134)
,p_name=>'P4_CREDIT_LIMIT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(9832633875052881)
,p_item_source_plug_id=>wwv_flow_imp.id(9832633875052881)
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
 p_id=>wwv_flow_imp.id(9837792170053135)
,p_name=>'P4_CUST_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(9832633875052881)
,p_item_source_plug_id=>wwv_flow_imp.id(9832633875052881)
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
 p_id=>wwv_flow_imp.id(9838136016053136)
,p_name=>'P4_ACCOUNT_MGR_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(9832633875052881)
,p_item_source_plug_id=>wwv_flow_imp.id(9832633875052881)
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
 p_id=>wwv_flow_imp.id(9843220414053144)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9843178562053144)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9844089420053145)
,p_event_id=>wwv_flow_imp.id(9843220414053144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9846142242053148)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9832633875052881)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Customer'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9846142242053148
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9846513454053149)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9846513454053149
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9845779944053148)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9832633875052881)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Customer'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9845779944053148
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
 p_id=>wwv_flow_imp.id(9848500578053153)
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
 p_id=>wwv_flow_imp.id(9852905893053163)
,p_region_id=>wwv_flow_imp.id(9848500578053153)
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
 p_id=>wwv_flow_imp.id(9848632262053153)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(9848500578053153)
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
 p_id=>wwv_flow_imp.id(9851780878053160)
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
 p_id=>wwv_flow_imp.id(9853716140053164)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(9785391022052777)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9852256608053161)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9851780878053160)
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
 p_id=>wwv_flow_imp.id(9849140653053154)
,p_name=>'P5_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9848632262053153)
,p_prompt=>'Search'
,p_source=>'SALES_REP_ID,ORDER_MODE,CUSTOMER_ID'
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
 p_id=>wwv_flow_imp.id(9849885221053155)
,p_name=>'P5_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9848632262053153)
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
 p_id=>wwv_flow_imp.id(9850284606053157)
,p_name=>'P5_ORDER_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9848632262053153)
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
 p_id=>wwv_flow_imp.id(9850691545053157)
,p_name=>'P5_SALES_REP_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9848632262053153)
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
 p_id=>wwv_flow_imp.id(9851037502053159)
,p_name=>'P5_ORDER_STATUS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9848632262053153)
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
 p_id=>wwv_flow_imp.id(9851485894053159)
,p_name=>'P5_ORDER_MODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9848632262053153)
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
 p_id=>wwv_flow_imp.id(9853445933053164)
,p_name=>'P5_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9848500578053153)
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
 p_id=>wwv_flow_imp.id(9855390608053168)
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
 p_id=>wwv_flow_imp.id(9856157906053170)
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
 p_id=>wwv_flow_imp.id(9857459893053173)
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
 p_id=>wwv_flow_imp.id(9857952998053174)
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
 p_id=>wwv_flow_imp.id(9858923689053176)
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
 p_id=>wwv_flow_imp.id(9859963476053177)
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
 p_id=>wwv_flow_imp.id(9860933460053179)
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
 p_id=>wwv_flow_imp.id(9861815125053180)
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
 p_id=>wwv_flow_imp.id(9862861332053182)
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
 p_id=>wwv_flow_imp.id(9863877355053183)
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
 p_id=>wwv_flow_imp.id(9864884810053185)
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
 p_id=>wwv_flow_imp.id(9865809662053186)
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
 p_id=>wwv_flow_imp.id(9856636177053171)
,p_internal_uid=>9856636177053171
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>wwv_flow_imp.id(9792265236052797)
,p_update_authorization_scheme=>wwv_flow_imp.id(9792265236052797)
,p_delete_authorization_scheme=>wwv_flow_imp.id(9792265236052797)
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
 p_id=>wwv_flow_imp.id(9857015716053172)
,p_interactive_grid_id=>wwv_flow_imp.id(9856636177053171)
,p_static_id=>'98571'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>10
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9857270859053172)
,p_report_id=>wwv_flow_imp.id(9857015716053172)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9858301733053174)
,p_view_id=>wwv_flow_imp.id(9857270859053172)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(9857952998053174)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9859376760053176)
,p_view_id=>wwv_flow_imp.id(9857270859053172)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9858923689053176)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9860384535053178)
,p_view_id=>wwv_flow_imp.id(9857270859053172)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9859963476053177)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9861201590053179)
,p_view_id=>wwv_flow_imp.id(9857270859053172)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9860933460053179)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9862275342053181)
,p_view_id=>wwv_flow_imp.id(9857270859053172)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9861815125053180)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9863278040053182)
,p_view_id=>wwv_flow_imp.id(9857270859053172)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9862861332053182)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9864251011053184)
,p_view_id=>wwv_flow_imp.id(9857270859053172)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9863877355053183)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9865208953053185)
,p_view_id=>wwv_flow_imp.id(9857270859053172)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9864884810053185)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9866281107053187)
,p_view_id=>wwv_flow_imp.id(9857270859053172)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(9865809662053186)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9867188871053204)
,p_plug_name=>'Order Items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_ORDER_ITEMS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(9856157906053170)
,p_prn_page_header=>'OEHR_ORDER_ITEMS'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9868421381053206)
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
 p_id=>wwv_flow_imp.id(9868962500053207)
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
 p_id=>wwv_flow_imp.id(9869951241053209)
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
,p_parent_column_id=>wwv_flow_imp.id(9858923689053176)
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9870943545053210)
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
 p_id=>wwv_flow_imp.id(9871904304053212)
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
 p_id=>wwv_flow_imp.id(9872957150053214)
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
 p_id=>wwv_flow_imp.id(9873904367053215)
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
 p_id=>wwv_flow_imp.id(9874915273053217)
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
 p_id=>wwv_flow_imp.id(9867627639053205)
,p_internal_uid=>9867627639053205
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>wwv_flow_imp.id(9792265236052797)
,p_update_authorization_scheme=>wwv_flow_imp.id(9792265236052797)
,p_delete_authorization_scheme=>wwv_flow_imp.id(9792265236052797)
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
 p_id=>wwv_flow_imp.id(9868028415053206)
,p_interactive_grid_id=>wwv_flow_imp.id(9867627639053205)
,p_static_id=>'98681'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>10
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9868219106053206)
,p_report_id=>wwv_flow_imp.id(9868028415053206)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9869339629053208)
,p_view_id=>wwv_flow_imp.id(9868219106053206)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(9868962500053207)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9870316089053209)
,p_view_id=>wwv_flow_imp.id(9868219106053206)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9869951241053209)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9871373311053211)
,p_view_id=>wwv_flow_imp.id(9868219106053206)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9870943545053210)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9872391078053213)
,p_view_id=>wwv_flow_imp.id(9868219106053206)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9871904304053212)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9873342940053214)
,p_view_id=>wwv_flow_imp.id(9868219106053206)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9872957150053214)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9874382376053216)
,p_view_id=>wwv_flow_imp.id(9868219106053206)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9873904367053215)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9875373544053217)
,p_view_id=>wwv_flow_imp.id(9868219106053206)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9874915273053217)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9855799929053169)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9855390608053168)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
,p_security_scheme=>wwv_flow_imp.id(9792265236052797)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9866879638053188)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9856157906053170)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'OEHR_ORDERS - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9855799929053169)
,p_internal_uid=>9866879638053188
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9875989815053218)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9867188871053204)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'OEHR_ORDER_ITEMS - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9855799929053169)
,p_internal_uid=>9875989815053218
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
 p_id=>wwv_flow_imp.id(9881150923053232)
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
 p_id=>wwv_flow_imp.id(9881522906053234)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(9785391022052777)
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
 p_id=>wwv_flow_imp.id(9883142913053237)
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
 p_id=>wwv_flow_imp.id(9887746815053246)
,p_query_column_id=>1
,p_column_alias=>'EMPLOYEE_ID'
,p_column_display_sequence=>0
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:RP:P9_EMPLOYEE_ID:\#EMPLOYEE_ID#\'
,p_column_linktext=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_column_alignment=>'CENTER'
,p_report_column_required_role=>wwv_flow_imp.id(9792265236052797)
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9888132761053247)
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
 p_id=>wwv_flow_imp.id(9888531286053248)
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
 p_id=>wwv_flow_imp.id(9888971776053248)
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
 p_id=>wwv_flow_imp.id(9889342122053249)
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
 p_id=>wwv_flow_imp.id(9889738983053249)
,p_query_column_id=>6
,p_column_alias=>'HIRE_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Hire Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9890132783053250)
,p_query_column_id=>7
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>7
,p_column_heading=>'Job'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(9884060809053239)
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9890585964053251)
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
 p_id=>wwv_flow_imp.id(9890927494053251)
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
 p_id=>wwv_flow_imp.id(9891320017053252)
,p_query_column_id=>10
,p_column_alias=>'MANAGER_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Manager'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(9821468911052859)
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9891727394053253)
,p_query_column_id=>11
,p_column_alias=>'DEPARTMENT_ID'
,p_column_display_sequence=>11
,p_column_heading=>'Department'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_named_lov=>wwv_flow_imp.id(9885180889053241)
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9883242792053237)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(9883142913053237)
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
 p_id=>wwv_flow_imp.id(9886624720053243)
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
 p_id=>wwv_flow_imp.id(9893410506053256)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(9785391022052777)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9892266025053254)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9883142913053237)
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
 p_id=>wwv_flow_imp.id(9887186598053245)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9886624720053243)
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
 p_id=>wwv_flow_imp.id(9883738159053238)
,p_name=>'P8_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9883242792053237)
,p_prompt=>'Search'
,p_source=>'FIRST_NAME,EMAIL,PHONE_NUMBER,JOB_ID,MANAGER_ID,LAST_NAME'
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
 p_id=>wwv_flow_imp.id(9884450463053239)
,p_name=>'P8_JOB_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9883242792053237)
,p_prompt=>'Job'
,p_source=>'JOB_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'OEHR_JOBS.JOB_TITLE'
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
 p_id=>wwv_flow_imp.id(9884806622053240)
,p_name=>'P8_MANAGER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9883242792053237)
,p_prompt=>'Manager'
,p_source=>'MANAGER_ID'
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
 p_id=>wwv_flow_imp.id(9885572809053241)
,p_name=>'P8_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9883242792053237)
,p_prompt=>'Department'
,p_source=>'DEPARTMENT_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'OEHR_DEPARTMENTS.DEPARTMENT_NAME'
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
 p_id=>wwv_flow_imp.id(9885927292053242)
,p_name=>'P8_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9883242792053237)
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
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
 p_id=>wwv_flow_imp.id(9886392356053243)
,p_name=>'P8_COMMISSION_PCT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9883242792053237)
,p_prompt=>'Commission Percent'
,p_source=>'COMMISSION_PCT'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC2:<0#D#15;|.15,0#D#15 - 0#D#2;.15|.2,0#D#2 - 0#D#25;.2|.25,0#D#25 - 0#D#3;.25|.3,>=0#D#3;.3|'
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
 p_id=>wwv_flow_imp.id(9892541424053255)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9883142913053237)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9893088428053256)
,p_event_id=>wwv_flow_imp.id(9892541424053255)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9883142913053237)
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
,p_required_role=>wwv_flow_imp.id(9792265236052797)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9894498978053259)
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
 p_id=>wwv_flow_imp.id(9902406225053523)
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
 p_id=>wwv_flow_imp.id(9902853368053524)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9902406225053523)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9904252800053525)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9902406225053523)
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
 p_id=>wwv_flow_imp.id(9904686875053526)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9902406225053523)
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
 p_id=>wwv_flow_imp.id(9905068421053526)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9902406225053523)
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
 p_id=>wwv_flow_imp.id(9894851384053259)
,p_name=>'P9_EMPLOYEE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9894498978053259)
,p_item_source_plug_id=>wwv_flow_imp.id(9894498978053259)
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
 p_id=>wwv_flow_imp.id(9895131205053510)
,p_name=>'P9_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9894498978053259)
,p_item_source_plug_id=>wwv_flow_imp.id(9894498978053259)
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
 p_id=>wwv_flow_imp.id(9895590031053511)
,p_name=>'P9_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9894498978053259)
,p_item_source_plug_id=>wwv_flow_imp.id(9894498978053259)
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
 p_id=>wwv_flow_imp.id(9895926224053512)
,p_name=>'P9_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9894498978053259)
,p_item_source_plug_id=>wwv_flow_imp.id(9894498978053259)
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
 p_id=>wwv_flow_imp.id(9896395229053512)
,p_name=>'P9_PHONE_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9894498978053259)
,p_item_source_plug_id=>wwv_flow_imp.id(9894498978053259)
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
 p_id=>wwv_flow_imp.id(9896773036053513)
,p_name=>'P9_HIRE_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9894498978053259)
,p_item_source_plug_id=>wwv_flow_imp.id(9894498978053259)
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
 p_id=>wwv_flow_imp.id(9897124169053514)
,p_name=>'P9_JOB_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9894498978053259)
,p_item_source_plug_id=>wwv_flow_imp.id(9894498978053259)
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
 p_id=>wwv_flow_imp.id(9897545043053514)
,p_name=>'P9_SALARY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9894498978053259)
,p_item_source_plug_id=>wwv_flow_imp.id(9894498978053259)
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
 p_id=>wwv_flow_imp.id(9897931104053515)
,p_name=>'P9_COMMISSION_PCT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9894498978053259)
,p_item_source_plug_id=>wwv_flow_imp.id(9894498978053259)
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
 p_id=>wwv_flow_imp.id(9898346832053516)
,p_name=>'P9_MANAGER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(9894498978053259)
,p_item_source_plug_id=>wwv_flow_imp.id(9894498978053259)
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
 p_id=>wwv_flow_imp.id(9898787759053517)
,p_name=>'P9_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(9894498978053259)
,p_item_source_plug_id=>wwv_flow_imp.id(9894498978053259)
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
 p_id=>wwv_flow_imp.id(9902924556053524)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9902853368053524)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9903799127053525)
,p_event_id=>wwv_flow_imp.id(9902924556053524)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9905815639053527)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9894498978053259)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Employee'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9905815639053527
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9906269594053528)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9906269594053528
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9905472395053527)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9894498978053259)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Employee'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9905472395053527
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(9792010066052797)
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
 p_id=>wwv_flow_imp.id(9913888968054516)
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
 p_id=>wwv_flow_imp.id(9913911417054516)
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
,p_internal_uid=>9913911417054516
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9914639429054518)
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
 p_id=>wwv_flow_imp.id(9915005073054519)
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
 p_id=>wwv_flow_imp.id(10013543311059560)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'100136'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'REGION_NAME'
,p_sort_column_1=>'REGION_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9915575453054520)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9913888968054516)
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
 p_id=>wwv_flow_imp.id(9915848066054520)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9913888968054516)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9916369565054521)
,p_event_id=>wwv_flow_imp.id(9915848066054520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9913888968054516)
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_required_role=>wwv_flow_imp.id(9792010066052797)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9907749276054265)
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
 p_id=>wwv_flow_imp.id(9909452040054510)
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
 p_id=>wwv_flow_imp.id(9909800659054510)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9909452040054510)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9911298456054512)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9909452040054510)
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
 p_id=>wwv_flow_imp.id(9911618576054513)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9909452040054510)
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
 p_id=>wwv_flow_imp.id(9912083851054513)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9909452040054510)
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
 p_id=>wwv_flow_imp.id(9908137592054265)
,p_name=>'P11_REGION_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9907749276054265)
,p_item_source_plug_id=>wwv_flow_imp.id(9907749276054265)
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
 p_id=>wwv_flow_imp.id(9908442301054508)
,p_name=>'P11_REGION_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9907749276054265)
,p_item_source_plug_id=>wwv_flow_imp.id(9907749276054265)
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
 p_id=>wwv_flow_imp.id(9909928140054510)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9909800659054510)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9910756086054512)
,p_event_id=>wwv_flow_imp.id(9909928140054510)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9912817932054514)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9907749276054265)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Region'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9912817932054514
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9913233780054515)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9913233780054515
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9912405219054514)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9907749276054265)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Region'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9912405219054514
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(9792010066052797)
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
 p_id=>wwv_flow_imp.id(9925289603055523)
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
 p_id=>wwv_flow_imp.id(9925325919055523)
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
,p_internal_uid=>9925325919055523
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9926035805055525)
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
 p_id=>wwv_flow_imp.id(9926461736055525)
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
 p_id=>wwv_flow_imp.id(9926830416055526)
,p_db_column_name=>'REGION_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Region'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(9919319529055514)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10018107357059568)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'100182'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COUNTRY_ID:COUNTRY_NAME:REGION_ID:'
,p_sort_column_1=>'COUNTRY_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9927396058055527)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9925289603055523)
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
 p_id=>wwv_flow_imp.id(9927668709055528)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9925289603055523)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9928197741055528)
,p_event_id=>wwv_flow_imp.id(9927668709055528)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9925289603055523)
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_required_role=>wwv_flow_imp.id(9792010066052797)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9918168063055272)
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
 p_id=>wwv_flow_imp.id(9920885520055517)
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
 p_id=>wwv_flow_imp.id(9921217159055517)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9920885520055517)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9922646777055520)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9920885520055517)
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
 p_id=>wwv_flow_imp.id(9923065348055520)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9920885520055517)
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
 p_id=>wwv_flow_imp.id(9923456020055521)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9920885520055517)
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
 p_id=>wwv_flow_imp.id(9918575694055272)
,p_name=>'P13_COUNTRY_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9918168063055272)
,p_item_source_plug_id=>wwv_flow_imp.id(9918168063055272)
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
 p_id=>wwv_flow_imp.id(9918864214055514)
,p_name=>'P13_COUNTRY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9918168063055272)
,p_item_source_plug_id=>wwv_flow_imp.id(9918168063055272)
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
 p_id=>wwv_flow_imp.id(9919226545055514)
,p_name=>'P13_REGION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9918168063055272)
,p_item_source_plug_id=>wwv_flow_imp.id(9918168063055272)
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
 p_id=>wwv_flow_imp.id(9921351071055518)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9921217159055517)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9922120707055519)
,p_event_id=>wwv_flow_imp.id(9921351071055518)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9924247835055522)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9918168063055272)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Country'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9924247835055522
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9924664534055522)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9924664534055522
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9923854941055521)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9918168063055272)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Country'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9923854941055521
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(9792010066052797)
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
 p_id=>wwv_flow_imp.id(9937015817056517)
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
 p_id=>wwv_flow_imp.id(9937158988056517)
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
,p_internal_uid=>9937158988056517
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9937882731056519)
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
 p_id=>wwv_flow_imp.id(9938249335056519)
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
 p_id=>wwv_flow_imp.id(9938677434056520)
,p_db_column_name=>'LOCATION_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(9931166147056508)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10023396927059577)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'100234'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WAREHOUSE_NAME:LOCATION_ID'
,p_sort_column_1=>'WAREHOUSE_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9939146833056521)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9937015817056517)
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
 p_id=>wwv_flow_imp.id(9939471536056521)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9937015817056517)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9939989757056522)
,p_event_id=>wwv_flow_imp.id(9939471536056521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9937015817056517)
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_required_role=>wwv_flow_imp.id(9792010066052797)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9929965251056259)
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
 p_id=>wwv_flow_imp.id(9932646652056510)
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
 p_id=>wwv_flow_imp.id(9933092138056511)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9932646652056510)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9934480162056513)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9932646652056510)
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
 p_id=>wwv_flow_imp.id(9934868735056514)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9932646652056510)
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
 p_id=>wwv_flow_imp.id(9935299037056514)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9932646652056510)
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
 p_id=>wwv_flow_imp.id(9930347926056259)
,p_name=>'P15_WAREHOUSE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9929965251056259)
,p_item_source_plug_id=>wwv_flow_imp.id(9929965251056259)
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
 p_id=>wwv_flow_imp.id(9930614317056507)
,p_name=>'P15_WAREHOUSE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9929965251056259)
,p_item_source_plug_id=>wwv_flow_imp.id(9929965251056259)
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
 p_id=>wwv_flow_imp.id(9931044583056508)
,p_name=>'P15_LOCATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9929965251056259)
,p_item_source_plug_id=>wwv_flow_imp.id(9929965251056259)
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
 p_id=>wwv_flow_imp.id(9933155168056511)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9933092138056511)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9933938540056512)
,p_event_id=>wwv_flow_imp.id(9933155168056511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9936033591056515)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9929965251056259)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Warehouse'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9936033591056515
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9936429341056516)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9936429341056516
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9935658863056515)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9929965251056259)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Warehouse'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9935658863056515
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(9792010066052797)
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
 p_id=>wwv_flow_imp.id(9954195110057531)
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
 p_id=>wwv_flow_imp.id(9954235846057531)
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
,p_internal_uid=>9954235846057531
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9954902979057532)
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
 p_id=>wwv_flow_imp.id(9955397391057533)
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
 p_id=>wwv_flow_imp.id(9955703472057534)
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
 p_id=>wwv_flow_imp.id(9956190606057534)
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
 p_id=>wwv_flow_imp.id(9956582473057535)
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
 p_id=>wwv_flow_imp.id(9956995748057535)
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
 p_id=>wwv_flow_imp.id(9957335842057536)
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
 p_id=>wwv_flow_imp.id(9957793171057537)
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
 p_id=>wwv_flow_imp.id(9958194053057537)
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
 p_id=>wwv_flow_imp.id(9958595922057538)
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
 p_id=>wwv_flow_imp.id(9958958703057539)
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
 p_id=>wwv_flow_imp.id(10029037778059587)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'100291'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCT_NAME:PRODUCT_DESCRIPTION:WEIGHT_CLASS:WARRANTY_PERIOD:PRODUCT_STATUS:LIST_PRICE:MIN_PRICE:CATALOG_URL'
,p_sort_column_1=>'PRODUCT_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9959408969057539)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9954195110057531)
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
 p_id=>wwv_flow_imp.id(9959789442057540)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9954195110057531)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9960220446057540)
,p_event_id=>wwv_flow_imp.id(9959789442057540)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9954195110057531)
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_required_role=>wwv_flow_imp.id(9792010066052797)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9941735698057268)
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
 p_id=>wwv_flow_imp.id(9949737408057525)
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
 p_id=>wwv_flow_imp.id(9950117309057525)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9949737408057525)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9951537239057527)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9949737408057525)
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
 p_id=>wwv_flow_imp.id(9951952298057528)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9949737408057525)
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
 p_id=>wwv_flow_imp.id(9952376363057528)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9949737408057525)
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
 p_id=>wwv_flow_imp.id(9942144555057269)
,p_name=>'P17_PRODUCT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9941735698057268)
,p_item_source_plug_id=>wwv_flow_imp.id(9941735698057268)
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
 p_id=>wwv_flow_imp.id(9942459916057513)
,p_name=>'P17_PRODUCT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9941735698057268)
,p_item_source_plug_id=>wwv_flow_imp.id(9941735698057268)
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
 p_id=>wwv_flow_imp.id(9942881840057514)
,p_name=>'P17_PRODUCT_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9941735698057268)
,p_item_source_plug_id=>wwv_flow_imp.id(9941735698057268)
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
 p_id=>wwv_flow_imp.id(9943236664057514)
,p_name=>'P17_CATEGORY_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9941735698057268)
,p_item_source_plug_id=>wwv_flow_imp.id(9941735698057268)
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
 p_id=>wwv_flow_imp.id(9943617849057515)
,p_name=>'P17_WEIGHT_CLASS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9941735698057268)
,p_item_source_plug_id=>wwv_flow_imp.id(9941735698057268)
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
 p_id=>wwv_flow_imp.id(9944062472057516)
,p_name=>'P17_WARRANTY_PERIOD'
,p_source_data_type=>'INTERVAL_Y2M'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9941735698057268)
,p_item_source_plug_id=>wwv_flow_imp.id(9941735698057268)
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
 p_id=>wwv_flow_imp.id(9944421509057516)
,p_name=>'P17_SUPPLIER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9941735698057268)
,p_item_source_plug_id=>wwv_flow_imp.id(9941735698057268)
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
 p_id=>wwv_flow_imp.id(9944886040057517)
,p_name=>'P17_PRODUCT_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9941735698057268)
,p_item_source_plug_id=>wwv_flow_imp.id(9941735698057268)
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
 p_id=>wwv_flow_imp.id(9945244587057518)
,p_name=>'P17_LIST_PRICE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9941735698057268)
,p_item_source_plug_id=>wwv_flow_imp.id(9941735698057268)
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
 p_id=>wwv_flow_imp.id(9945661248057518)
,p_name=>'P17_MIN_PRICE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(9941735698057268)
,p_item_source_plug_id=>wwv_flow_imp.id(9941735698057268)
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
 p_id=>wwv_flow_imp.id(9946067601057519)
,p_name=>'P17_CATALOG_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(9941735698057268)
,p_item_source_plug_id=>wwv_flow_imp.id(9941735698057268)
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
 p_id=>wwv_flow_imp.id(9950269310057525)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9950117309057525)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9951058441057527)
,p_event_id=>wwv_flow_imp.id(9950269310057525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9953162385057529)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9941735698057268)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Product Information'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9953162385057529
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9953547020057530)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9953547020057530
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9952705968057529)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9941735698057268)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Product Information'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9952705968057529
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(9792010066052797)
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
 p_id=>wwv_flow_imp.id(9969549945058507)
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
 p_id=>wwv_flow_imp.id(9969626780058507)
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
,p_internal_uid=>9969626780058507
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9970375846058508)
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
 p_id=>wwv_flow_imp.id(9970792363058509)
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
 p_id=>wwv_flow_imp.id(9971131547058509)
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
 p_id=>wwv_flow_imp.id(9971596213058510)
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
 p_id=>wwv_flow_imp.id(10045967989059616)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'100460'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'JOB_ID:JOB_TITLE:MIN_SALARY:MAX_SALARY:'
,p_sort_column_1=>'JOB_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9972019177058511)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9969549945058507)
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
 p_id=>wwv_flow_imp.id(9972319658058511)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9969549945058507)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9972888294058512)
,p_event_id=>wwv_flow_imp.id(9972319658058511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9969549945058507)
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_required_role=>wwv_flow_imp.id(9792010066052797)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9962089527058251)
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
 p_id=>wwv_flow_imp.id(9965143550058500)
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
 p_id=>wwv_flow_imp.id(9965574321058500)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9965143550058500)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9966973334058503)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9965143550058500)
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
 p_id=>wwv_flow_imp.id(9967375839058503)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9965143550058500)
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
 p_id=>wwv_flow_imp.id(9967712217058504)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9965143550058500)
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
 p_id=>wwv_flow_imp.id(9962496551058252)
,p_name=>'P19_JOB_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9962089527058251)
,p_item_source_plug_id=>wwv_flow_imp.id(9962089527058251)
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
 p_id=>wwv_flow_imp.id(9962774443058495)
,p_name=>'P19_JOB_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9962089527058251)
,p_item_source_plug_id=>wwv_flow_imp.id(9962089527058251)
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
 p_id=>wwv_flow_imp.id(9963192794058496)
,p_name=>'P19_MIN_SALARY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9962089527058251)
,p_item_source_plug_id=>wwv_flow_imp.id(9962089527058251)
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
 p_id=>wwv_flow_imp.id(9963534487058497)
,p_name=>'P19_MAX_SALARY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9962089527058251)
,p_item_source_plug_id=>wwv_flow_imp.id(9962089527058251)
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
 p_id=>wwv_flow_imp.id(9965669534058500)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9965574321058500)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9966409068058502)
,p_event_id=>wwv_flow_imp.id(9965669534058500)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9968502165058505)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9962089527058251)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Job'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9968502165058505
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9968971800058505)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9968971800058505
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9968148043058504)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9962089527058251)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Job'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9968148043058504
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(9792010066052797)
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
 p_id=>wwv_flow_imp.id(9982125432059505)
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
 p_id=>wwv_flow_imp.id(9982263394059505)
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
,p_internal_uid=>9982263394059505
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9982965558059506)
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
 p_id=>wwv_flow_imp.id(9983396772059507)
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
 p_id=>wwv_flow_imp.id(9983792349059507)
,p_db_column_name=>'MANAGER_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Manager'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(9821468911052859)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9984132601059508)
,p_db_column_name=>'LOCATION_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(9931166147056508)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10052999186059629)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'100530'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DEPARTMENT_NAME:MANAGER_ID:LOCATION_ID'
,p_sort_column_1=>'DEPARTMENT_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9984678021059509)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9982125432059505)
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
 p_id=>wwv_flow_imp.id(9984966118059509)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9982125432059505)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9985495368059510)
,p_event_id=>wwv_flow_imp.id(9984966118059509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9982125432059505)
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_required_role=>wwv_flow_imp.id(9792010066052797)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9974618881059245)
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
 p_id=>wwv_flow_imp.id(9977704698059498)
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
 p_id=>wwv_flow_imp.id(9978155070059499)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9977704698059498)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9979559305059501)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9977704698059498)
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
 p_id=>wwv_flow_imp.id(9979923329059501)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9977704698059498)
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
 p_id=>wwv_flow_imp.id(9980365246059502)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9977704698059498)
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
 p_id=>wwv_flow_imp.id(9975010813059246)
,p_name=>'P21_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9974618881059245)
,p_item_source_plug_id=>wwv_flow_imp.id(9974618881059245)
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
 p_id=>wwv_flow_imp.id(9975369011059494)
,p_name=>'P21_DEPARTMENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9974618881059245)
,p_item_source_plug_id=>wwv_flow_imp.id(9974618881059245)
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
 p_id=>wwv_flow_imp.id(9975729486059495)
,p_name=>'P21_MANAGER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9974618881059245)
,p_item_source_plug_id=>wwv_flow_imp.id(9974618881059245)
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
 p_id=>wwv_flow_imp.id(9976140324059495)
,p_name=>'P21_LOCATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9974618881059245)
,p_item_source_plug_id=>wwv_flow_imp.id(9974618881059245)
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
 p_id=>wwv_flow_imp.id(9978297707059499)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9978155070059499)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9979025606059500)
,p_event_id=>wwv_flow_imp.id(9978297707059499)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9981177293059503)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9974618881059245)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Department'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9981177293059503
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9981526728059503)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9981526728059503
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9980768059059502)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9974618881059245)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Department'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9980768059059502
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
 p_id=>wwv_flow_imp.id(9801844002052821)
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
 p_id=>wwv_flow_imp.id(9803918141052826)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9801844002052821)
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
 p_id=>wwv_flow_imp.id(9802388074052823)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9801844002052821)
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
 p_id=>wwv_flow_imp.id(9802711682052824)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9801844002052821)
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
 p_id=>wwv_flow_imp.id(9803179201052825)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9801844002052821)
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
 p_id=>wwv_flow_imp.id(9803587992052825)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9801844002052821)
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
 p_id=>wwv_flow_imp.id(9806197132052830)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9806197132052830
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(9806619619052831)
,p_page_process_id=>wwv_flow_imp.id(9806197132052830)
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
 p_id=>wwv_flow_imp.id(9807101723052832)
,p_page_process_id=>wwv_flow_imp.id(9806197132052830)
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
 p_id=>wwv_flow_imp.id(9804277885052827)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9804277885052827
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(9804719649052828)
,p_page_process_id=>wwv_flow_imp.id(9804277885052827)
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
 p_id=>wwv_flow_imp.id(9805273281052829)
,p_page_process_id=>wwv_flow_imp.id(9804277885052827)
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
 p_id=>wwv_flow_imp.id(9805736207052830)
,p_page_process_id=>wwv_flow_imp.id(9804277885052827)
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
 p_id=>wwv_flow_imp.id(9808026678052833)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9808026678052833
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9807687716052832)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>9807687716052832
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(9792010066052797)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10248128470059971)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(9785391022052777)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10257376188059983)
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
 p_id=>wwv_flow_imp.id(10257770965059984)
,p_plug_name=>'Application Administration'
,p_parent_plug_id=>wwv_flow_imp.id(10257376188059983)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(10254665999059980)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10258192740059985)
,p_plug_name=>'Configuration'
,p_parent_plug_id=>wwv_flow_imp.id(10257376188059983)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_list_id=>wwv_flow_imp.id(10248864479059972)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(9789798026052791)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10258573573059985)
,p_plug_name=>'User Interface'
,p_parent_plug_id=>wwv_flow_imp.id(10257376188059983)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_list_id=>wwv_flow_imp.id(10249584552059973)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(9790128723052791)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10258974200059986)
,p_plug_name=>'Activity Reports'
,p_parent_plug_id=>wwv_flow_imp.id(10257376188059983)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_list_id=>wwv_flow_imp.id(10250281014059974)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(9789462724052791)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10259360296059986)
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
 p_id=>wwv_flow_imp.id(10259779505059987)
,p_plug_name=>'Access Control'
,p_parent_plug_id=>wwv_flow_imp.id(10259360296059986)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(9789381899052791)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10260593875059988)
,p_plug_name=>'ACL Information'
,p_parent_plug_id=>wwv_flow_imp.id(10259779505059987)
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
 p_id=>wwv_flow_imp.id(10260999704059989)
,p_name=>'User Counts Report'
,p_parent_plug_id=>wwv_flow_imp.id(10259779505059987)
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
 p_id=>wwv_flow_imp.id(10261670606059991)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10262041991059991)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10262472423059992)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10265587850059996)
,p_plug_name=>'Access Control Actions'
,p_parent_plug_id=>wwv_flow_imp.id(10259779505059987)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(10252952090059978)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10265975896059997)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(10259360296059986)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(9789593500052791)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10266308982059997)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(10265975896059997)
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
 p_id=>wwv_flow_imp.id(10267049097059999)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10267461032060000)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10269376090060003)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(10265975896059997)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(10253924791059979)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10260124310059987)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10259779505059987)
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
 p_id=>wwv_flow_imp.id(10264698649059995)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10260124310059987)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10265131743059996)
,p_event_id=>wwv_flow_imp.id(10264698649059995)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10260999704059989)
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(9792010066052797)
,p_required_patch=>wwv_flow_imp.id(9789798026052791)
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
 p_id=>wwv_flow_imp.id(10072177977059662)
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
 p_id=>wwv_flow_imp.id(10072365853059663)
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
 p_id=>wwv_flow_imp.id(10072919997059663)
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
,p_internal_uid=>10072919997059663
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10073692854059665)
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
 p_id=>wwv_flow_imp.id(10074043881059666)
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
 p_id=>wwv_flow_imp.id(10074430004059667)
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
 p_id=>wwv_flow_imp.id(10074834064059667)
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
 p_id=>wwv_flow_imp.id(10075299500059668)
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
 p_id=>wwv_flow_imp.id(10075666282059669)
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
 p_id=>wwv_flow_imp.id(10076050810059670)
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
 p_id=>wwv_flow_imp.id(10078807745059675)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'100789'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_OPTION:STATUS:DESCRIPTION:UPDATED:UPDATED_BY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10080494541059678)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10072177977059662)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10079789734059676)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10072365853059663)
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
 p_id=>wwv_flow_imp.id(10081239724059679)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10080825683059678)
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
,p_internal_uid=>10080825683059678
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(9792010066052797)
,p_required_patch=>wwv_flow_imp.id(9790128723052791)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10081473465059680)
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
 p_id=>wwv_flow_imp.id(10081584758059680)
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
 p_id=>wwv_flow_imp.id(10083952766059684)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10081473465059680)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10082515096059682)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10081473465059680)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10084360119059684)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10084617457059685)
,p_name=>'P10020_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10081584758059680)
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
 p_id=>wwv_flow_imp.id(10085305233059686)
,p_name=>'P10020_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10081584758059680)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End User Theme Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.theme_style_by_user_pref',
'  from apex_applications a',
' where a.application_id  = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_lov=>'.'||wwv_flow_imp.id(10085427920059686)||'.'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If checked, end users may choose their own Theme Style using the Customize link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10082657699059682)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10082515096059682)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10083373036059683)
,p_event_id=>wwv_flow_imp.id(10082657699059682)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10086562560059688)
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
,p_internal_uid=>10086562560059688
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10086972859059689)
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
,p_internal_uid=>10086972859059689
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_imp.id(9792010066052797)
,p_required_patch=>wwv_flow_imp.id(9789462724052791)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10087281947059689)
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
 p_id=>wwv_flow_imp.id(10087392939059689)
,p_region_id=>wwv_flow_imp.id(10087281947059689)
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
 p_id=>wwv_flow_imp.id(10089432561059692)
,p_chart_id=>wwv_flow_imp.id(10087392939059689)
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
 p_id=>wwv_flow_imp.id(10090019419059692)
,p_chart_id=>wwv_flow_imp.id(10087392939059689)
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
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10090691158059693)
,p_chart_id=>wwv_flow_imp.id(10087392939059689)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10087477434059689)
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
 p_id=>wwv_flow_imp.id(10087548112059689)
,p_region_id=>wwv_flow_imp.id(10087477434059689)
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
 p_id=>wwv_flow_imp.id(10094405163059699)
,p_chart_id=>wwv_flow_imp.id(10087548112059689)
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
 p_id=>wwv_flow_imp.id(10095079596059700)
,p_chart_id=>wwv_flow_imp.id(10087548112059689)
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
 p_id=>wwv_flow_imp.id(10095609556059701)
,p_chart_id=>wwv_flow_imp.id(10087548112059689)
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
 p_id=>wwv_flow_imp.id(10087647415059689)
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
 p_id=>wwv_flow_imp.id(10087756513059689)
,p_region_id=>wwv_flow_imp.id(10087647415059689)
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
 p_id=>wwv_flow_imp.id(10091989622059695)
,p_chart_id=>wwv_flow_imp.id(10087756513059689)
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
 p_id=>wwv_flow_imp.id(10092557149059696)
,p_chart_id=>wwv_flow_imp.id(10087756513059689)
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
 p_id=>wwv_flow_imp.id(10093193234059697)
,p_chart_id=>wwv_flow_imp.id(10087756513059689)
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
 p_id=>wwv_flow_imp.id(10087879035059689)
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
 p_id=>wwv_flow_imp.id(10096730899059703)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10097186554059704)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_column_format=>'SINCE'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10087953418059689)
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
 p_id=>wwv_flow_imp.id(10099978037059710)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10100307055059710)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>'Last Activity'
,p_column_format=>'SINCE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10088098935059689)
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
 p_id=>wwv_flow_imp.id(10102609506059714)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10087281947059689)
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
 p_id=>wwv_flow_imp.id(10103027898059715)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10087477434059689)
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
 p_id=>wwv_flow_imp.id(10103437284059715)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10087647415059689)
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
 p_id=>wwv_flow_imp.id(10103830160059716)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10087879035059689)
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
 p_id=>wwv_flow_imp.id(10088180121059689)
,p_name=>'P10030_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10088098935059689)
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
 p_id=>wwv_flow_imp.id(10088219597059689)
,p_name=>'Change Filters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10030_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10105459484059719)
,p_event_id=>wwv_flow_imp.id(10088219597059689)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10087281947059689)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10105976711059720)
,p_event_id=>wwv_flow_imp.id(10088219597059689)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10087647415059689)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10106414779059720)
,p_event_id=>wwv_flow_imp.id(10088219597059689)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10087477434059689)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10106934110059721)
,p_event_id=>wwv_flow_imp.id(10088219597059689)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10087879035059689)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10107480370059722)
,p_event_id=>wwv_flow_imp.id(10088219597059689)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10087953418059689)
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
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
,p_required_role=>wwv_flow_imp.id(9792010066052797)
,p_required_patch=>wwv_flow_imp.id(9789462724052791)
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
 p_id=>wwv_flow_imp.id(10140265176059782)
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
 p_id=>wwv_flow_imp.id(10141332466059783)
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
,p_internal_uid=>10141332466059783
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10142019774059786)
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
 p_id=>wwv_flow_imp.id(10142452888059787)
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
 p_id=>wwv_flow_imp.id(10142865634059788)
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
 p_id=>wwv_flow_imp.id(10143211816059788)
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
 p_id=>wwv_flow_imp.id(10143694995059789)
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
 p_id=>wwv_flow_imp.id(10144091722059790)
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
 p_id=>wwv_flow_imp.id(10144445537059791)
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
 p_id=>wwv_flow_imp.id(10144826077059792)
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
 p_id=>wwv_flow_imp.id(10147933979059803)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'101480'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10140379369059782)
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
 p_id=>wwv_flow_imp.id(10140564440059782)
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
 p_id=>wwv_flow_imp.id(10140645369059782)
,p_region_id=>wwv_flow_imp.id(10140564440059782)
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
 p_id=>wwv_flow_imp.id(10151515613059810)
,p_chart_id=>wwv_flow_imp.id(10140645369059782)
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
 p_id=>wwv_flow_imp.id(10148817865059805)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10140265176059782)
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
 p_id=>wwv_flow_imp.id(10140757331059782)
,p_name=>'P10031_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10140379369059782)
,p_prompt=>'View As'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_lov=>'.'||wwv_flow_imp.id(10152093942059811)||'.'
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
 p_id=>wwv_flow_imp.id(10140982558059782)
,p_name=>'P10031_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10140379369059782)
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
 p_id=>wwv_flow_imp.id(10140472224059782)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10031_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10150188334059808)
,p_event_id=>wwv_flow_imp.id(10140472224059782)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10140265176059782)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10153585388059813)
,p_event_id=>wwv_flow_imp.id(10140472224059782)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10140265176059782)
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(9792010066052797)
,p_required_patch=>wwv_flow_imp.id(9789462724052791)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10133311939059768)
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
 p_id=>wwv_flow_imp.id(10133908232059768)
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
,p_internal_uid=>10133908232059768
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10134601835059770)
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
 p_id=>wwv_flow_imp.id(10135085143059771)
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
 p_id=>wwv_flow_imp.id(10135471293059774)
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
 p_id=>wwv_flow_imp.id(10135847375059774)
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
 p_id=>wwv_flow_imp.id(10136245737059775)
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
 p_id=>wwv_flow_imp.id(10136660386059776)
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
 p_id=>wwv_flow_imp.id(10139098602059780)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'101391'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10139927842059782)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10133311939059768)
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(9792010066052797)
,p_required_patch=>wwv_flow_imp.id(9789462724052791)
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
 p_id=>wwv_flow_imp.id(10119217655059743)
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
 p_id=>wwv_flow_imp.id(10119885798059743)
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
,p_internal_uid=>10119885798059743
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10120542039059745)
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
 p_id=>wwv_flow_imp.id(10120992876059746)
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
 p_id=>wwv_flow_imp.id(10121381630059746)
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
 p_id=>wwv_flow_imp.id(10121758778059747)
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
 p_id=>wwv_flow_imp.id(10122150790059748)
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
 p_id=>wwv_flow_imp.id(10122583711059748)
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
 p_id=>wwv_flow_imp.id(10122992076059749)
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
 p_id=>wwv_flow_imp.id(10123350770059750)
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
 p_id=>wwv_flow_imp.id(10123700813059750)
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
 p_id=>wwv_flow_imp.id(10124168764059751)
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
 p_id=>wwv_flow_imp.id(10124525217059752)
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
 p_id=>wwv_flow_imp.id(10124927030059752)
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
 p_id=>wwv_flow_imp.id(10125384973059753)
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
 p_id=>wwv_flow_imp.id(10125787288059753)
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
 p_id=>wwv_flow_imp.id(10130665690059763)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'101307'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10119334625059743)
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
 p_id=>wwv_flow_imp.id(10131586407059764)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10119217655059743)
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
 p_id=>wwv_flow_imp.id(10119101071059743)
,p_name=>'P10033_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10119334625059743)
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
 p_id=>wwv_flow_imp.id(10119480193059743)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10033_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10132882634059767)
,p_event_id=>wwv_flow_imp.id(10119480193059743)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10119217655059743)
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(9792010066052797)
,p_required_patch=>wwv_flow_imp.id(9789462724052791)
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
 p_id=>wwv_flow_imp.id(10107920633059723)
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
 p_id=>wwv_flow_imp.id(10108539260059723)
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
,p_internal_uid=>10108539260059723
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10109291955059724)
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
 p_id=>wwv_flow_imp.id(10109699867059725)
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
 p_id=>wwv_flow_imp.id(10110002211059726)
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
 p_id=>wwv_flow_imp.id(10110437525059727)
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
 p_id=>wwv_flow_imp.id(10110866946059727)
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
 p_id=>wwv_flow_imp.id(10111255763059728)
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
 p_id=>wwv_flow_imp.id(10111607706059728)
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
 p_id=>wwv_flow_imp.id(10112046329059729)
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
 p_id=>wwv_flow_imp.id(10112479910059730)
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
 p_id=>wwv_flow_imp.id(10112804882059730)
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
 p_id=>wwv_flow_imp.id(10116588914059738)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'101166'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10108031887059723)
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
 p_id=>wwv_flow_imp.id(10117445477059739)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10107920633059723)
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
 p_id=>wwv_flow_imp.id(10107828642059723)
,p_name=>'P10034_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10108031887059723)
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
 p_id=>wwv_flow_imp.id(10108190863059723)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10034_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10118785044059742)
,p_event_id=>wwv_flow_imp.id(10108190863059723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10107920633059723)
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(9792010066052797)
,p_required_patch=>wwv_flow_imp.id(9789462724052791)
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
 p_id=>wwv_flow_imp.id(10154012087059814)
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
 p_id=>wwv_flow_imp.id(10154640888059815)
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
,p_internal_uid=>10154640888059815
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10155358078059816)
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
 p_id=>wwv_flow_imp.id(10155782228059817)
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
 p_id=>wwv_flow_imp.id(10156107888059817)
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
 p_id=>wwv_flow_imp.id(10156547624059818)
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
 p_id=>wwv_flow_imp.id(10156995998059819)
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
 p_id=>wwv_flow_imp.id(10157345406059819)
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
 p_id=>wwv_flow_imp.id(10157776443059820)
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
 p_id=>wwv_flow_imp.id(10158178781059820)
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
 p_id=>wwv_flow_imp.id(10158537376059821)
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
 p_id=>wwv_flow_imp.id(10161915393059827)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'101620'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'START_TIMESTAMP:AUTOMATION_NAME:STATUS:SUCCESSFUL_ROW_COUNT:ERROR_ROW_COUNT:MSG_COUNT'
,p_sort_column_1=>'START_TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10162802055059829)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10154012087059814)
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(9792010066052797)
,p_required_patch=>wwv_flow_imp.id(9789462724052791)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10163409966059829)
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
 p_id=>wwv_flow_imp.id(10165837619059833)
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
 p_id=>wwv_flow_imp.id(10166253686059834)
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
 p_id=>wwv_flow_imp.id(10166683280059835)
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
 p_id=>wwv_flow_imp.id(10167087289059836)
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
 p_id=>wwv_flow_imp.id(10167428000059836)
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
 p_id=>wwv_flow_imp.id(10163880646059830)
,p_name=>'P10036_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10163409966059829)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10164249284059831)
,p_name=>'P10036_AUTOMATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10163409966059829)
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
 p_id=>wwv_flow_imp.id(10164642485059831)
,p_name=>'P10036_START_TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10163409966059829)
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
 p_id=>wwv_flow_imp.id(10165059022059832)
,p_name=>'P10036_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10163409966059829)
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
 p_id=>wwv_flow_imp.id(10165456671059833)
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
,p_internal_uid=>10165456671059833
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(9792010066052797)
,p_required_patch=>wwv_flow_imp.id(9789381899052791)
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
 p_id=>wwv_flow_imp.id(10169634937059840)
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
 p_id=>wwv_flow_imp.id(10169703213059840)
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
 p_id=>wwv_flow_imp.id(10170934576059843)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10169703213059840)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10171280570059843)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10169703213059840)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10172676090059845)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10172994087059845)
,p_name=>'P10040_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10169634937059840)
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
 p_id=>wwv_flow_imp.id(10171356720059843)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10171280570059843)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10172098504059844)
,p_event_id=>wwv_flow_imp.id(10171356720059843)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10173319682059846)
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
,p_internal_uid=>10173319682059846
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(9792010066052797)
,p_required_patch=>wwv_flow_imp.id(9789381899052791)
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
 p_id=>wwv_flow_imp.id(10173791609059847)
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
 p_id=>wwv_flow_imp.id(10174503815059847)
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
,p_internal_uid=>10174503815059847
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10175285876059849)
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
 p_id=>wwv_flow_imp.id(10175618552059850)
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
 p_id=>wwv_flow_imp.id(10176090242059850)
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
 p_id=>wwv_flow_imp.id(10177626078059853)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'101777'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10178541001059855)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10173791609059847)
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
 p_id=>wwv_flow_imp.id(10178969934059855)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10173791609059847)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10043:&APP_SESSION.::&DEBUG.:10043::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10179314622059856)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10173791609059847)
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
 p_id=>wwv_flow_imp.id(10173839004059847)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(10173791609059847)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10179968451059857)
,p_event_id=>wwv_flow_imp.id(10173839004059847)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10173791609059847)
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(9792010066052797)
,p_required_patch=>wwv_flow_imp.id(9789381899052791)
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
 p_id=>wwv_flow_imp.id(10180471697059857)
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
 p_id=>wwv_flow_imp.id(10180527254059857)
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
 p_id=>wwv_flow_imp.id(10183382136059862)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10180527254059857)
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
 p_id=>wwv_flow_imp.id(10183742968059862)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10180527254059857)
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
 p_id=>wwv_flow_imp.id(10181565049059859)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10180527254059857)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10182986196059861)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10180527254059857)
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
 p_id=>wwv_flow_imp.id(10184015713059863)
,p_name=>'P10042_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10180471697059857)
,p_item_source_plug_id=>wwv_flow_imp.id(10180471697059857)
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
 p_id=>wwv_flow_imp.id(10184450579059863)
,p_name=>'P10042_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10180471697059857)
,p_item_source_plug_id=>wwv_flow_imp.id(10180471697059857)
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
 p_id=>wwv_flow_imp.id(10184840867059864)
,p_name=>'P10042_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10180471697059857)
,p_item_source_plug_id=>wwv_flow_imp.id(10180471697059857)
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
 p_id=>wwv_flow_imp.id(10185204290059865)
,p_name=>'P10042_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10180471697059857)
,p_item_source_plug_id=>wwv_flow_imp.id(10180471697059857)
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
 p_id=>wwv_flow_imp.id(10186524362059867)
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
 p_id=>wwv_flow_imp.id(10181653583059859)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10181565049059859)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10182360357059860)
,p_event_id=>wwv_flow_imp.id(10181653583059859)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10186809463059870)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(10180471697059857)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Manage User Access'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10186809463059870
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10187280628059871)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10180471697059857)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Manage User Access'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10187280628059871
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10187626489059871)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10187626489059871
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(9792010066052797)
,p_required_patch=>wwv_flow_imp.id(9789381899052791)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10188004641059872)
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
 p_id=>wwv_flow_imp.id(10188172603059872)
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
 p_id=>wwv_flow_imp.id(10188248423059872)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10188004641059872)
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
 p_id=>wwv_flow_imp.id(10190272631059874)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10188004641059872)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10191516452059876)
,p_branch_action=>'f?p=&APP_ID.:10044:&APP_SESSION.::&DEBUG.:RP,10044::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(10188248423059872)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10191929853059877)
,p_name=>'P10043_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10188172603059872)
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
 p_id=>wwv_flow_imp.id(10192339368059878)
,p_name=>'P10043_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10188172603059872)
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
 p_id=>wwv_flow_imp.id(10192773023059878)
,p_name=>'P10043_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10188172603059872)
,p_prompt=>'Username Format'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_imp.id(10192876671059878)||'.'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10190389597059874)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10190272631059874)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10191057826059875)
,p_event_id=>wwv_flow_imp.id(10190389597059874)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10193899220059880)
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
,p_process_when_button_id=>wwv_flow_imp.id(10188248423059872)
,p_internal_uid=>10193899220059880
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .fa {',
'  color: var(--ut-component-text-muted-color);',
'}',
'',
'.a-ListView-item .u-success-text {',
'  color: var(--ut-palette-success) !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(9792010066052797)
,p_required_patch=>wwv_flow_imp.id(9789381899052791)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10188367087059872)
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
 p_id=>wwv_flow_imp.id(10188447299059872)
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
 p_id=>wwv_flow_imp.id(10188661878059872)
,p_name=>'Exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(10188447299059872)
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
 p_id=>wwv_flow_imp.id(10195705062059885)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10196106656059886)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10188799195059872)
,p_plug_name=>'&P10044_VALID_COUNT. Users to Add'
,p_parent_plug_id=>wwv_flow_imp.id(10188447299059872)
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
 p_id=>wwv_flow_imp.id(10188829661059872)
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
 p_id=>wwv_flow_imp.id(10199201645059891)
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
 p_id=>wwv_flow_imp.id(10199965872059893)
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
 p_id=>wwv_flow_imp.id(10188929928059872)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10188367087059872)
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
 p_id=>wwv_flow_imp.id(10200689728059895)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10188367087059872)
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
 p_id=>wwv_flow_imp.id(10201069674059895)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10188367087059872)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10202353460059897)
,p_name=>'P10044_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10188829661059872)
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
 p_id=>wwv_flow_imp.id(10202768763059898)
,p_name=>'P10044_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10188829661059872)
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
 p_id=>wwv_flow_imp.id(10203176345059898)
,p_name=>'P10044_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10188829661059872)
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
 p_id=>wwv_flow_imp.id(10201176948059895)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10201069674059895)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10201867359059896)
,p_event_id=>wwv_flow_imp.id(10201176948059895)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10203561136059899)
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
,p_process_when_button_id=>wwv_flow_imp.id(10188929928059872)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>10203561136059899
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10203930404059900)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10203930404059900
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(9789593500052791)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10204386420059900)
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
 p_id=>wwv_flow_imp.id(10204421232059900)
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
 p_id=>wwv_flow_imp.id(10204551184059900)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10204421232059900)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10207582889059903)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10204421232059900)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10215234037059915)
,p_branch_action=>'f?p=&APP_ID.:10051:&APP_SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10208888823059905)
,p_name=>'P10050_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10204386420059900)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10209288430059906)
,p_name=>'P10050_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10204386420059900)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10209618759059906)
,p_name=>'P10050_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10204386420059900)
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
 p_id=>wwv_flow_imp.id(10210007899059907)
,p_name=>'P10050_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(10204386420059900)
,p_prompt=>'Experience'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_lov=>'.'||wwv_flow_imp.id(10210186343059907)||'.'
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
 p_id=>wwv_flow_imp.id(10211922995059910)
,p_name=>'P10050_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10204386420059900)
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
 p_id=>wwv_flow_imp.id(10214840119059914)
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
 p_id=>wwv_flow_imp.id(10207669049059903)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10207582889059903)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10208339220059904)
,p_event_id=>wwv_flow_imp.id(10207669049059903)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10212308299059911)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Submit Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'SUBMIT_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10204551184059900)
,p_process_success_message=>'Feedback Submitted'
,p_internal_uid=>10212308299059911
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10212800001059911)
,p_page_process_id=>wwv_flow_imp.id(10212308299059911)
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
 p_id=>wwv_flow_imp.id(10213308785059912)
,p_page_process_id=>wwv_flow_imp.id(10212308299059911)
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
 p_id=>wwv_flow_imp.id(10213874176059913)
,p_page_process_id=>wwv_flow_imp.id(10212308299059911)
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
 p_id=>wwv_flow_imp.id(10214372934059913)
,p_page_process_id=>wwv_flow_imp.id(10212308299059911)
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(9789593500052791)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10204982102059900)
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
 p_id=>wwv_flow_imp.id(10204820422059900)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10204982102059900)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_css_classes=>'w40p'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10205054428059900)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10204820422059900)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10216822576059917)
,p_event_id=>wwv_flow_imp.id(10205054428059900)
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(9792010066052797)
,p_required_patch=>wwv_flow_imp.id(9789593500052791)
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
 p_id=>wwv_flow_imp.id(10206238633059901)
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
 p_id=>wwv_flow_imp.id(10229720893059936)
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
,p_internal_uid=>10229720893059936
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10230493388059938)
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
 p_id=>wwv_flow_imp.id(10230845211059939)
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
 p_id=>wwv_flow_imp.id(10231243217059939)
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
 p_id=>wwv_flow_imp.id(10231682227059940)
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
 p_id=>wwv_flow_imp.id(10232057471059941)
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
 p_id=>wwv_flow_imp.id(10232427117059941)
,p_db_column_name=>'RATING'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Rating'
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(10210186343059907)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10232819928059942)
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
 p_id=>wwv_flow_imp.id(10233209431059942)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(10222563534059926)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10233629304059943)
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
 p_id=>wwv_flow_imp.id(10234009085059944)
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
 p_id=>wwv_flow_imp.id(10234442085059945)
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
 p_id=>wwv_flow_imp.id(10234846026059945)
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
 p_id=>wwv_flow_imp.id(10235253641059946)
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
 p_id=>wwv_flow_imp.id(10239846940059954)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'102399'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:CREATED:CREATED_BY:FEEDBACK:RATING:STATUS:RESPONSE:UPDATED:UPDATED_BY'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10240736647059956)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10206238633059901)
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
 p_id=>wwv_flow_imp.id(10206148525059901)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(10206238633059901)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10241406200059957)
,p_event_id=>wwv_flow_imp.id(10206148525059901)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10206238633059901)
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(9792010066052797)
,p_required_patch=>wwv_flow_imp.id(9789593500052791)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10205535870059900)
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
 p_id=>wwv_flow_imp.id(10205602115059900)
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
 p_id=>wwv_flow_imp.id(10205756646059900)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10205602115059900)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10218491916059920)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10205602115059900)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10205951777059900)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10205602115059900)
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
 p_id=>wwv_flow_imp.id(10220049625059922)
,p_name=>'P10054_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10205535870059900)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10220457267059923)
,p_name=>'P10054_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10205535870059900)
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
 p_id=>wwv_flow_imp.id(10220811285059923)
,p_name=>'P10054_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10205535870059900)
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
 p_id=>wwv_flow_imp.id(10221234735059924)
,p_name=>'P10054_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10205535870059900)
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
 p_id=>wwv_flow_imp.id(10221698004059925)
,p_name=>'P10054_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10205535870059900)
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
 p_id=>wwv_flow_imp.id(10222074194059925)
,p_name=>'P10054_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10205535870059900)
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
 p_id=>wwv_flow_imp.id(10222497892059926)
,p_name=>'P10054_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10205535870059900)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_lov=>'.'||wwv_flow_imp.id(10222563534059926)||'.'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10224722081059929)
,p_name=>'P10054_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(10205535870059900)
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
 p_id=>wwv_flow_imp.id(10218540618059920)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10218491916059920)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10219275731059921)
,p_event_id=>wwv_flow_imp.id(10218540618059920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10225210809059930)
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
,p_internal_uid=>10225210809059930
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10225555573059931)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Reply to Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'REPLY_TO_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10205756646059900)
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>10225555573059931
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10226025313059931)
,p_page_process_id=>wwv_flow_imp.id(10225555573059931)
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
 p_id=>wwv_flow_imp.id(10226544457059932)
,p_page_process_id=>wwv_flow_imp.id(10225555573059931)
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
 p_id=>wwv_flow_imp.id(10227031856059933)
,p_page_process_id=>wwv_flow_imp.id(10225555573059931)
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
 p_id=>wwv_flow_imp.id(10227464649059933)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Delete Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'DELETE_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10205951777059900)
,p_process_success_message=>'Feedback Deleted'
,p_internal_uid=>10227464649059933
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10227974113059934)
,p_page_process_id=>wwv_flow_imp.id(10227464649059933)
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
 p_id=>wwv_flow_imp.id(10228492435059935)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10205951777059900)
,p_internal_uid=>10228492435059935
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10228879896059935)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10228879896059935
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
,p_group_id=>wwv_flow_imp.id(9793680760052801)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(9790055653052791)
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10242305395059958)
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
,p_required_patch=>wwv_flow_imp.id(9790055653052791)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10243086465059960)
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
 p_id=>wwv_flow_imp.id(10243402799059960)
,p_name=>'P10061_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10243086465059960)
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
,p_group_id=>wwv_flow_imp.id(10269742077060004)
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_patch=>wwv_flow_imp.id(10270267323060004)
,p_protection_level=>'C'
,p_help_text=>'This page contains a list of settings applicable to the current application user.'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10274850055060012)
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
 p_id=>wwv_flow_imp.id(10275250211060012)
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
 p_id=>wwv_flow_imp.id(10275705685060013)
,p_region_id=>wwv_flow_imp.id(10275250211060012)
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
 p_id=>wwv_flow_imp.id(10276238930060014)
,p_plug_name=>'Settings'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(10273846852060010)
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
,p_group_id=>wwv_flow_imp.id(10269742077060004)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(10269964837060004)
,p_protection_level=>'C'
,p_help_text=>'This page contains the settings for controlling push notification subscription for the current user.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10271235870060006)
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
 p_id=>wwv_flow_imp.id(10271639120060007)
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
 p_id=>wwv_flow_imp.id(10270975691060005)
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
 p_id=>wwv_flow_imp.id(10272135630060008)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10271639120060007)
,p_prompt=>'Enable push notifications on this device'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10272451615060008)
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
 p_id=>wwv_flow_imp.id(10272904875060009)
,p_event_id=>wwv_flow_imp.id(10272451615060008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Subscribe to push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.subscribePushNotifications();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10273435780060009)
,p_event_id=>wwv_flow_imp.id(10272451615060008)
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



-- sqlcl_snapshot {"hash":"1ce8d17038849f9865669439888d4c4cc6090ffc","type":"APEX","name":"f100.sql","schemaName":"DEMO","sxml":""}