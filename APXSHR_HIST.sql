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
,p_release=>'24.2.14'
,p_default_workspace_id=>39255728663008783908
,p_default_application_id=>201748
,p_default_id_offset=>58955915731191300424
,p_default_owner=>'WKSP_SDVLOWCODE'
);
end;
/
 
prompt APPLICATION 201748 - History Tables, Views and Audit Triggers 3.1
--
-- Application Export:
--   Application:     201748
--   Name:            History Tables, Views and Audit Triggers 3.1
--   Date and Time:   17:19 Saturday March 14, 2026
--   Exported By:     SCOTTV
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     23
--       Items:                   50
--       Computations:             1
--       Validations:              3
--       Processes:               26
--       Regions:                 61
--       Buttons:                 38
--       Dynamic Actions:         16
--     Shared Components:
--       Logic:
--         App Settings:           2
--         Build Options:          5
--       Navigation:
--         Lists:                  6
--         Breadcrumbs:            1
--           Entries:              2
--       Security:
--         Authentication:         3
--         Authorization:          3
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                  13
--         Shortcuts:              1
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--       Install scripts:          6
--   Version:         24.2.14
--   Instance ID:     63113759365424
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
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_SDVLOWCODE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'History Tables, Views and Audit Triggers 3.1')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'APXSHR_HIST')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'112902F35775E045E7586FA7FF2D86C6549BAABB60F04CC8FACCEE11ECB2892F'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_accessible_read_only=>'N'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2024.05.06.'
,p_authentication_id=>wwv_flow_imp.id(60549128491176471986)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'History Tables, Views and Audit Triggers'
,p_app_builder_icon_name=>'app-icon.svg'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 3.1'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_pass_ecid=>'N'
,p_security_scheme=>wwv_flow_imp.id(60549058103196428318)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_tokenize_row_search=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'test generate history'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>7
,p_version_scn=>15684578655078
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(58955915731191098676)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(60541369874823301275)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(60541509341150301514)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(60541369874823301275)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(60541519493528301620)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(60549050777711424242)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(60541512145456301566)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10000'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(60541509341150301514)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(60541520969900301637)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(60541521488051301637)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(60541520969900301637)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(60541521927845301638)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_imp.id(60541520969900301637)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(60549050227631424235)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&SESSION.::&DEBUG.:10010:P10010_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(60549015131862424113)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/feedback
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(60549051865857424252)
,p_name=>'Feedback'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(60549015131862424113)
,p_version_scn=>15674314001591
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(60549052310803424253)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Feedback Settings'
,p_list_item_link_target=>'f?p=&APP_ID.:10012:&SESSION.::&DEBUG.:10012:::'
,p_list_item_icon=>'fa-envelope-user'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_text_01=>'Manage if attachments should be allowed.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(60549052662593424253)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'User Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10013:&SESSION.::&DEBUG.:10013:::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>'Report of all feedback submitted by application users'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(60549091957807428366)
,p_name=>'Access Control'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(60549056733117428311)
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(60549092417997428366)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10021:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(60549092836605428367)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(60553141124812804078)
,p_name=>'Activity Reports'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(60553073946072803759)
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(60553141521943804081)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&SESSION.::&DEBUG.:10030:::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'View application activity metrics'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(60553141907184804085)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&SESSION.::&DEBUG.:10031:::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report of page views aggregated by user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(60553142315818804085)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Application Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10032:&SESSION.::&DEBUG.:10032:::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report of errors logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(60553142693889804085)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Performance'
,p_list_item_link_target=>'f?p=&APP_ID.:10033:&SESSION.::&DEBUG.:10033:::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>'Report of activity and performance by application page'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(60553143043560804086)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Views'
,p_list_item_link_target=>'f?p=&APP_ID.:10034:&SESSION.::&DEBUG.:RR,10034:::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report of each page view by user including date of access and elapsed time'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(60553143521103804086)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Automations Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10035:&SESSION.::&DEBUG.:RR,10035:::'
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
prompt --application/shared_components/navigation/lists/application_configuration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(86869673514833510958)
,p_name=>'Application Configuration'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(86869663911043510929)
,p_version_scn=>15654547086172
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(86869673928095510959)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Configuration Options'
,p_list_item_link_target=>'f?p=&APP_ID.:10040:&APP_SESSION.::&DEBUG.:10040::'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>'Enable or disable application features'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/app_icon_svg
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '3C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667222076696577426F783D22302030203634203634222077696474683D22363422206865696768743D223634223E3C726563742077696474683D2231303025';
wwv_flow_imp.g_varchar2_table(2) := '22206865696768743D2231303025222066696C6C3D222345393542353422202F3E3C67206F7061636974793D222E32223E3C7061746820643D224D333220323661322E3520322E3520302031203020322E3520322E3541322E35303320322E3530332030';
wwv_flow_imp.g_varchar2_table(3) := '203020302033322032367A6D30203461312E3520312E3520302031203120312E352D312E3541312E35303220312E3530322030203020312033322033307A222F3E3C7061746820643D224D34322E3533362033362E3832386C2D322E3637332D322E3637';
wwv_flow_imp.g_varchar2_table(4) := '324131382E3937332031382E39373320302030203020343020333263302D352E3835352D322E3732332D31312E3439332D372E3636382D31352E383734612E352E352030203020302D2E36363420304332362E3732332032302E3530372032342032362E';
wwv_flow_imp.g_varchar2_table(5) := '3134352032342033326131382E3937332031382E393733203020302030202E31333720322E3135366C2D322E36373320322E36373341342E39363720342E3936372030203020302032302034302E3336345634372E35612E352E35203020302030202E35';
wwv_flow_imp.g_varchar2_table(6) := '2E3568312E30373561332E30303220332E30303220302030203020312E3935322D2E3732326C342E332D332E363835632E3431312E3538322E38343720312E31353520312E33323220312E37313261322E30303120322E30303120302030203020312E35';
wwv_flow_imp.g_varchar2_table(7) := '32372E363935682E38323476312E35612E352E3520302030203020312030563436682E38323461322E30303120322E30303120302030203020312E3532372D2E3639352032332E37382032332E373820302030203020312E3332332D312E3731326C342E';
wwv_flow_imp.g_varchar2_table(8) := '32393820332E36383461332E30303220332E30303220302030203020312E3935332E3732334834332E35612E352E35203020302030202E352D2E35762D372E31333661342E393720342E39372030203020302D312E3436342D332E3533367A4D33322031';
wwv_flow_imp.g_varchar2_table(9) := '372E3137334132322E3839372032322E3839372030203020312033362E363237203233682D392E3235344132322E3839372032322E3839372030203020312033322031372E3137337A4D32322E3837362034362E3532613220322030203020312D312E33';
wwv_flow_imp.g_varchar2_table(10) := '2E343831483231762D362E36333661332E39373320332E39373320302030203120312E3137312D322E3832386C322E31342D322E31346132302E3330312032302E33303120302030203020322E39353920372E3335377A6D31312E3231342D312E383633';
wwv_flow_imp.g_varchar2_table(11) := '61312E30313420312E3031342030203020312D2E3736362E3334344833322E35762D392E35612E352E352030203020302D312030563435682D2E38323461312E30313420312E3031342030203020312D2E3736362D2E3334344131392E342031392E3420';
wwv_flow_imp.g_varchar2_table(12) := '30203020312032352033326131382E3434362031382E34343620302030203120312E3835382D386831302E3238344131382E3434362031382E3434362030203020312033392033326131392E342031392E342030203020312D342E39312031322E363536';
wwv_flow_imp.g_varchar2_table(13) := '7A4D3433203437682D2E353735613220322030203020312D312E3330322D2E3438326C2D342E3339332D332E3736356132302E332032302E3320302030203020322E3935382D372E3335386C322E313420322E313441332E39373520332E393735203020';
wwv_flow_imp.g_varchar2_table(14) := '3020312034332034302E3336347A222F3E3C2F673E3C7061746820643D224D33322031372E3137334132322E3839372032322E3839372030203020312033362E363237203233682D392E3235344132322E3839372032322E383937203020302031203332';
wwv_flow_imp.g_varchar2_table(15) := '2031372E3137337A4D32322E3837362034362E3532613220322030203020312D312E332E343831483231762D362E36333661332E39373320332E39373320302030203120312E3137312D322E3832386C322E31342D322E31346132302E3330312032302E';
wwv_flow_imp.g_varchar2_table(16) := '33303120302030203020322E39353920372E3335377A4D3433203437682D2E353735613220322030203020312D312E3330322D2E3438326C2D342E3339332D332E3736356132302E332032302E3320302030203020322E3935382D372E3335386C322E31';
wwv_flow_imp.g_varchar2_table(17) := '3420322E313441332E39373520332E3937352030203020312034332034302E3336347A222066696C6C3D222366636662666122206F7061636974793D222E34222F3E3C7061746820643D224D33372E3134322032344832362E3835384131382E34343620';
wwv_flow_imp.g_varchar2_table(18) := '31382E3434362030203020302032352033326131392E342031392E3420302030203020342E39312031322E36353620312E30313420312E303134203020302030202E3736362E333434682E383234762D392E35612E352E35203020302031203120305634';
wwv_flow_imp.g_varchar2_table(19) := '35682E38323461312E30313420312E303134203020302030202E3736362D2E3334344131392E342031392E342030203020302033392033326131382E3434362031382E3434362030203020302D312E3835382D387A4D333220333161322E3520322E3520';
wwv_flow_imp.g_varchar2_table(20) := '302031203120322E352D322E3541322E35303320322E3530332030203020312033322033317A222066696C6C3D222366666622206F7061636974793D222E3935222F3E3C7061746820643D224D333220333061312E3520312E3520302031203120312E35';
wwv_flow_imp.g_varchar2_table(21) := '2D312E3541312E35303220312E3530322030203020312033322033307A222066696C6C3D222366636662666122206F7061636974793D222E36222F3E3C2F7376673E';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(60541510547691301554)
,p_file_name=>'app-icon.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/app_icon_css
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E6170702D69636F6E207B0A202020206261636B67726F756E642D696D6167653A2075726C286170702D69636F6E2E737667293B0A202020206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0A202020206261636B67726F756E';
wwv_flow_imp.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20234539354235343B0A7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(60541510918288301562)
,p_file_name=>'app-icon.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/apex_data_pkg_apxshr_lov_details_61918_zip
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '504B0304140000080800C489325B8EB49F3FA9010000EE0D0000170000004150585348525F4C4F565F44455441494C532E6A736F6ECD96E16B824018C6BFF757C47DDAA0857A5AED3ECD4CA8A139F456AC310E971704A6A1D688D8FFBE136B45E0B8C629';
wwv_flow_imp.g_varchar2_table(2) := '7D10E47D1F1FB91FAF8FEFBE0196195DA500BD37F6EC3E00486BB440186F49E4AF28C90BF0500896E93AF47764EB870081BEE5F4C14527A0E9FCAC95C64946E224A009896280A24D18B2AA3FCF965BE61C316BF096EBE86241D2CC67E2C0FF95E5451A05';
wwv_flow_imp.g_varchar2_table(3) := 'E7A57942FD8CE68F2992A23D48BD0759C33244124450022701F9DC318D673818B727234377BD277330D5DDC1B33336BDB6E1D8B978B30EFE763B08F8DCFC308CBFC82665670D6848B3B3037E375A07B4B2C2C7168F6CD3C3BAFD72D7B96F4E4778D8CC2B';
wwv_flow_imp.g_varchar2_table(4) := 'CD197B610972EC4DF1AC56E62A52BBE2981FDD2A600EF9984F74D718EA6E09DF8951335C4D1309B770130FB7C7C776A0E3B2C13DB66A442BA922D1166EE2D176F9D01AE5316CD41FC322A7165636B51D4EB437130710A9B248B0855B05592B5DFF7F2BFB';
wwv_flow_imp.g_varchar2_table(5) := 'A15D486ACC074511990F855B05ACE5FFEE129663E816CF4661D5BE5240A1D10C2B8A6659BD6AA5506E234434F6E58BA37B74134FF7910FEEF8D5EE9B65F97C6AD638BCB2D0DC9005E7C607BB7E00504B0304140000080800C489325B76975590F8010000';
wwv_flow_imp.g_varchar2_table(6) := 'CB0900001F0000004150585348525F4C4F565F44455441494C535F70726F66696C652E6A736F6EBD96518BE23010C7DFF753943E9B63D75DB9C3B79EA9AC50ED62AB879C47C825E9D9BB3429495464D9EF7E6914E538BBAC5A5A68A13399E9EF3F19A679';
wwv_flow_imp.g_varchar2_table(7) := 'BDF33C3FCB3903665732DFEB7B4F9DCAA473F1CB1A95DC56B60C73CD3AC7A54C1049ED82CAE507D16377960EBFF8CE6F0380669C11239573E786157AEF5B315C4569900B90E54A9BFFD313BDA9B273A91975E14B7F1F9B49452CA3CA0BB05DD99CBAC4C4';
wwv_flow_imp.g_varchar2_table(8) := 'E11AB53E844ABE2E84B636FBF6DDDE9EF7EA9ED62770E116FB23E8D23923C5061F55774F6646F20273405678AFE0D39910C0997061A7B87F55D35350AEC16F2DC551A8B3BF756A08A3788E26C138446DA172B941D5D7D16DCC7094BC44C102CD83A886FB';
wwv_flow_imp.g_varchar2_table(9) := 'A19EEDE1FEBE1E8EE6BAE478873698370108C364703961EF23849469722D62124F53144F61384593B89D9DD752192415650A09792D7730484773DBAD93BA767D6FDBCF736162F28DED4771754386C3214AD2C056140635588FF5589FCF63B12C43DA605B';
wwv_flow_imp.g_varchar2_table(10) := '338A4F49ED602AB00105D67FDCAA85BDC0780C205CFAE9D27F7EEE3EF5C7A37E92DCA2259CC0A6953041DBD5319886411AD675C9E5228862D830DABE02F4757179AB777BBD7765A09FBB6BB1662FB0D1C2AE4BDA72610F0A9A2DEC41C60D850DA228FE86';
wwv_flow_imp.g_varchar2_table(11) := '66891DC9308CC2B4E129C7B9DCA2B5B6D3975ABBF9D0C0B3CF1FEEB45362658F48D5014AEF7FA0776F7F01504B01021400140000080800C489325B8EB49F3FA9010000EE0D0000170000000000000000002000B681000000004150585348525F4C4F565F';
wwv_flow_imp.g_varchar2_table(12) := '44455441494C532E6A736F6E504B01021400140000080800C489325B76975590F8010000CB0900001F0000000000000000002000B681DE0100004150585348525F4C4F565F44455441494C535F70726F66696C652E6A736F6E504B050600000000020002';
wwv_flow_imp.g_varchar2_table(13) := '0092000000130400000000';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(86904224011206873115)
,p_file_name=>'APEX$DATA$PKG/APXSHR_LOV_DETAILS$61918.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/apex_data_pkg_apxshr_lov_name_975458_zip
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '504B0304140000080800F489325BC54A5392E000000067010000140000004150585348525F4C4F565F4E414D452E6A736F6E8D8FDF4BC3301080DFFB57943CBBD16E0CA44F9676B009AED2047588846B73482026A5492B63F8BF7BC19F4F222490FBEEBB';
wwv_flow_imp.g_varchar2_table(2) := 'BBDC39613AE08B67C56372A6B762C53AB960300C128C06E2ACBC7DE0BB56EEF65C304A19374B0BC46B08908AD3803E05ABD2B2EB469C3504EDACFF1215FA9E15763286807763906E54384AEBBE29F441CF28B5A5D1EC180BFB1121600C57D96AB3C82E17';
wwv_flow_imp.g_varchar2_table(3) := 'F946E4EB22A393FF1264772287578D10CBBB7D55B6FC6A5BDF976D7DDD1CB67C593537519E06F577B74FE17FDD9E8DEBC0C8B8DBC78F0F918231EE554E9E36536830E04FF22D79A2FB0E504B0304140000080800F489325B7A72CB3BE501000092080000';
wwv_flow_imp.g_varchar2_table(4) := '1C0000004150585348525F4C4F565F4E414D455F70726F66696C652E6A736F6EBD96F14BE33014C77FF7AF28FD7939743AEED86F75ED69A15BC7DA29E28E10D3CCC54B9392641B22FEEF26D9D8945BE5EC8A8506FA5EBEE9E7BDE6BDF4E5C4F3FC396504';
wwv_flow_imp.g_varchar2_table(5) := 'E8E78AF85EDFBBE85893A2FCD118A5585BDB1C31453ABBA98463519809D6E507C979779AFFFEE53BBF11004518C15A48E7A69A946AE35B1064550A500EE6542AFDEFF258ADECEA4C285238F9CCDF68E74262C3286909D60BB3A6AA1076B85A2EB752C196';
wwv_flow_imp.g_varchar2_table(6) := '2557C6669EEECDED792F6E343E8E4A37D98F43B79C331648A35DD4DDBD99605A2206F0026D22F871400218E14EB6D77D8CBAD88BA8024F4AF05DA0CEFEDAA9210CC66318247190D5809ED5C3F44E4F0FD3A0AA828851A49A4225E90D1C055F273AAB2362';
wwv_flow_imp.g_varchar2_table(7) := '6205393A06278CB2418B29B2400551B82952964E72984EC2680247E9F7EC3125A486421644422E1A6FB7411EDF44301ED515C6675FB766B7614D570452DEB806069328C8A33AA2F37AA29F8789B02448937738A69B94488312A9BF6EC29DB9C07008C270';
wwv_flow_imp.g_varchar2_table(8) := 'E6E733FFFABA7BD11FC6FD2C3B32027879F7F5B4767BBD4FC3800FCF4DB1A6E3B0D5C42EABE29B13BB8DA0DDC46EC33822B157497A1924D036A6364BE9918907C4A06D4E4794539024E92D9C66A637855112E52D973B63620D97CAB4A1C2D8F57F55BE19';
wwv_flow_imp.g_varchar2_table(9) := 'FFB853BB42D21CF5F64740B9779CBCBE01504B01021400140000080800F489325BC54A5392E000000067010000140000000000000000002000B681000000004150585348525F4C4F565F4E414D452E6A736F6E504B01021400140000080800F489325B7A';
wwv_flow_imp.g_varchar2_table(10) := '72CB3BE5010000920800001C0000000000000000002000B681120100004150585348525F4C4F565F4E414D455F70726F66696C652E6A736F6E504B050600000000020002008C000000310300000000';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(86904463099324568687)
,p_file_name=>'APEX$DATA$PKG/APXSHR_LOV_NAME$975458.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/apex_data_pkg_apxshr_pgm_options_370288_zip
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '504B03041400000808007B9D6D5BE4F730251A0B0000533B0000170000004150585348525F50474D5F4F5054494F4E532E6A736F6EED5B7B73DA4812FF3F9FA2C3DD56C19EEC208C1D9B54EA4A06C5A6C22B20FC58DBA5123080CA4262F5B0C36EEEBB5F';
wwv_flow_imp.g_varchar2_table(2) := 'CF434202C97158D8DBBD822A83D4D3D3D3D3D3FDEB9E91FCFB9B9CE9939997ABDCBDF9FD4DCE98CF757394ABD88165BD91D8AD61990636E794CE4DEFB2AB5FD67B5A0E9B9CB9AFDB4EAE2287D7C68C20D7A5E9F98EBB004D396FA8A091D9DC327C127678';
wwv_flow_imp.g_varchar2_table(3) := '322CFC738753C345DE6A57553455B0DE75BAEAA7FACD031BA0DDBDBD77EFED8303A8D51A3021367151CA08060BB8EBF7D4EE033836DCD5B0F703049E694F4099CFE14EE974F47AED0186866551E238B087BEE9D815B8FBD46F55B57ABBF5704805431EEA';
wwv_flow_imp.g_varchar2_table(4) := '3568F59BE76A576204AE85DE529A2A5C29DDEAA5D22DE5E5D269413457DB8D7EB395DDAE30E9B1A664834E7505FA95249FDF2EBB948E8FC34EC8A8E8DA6D474D6DED7C96D774D7BBED6BFD4AEDF6A816BC31FFB3540CBBB41B35FDAABA94562E16A3B696';
wwv_flow_imp.g_varchar2_table(5) := '7A9DD946FB7169C911699F343AE55F9D2AE55DA5513EAD075ABDA9F634A5D981FC495C9D8C26DEEB5AFB25D90AD775ED9291E097764B4DC87925B390DC48E76EB4AB4A236B801FEA43C7A936DAE740BF6272566994EF9CD2CE937CABB4EAA55AFD0C7983';
wwv_flow_imp.g_varchar2_table(6) := 'B93998E8D8F741B1587A5FE73F12FFE927EE6AFCA75000B5459D3EF4AA6EBDA9746FE1B37A0BF97AADC0A8FD5EBD7501F5564DBD11DC8CCC1AD9DFBBF04A0433675D0D668CCA1B19D033571B208FCEBC89B452BAB465144BF1908D8D1087223B980D881B';
wwv_flow_imp.g_varchar2_table(7) := 'A15D481E388E450C3BA20F5DA2073E0256A9583A3E289E1EC8C79A5CAC1C1D574A724EB4CF273384400A9373F295A251054A45F9ECB4143204E6481F22B2E67AD5B6C610D4254F9E9D2AF8A4523A5972BC285A0859131ECE65683983B5098E2824AF127D';
wwv_flow_imp.g_varchar2_table(8) := '73463CDF98CDA3167336D16748D5FDC59C24A863D32202F163540AEBBA47FC04D1323C5F0FE6231C34A293F158C7A15C7F9548EC18DF7FDE481B65A4D24B19A9A77EE9ABADEA2B5353C4BDE682D802D0ACB7AE94465F05199ACA0DBF3C7BE183FE8C829B';
wwv_flow_imp.g_varchar2_table(9) := '6A4B03047E191032BA1A870B4474040C0C678CF376BB5B4360A594DB6A83513EAB6A87FEF6105490708108A034769A22B71A292715B9BCA348E182F791B249A41CA547CA555DBD7E5D7CB4BBD0553B0D0523E453BB8BDFACEB5AB05CD18422C5B03906CD';
wwv_flow_imp.g_varchar2_table(10) := '12AF84A4589D2445C591E82352938EA9495062D58E84554BEB422D80D2DB694078C422439F5E992396327D6320D696DD0E1D2B98D9CBFB11193A232252736A22EECFA97BA5E5E6F00E870C190AA12014CD2F9973C6EF070B76377F94C1F080AB3777CD99';
wwv_flow_imp.g_varchar2_table(11) := 'E12EF447B20895D65DE7597F22AE474B868831468CAB8F6318CCAB1991ABC22B3EA1A9638D043A7CFBC649F4FB48E5D7DFBED9E459B4C724D04253F4F78281E7BB792AE66928C9D271B1902E4830527921634C6258BD6E572AF51621D17758D43291DCF0';
wwv_flow_imp.g_varchar2_table(12) := '8C7E8B9F66B356BBBC2C952BCD7AA5D713CB953E5C28858EF71A29315DA21A134BCC149D7CEF8F6BF47D1919FAAC14D5A9EA3DFBBF6D43C357887951C995BA3C5D556B4BBABE424E4C595AD727E2DF22F6C49F46AEBAF00E478399A763A23A9C109FB732';
wwv_flow_imp.g_varchar2_table(13) := '950748CAD0E8072451A599A478A42E754AF48A05184D9C1837929C156229FDE850CB7E7C4F8186B327845E8F5D6706773DAC869ACAC361944EA63C3FEDA4967F5F29167752A18482F715CA46A74BC58C62BE5BBFB8C01AB9E3126386E92B2A57704389BA';
wwv_flow_imp.g_varchar2_table(14) := '805C48AF5B70F52893E3824B907F4822494B776315C683AEF46B007C6B0C608C7DE242C01236ED3D62999955142BFDA22E636423C6700A9859775A9860A6B60C974403FB20E6CB0FA8A0F21178280A0DF9CD87883F58E71F3A8645BC21C963ECEA43C7F6';
wwv_flow_imp.g_varchar2_table(15) := 'C9575F9C2C281DF5E69F3DB5474BAF0458517DE974425C0B3CE216F82803323159C89A636E433A1F7F4AECAD06707957015CDE07F0E6019C753E2CC28ED7C0ABE15BCA085FEAAEE843F90AE69DC3BBD82EE2014C0FA85660D823A8607A4969767CC652A0';
wwv_flow_imp.g_varchar2_table(16) := '011C793F7EB2C409FE9744A6894B91F6F6639A80286031121212C0C4DD069AC1B47D273B0F423ED187F51B4910DB96407C4F02B82F60AD89521FC4B602E27B0A586E2860B901009AECEFA2A3695D393FEF3E484053F92A35A15801F1C50A8897A26FE6DC';
wwv_flow_imp.g_varchar2_table(17) := 'D0737F3DB41175B02B2A2D850816B39FDEAF0A289384C93B9FA93AB824217BB8DD0284313EB12092B4D4784D4E7C91A494852B2CB11363041DF2C31671ECB4221FED04C742C17B1CDB08C7B24E15058EA98D5EFD9340AFA30CF4229687E0C54A871D24C0';
wwv_flow_imp.g_varchar2_table(18) := 'D34AF96C478EC305EF1D6723C7C938640B1DA7A636544D5D4D80E59712E006C9E12F97183292C26EF2406D5779608BE17B56291DEF247C43C1FBF0DD287CCBDFC1FD560D22E03FCE027E5E25304FA7D7B12DE6165DA85CAC1477523A4482F72EB4910B1D';
wwv_flow_imp.g_varchar2_table(19) := '275DA8812E04CE583C9F060A253D402C576FAA8D7E4D0576FAA5B9E664425CC893C3C9A104FC794B2DC3BF44AB247EE98313BCD4FBF59A5E65545DEB718AC67E3A174D4430A9DFA9B16EE29776EBAA57BD16E5E6174282B8D1C405EFBE55C72DEF04FB22';
wwv_flow_imp.g_varchar2_table(20) := 'C17BC7DDC8714F7E6CEFCECEAFDFB15759FEAC6D7CBC76D8C2363E2E2EE3907C7D9002DDDE6771AF170DABE3C4CFDA962286CE6C6EB82465382945A6542C003F748722DB576C7098F0573D4B483F4AF87F3949081F66ECE430A12CEFE80DA548F01E5837';
wwv_flow_imp.g_varchar2_table(21) := '7BAAB1722A5AB73DDF0D58A07870001D63424086BC0CFF02B958DCA3E81E45F728FABF43D152453EDD268A9E1DC8475A09051F55E4D2565134C7DCB73A5F3E803FAA7A73C306CF5F58E4E37D0EDDCF712BFF382A9F9D8E061FEE730946DF75EC09A75C13';
wwv_flow_imp.g_varchar2_table(22) := '0B6387D06D09060244951FF56409AE4CF2EC3124508291E9879B158F2AFD960BBB7F171717D150972425A1AAB8D1D0E90061D43287067BAFF9D9F0803FB91DD1779C5DE2CD112823ED5C3273D006744F456F53A63D766CFF606CCC4C6B51A93A816BE2CE';
wwv_flow_imp.g_varchar2_table(23) := 'AA459E25712DCD1CDBC10E43B234C9BBF06D8335D5793CC3C8740906E513E11BB6D8C8B1897F09CCE123F4BE34A0EF9B96E92FD2AC239E2E87AF6495E443F99045C0893DF0E61F40FB3326B59C0EB5B601535CDE058CD1E8818BB4A9399CC69E5D1B10BE';
wwv_flow_imp.g_varchar2_table(24) := '721D730989B9C4CFECC979B87FA54FC199BD3C583841B48ACFA63F85C838872F79C3F51453F99297661A0F6D8999E8C9302DB614E81391F18E0E4B4C8DB16359CEB3694FA4840787134229EBABC52901BFC18C17AA15AC7871AC4B62A13883197AB1E173';
wwv_flow_imp.g_varchar2_table(25) := '1CF3D07C04C7F4855F030D2D0FB58E62C58CBD312364DD526BE16A4F9D6761B56414F2F88B222F66E7176CBC2ADCB03C27948EB7EB4B67F0C1848752438E31134934FB922762331EA14EABAD650CFDF6A5E5555005891AC8660E628CA87321C48B4C4947';
wwv_flow_imp.g_varchar2_table(26) := 'E22F068DD8F034F9014D7E34DA0DC1C49778DDEF700584FE03C26DEE04ECE885ED5BEFDFE112D00A81BECAB112702B0064505FE21E8C98F32B9D98B540DC0903820FC514F08502D40474348200299EF6007DA3324429F215579335F00E09057A266AB588';
wwv_flow_imp.g_varchar2_table(27) := 'E20D27BAEEAC2DF51AD23C32B4007F9524F239EA2D6E60B3B1E97B28388FF015184AC2444B8D73E08C0F98718456E94B1758F13B4B786FC7759ECC51BAB2BC9C48D5972AB6DE81172269FC583D58741806B8B9F59ED59460F9776A52CA7149AEC49FC00F';
wwv_flow_imp.g_varchar2_table(28) := '71B91F63AB9002B90363F838719DC01E1D884C5A7A6F9093E2077137669F086FE1225C408C8235C9C99CB28CC3F52925C1962D25C5DB4C3CA244CB7C698D7ED0E0ECD5E7D485E5FF5541CBD93FB056AB81FBF75B333BC534713C4A4DFB2146C546492EF0';
wwv_flow_imp.g_varchar2_table(29) := '7716B36D63F032D0C4E432C5205F70E045924B635CE2E649AB1DF8DCA79E95974B45E9FDF14FD249F1A74264849AF36C5B8E310A6DB03E71CFC04A014B3FBC64C38D88F7E83BF30C8D3185262063643EAD65BC90336ACBFD0DCF031EF0EFBF504B030414';
wwv_flow_imp.g_varchar2_table(30) := '00000808007B9D6D5BBACDB48690020000D00F00001F0000004150585348525F50474D5F4F5054494F4E535F70726F66696C652E6A736F6EBD976D6FDA3010C7DFF753A0BC265579A8B6F12E40682325109150A91A936582A1DEE2248A4DABA9EA77EFD9';
wwv_flow_imp.g_varchar2_table(31) := 'A1A0693512710A922361E74EBFFF9DEF62BF5EB55AD686A6C4167F0B62B506AD7E5B4E719A6D61B2CC5FE4DC06A79CB40FAF922CC9D7F0825CB21CBFD75DC493EF965A07039B939424222FD5321584F16AED896069C56D9AD91B5A72F1BFFB843F4BEF69';
wwv_flow_imp.g_varchar2_table(32) := 'CEC95A992FADCA76939709309694D92F4FE093173851B8A2DCED4DF374C7320E73F0EF278C56EB553D612DC38C54B06188BCB172A916D658E083F2EE719A2494E1D44E9E70A5E2FA13133B2599323BDAFDA31C1705A2EBA321E5F66F9E6707C16AFEAD7D';
wwv_flow_imp.g_varchar2_table(33) := '82D4F13D27D2C076F4409D9B1B3D114E29E675A166618CA6B3CB842F2F04CA72235227701B8C9E0292FE0D901E1C1FC67C74EFCCCF27EBDF9C427BC6298C52C5DC9070BA0886AE0EF00BD22CD1B31D5B1163F2E16CE6BBCEF4FCD8DE9EA65BE5794A7056';
wwv_flow_imp.g_varchar2_table(34) := '176F3477D122D650F5F454DF3EA74A4A8276E2E80E9A23C3C26698FF51EB8FF0B383C01E8F9756BCB4EEEFBBFD41E00DA2C8843FBC0BA0A2CE8F6C4FB367A58862CBA0A48CA2EA8DD148D7D04F50756F351957B1A56B94D4EEDC73F7219A3699EE923CF3';
wwv_flow_imp.g_varchar2_table(35) := 'ECB209AF34349DF24A8859D2F7D16D3AEDFB181B25FEA3098DFCD9508766D4DEE15CB432851B3BB1EEA378FECEFC0083F7C90577E78796D80BDC2876825023A87FE22BDF39AD485046B8C0ACA821EB7A32F951579A17DCA10064A1F831AC7178D1EE6FCA';
wwv_flow_imp.g_varchar2_table(36) := 'B6888126A49C18C04D3CDFAD7FB2D26C7049276F1646E72B49270F56287275BDB76EE4E4090771224CD07C278AD1221C430536567F922DC55CA05DB18622BC6009BA930982D29BC74DCA219B0D82A22BC5E5B5B8D34613239590EC8B7202CF5FEACA5BE0';
wwv_flow_imp.g_varchar2_table(37) := '12EEC9F216CDAB9E76F5F60E504B010214001400000808007B9D6D5BE4F730251A0B0000533B0000170000000000000000002000B681000000004150585348525F50474D5F4F5054494F4E532E6A736F6E504B010214001400000808007B9D6D5BBACDB4';
wwv_flow_imp.g_varchar2_table(38) := '8690020000D00F00001F0000000000000000002000B6814F0B00004150585348525F50474D5F4F5054494F4E535F70726F66696C652E6A736F6E504B05060000000002000200920000001C0E00000000';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(86907420742640957313)
,p_file_name=>'APEX$DATA$PKG/APXSHR_PGM_OPTIONS$370288.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(58955918764969300581)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>15634973929227
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(58957549351496310644)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>7506760363847
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(58957716404066310657)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>7506760363874
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(58957883351064310670)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>7506760363900
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(59188226970860610387)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>7341659842550
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(59188227071120610387)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>7341659842550
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(59188227221106610387)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>7341659842550
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(59188227354147610387)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>7341659842550
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(60541366820043301255)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>7341659842567
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(60541367070000301261)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>7341659842567
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(60541367703608301262)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>7341659842567
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(60541368282784301263)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>7341659842567
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(60541368605463301263)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>7341659842567
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(60541368908009301263)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>7341659842567
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(60541512145456301566)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>1
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(60549057779477428317)
,p_name=>'Contribution Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator,Contributor'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_version_scn=>1
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(60549058103196428318)
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
,p_version_scn=>1
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(60549057214098428314)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>7341659842568
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(60549057362260428315)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
,p_version_scn=>7341659842572
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(60549057465516428315)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>7341659842572
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
 p_id=>wwv_flow_imp.id(60549015399211424125)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'N'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(60549015131862424113)
,p_version_scn=>15674313817943
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(60549057013033428312)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ALL_USERS'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(60549056733117428311)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>7341659842577
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
 p_id=>wwv_flow_imp.id(60549072219893428335)
,p_lov_name=>'ACCESS_ROLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/user_interface/lovs/apex_schema_owners
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(60544870527566518261)
,p_lov_name=>'APEX_SCHEMA_OWNERS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    username as D,',
'    username as R ',
'--from dba_users  -- (only if your parsing schema has access)',
'from all_users',
'where username = ',
'    case ',
'        -- this allows workspaces with multiple schemas (or GRANTed access to multiple schemas) to access more tables',
'        when APEX_APPLICATION_ADMIN.GET_BUILD_OPTION_STATUS (p_application_id => :APP_ID, p_build_option_name => ''Allow ALL Schema Access'') = ''EXCLUDE''',
'        then ''#FLOW_OWNER#''',
'        else username',
'    end',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15654550402272
);
end;
/
prompt --application/shared_components/user_interface/lovs/apxshr_data_types_and_abbreviations
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(60541848170523455239)
,p_lov_name=>'APXSHR_DATA_TYPES_AND_ABBREVIATIONS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    det.LOV_DISPLAY_VAL,',
'    det.ID',
'from APXSHR_LOV_DETAILS det',
'join APXSHR_LOV_NAME name on name.ID = det.LOV_NAME_ID and',
'     name.APP_ALIAS = ''APXSHR_HIST'' and',
'     name.LOV_NA = ''Data Types and Abbreviations''',
'where nvl(det.ACTIVE_IND, ''N'') != ''N'' ',
'order by det.SORT_ORDER_NO, det.LOV_DISPLAY_VAL'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'APEX_200200'
,p_return_column_name=>'ID'
,p_display_column_name=>'LOV_DISPLAY_VAL'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/user_interface/lovs/apxshr_data_types_and_abbreviations_all
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(60541848356687455395)
,p_lov_name=>'APXSHR_DATA_TYPES_AND_ABBREVIATIONS_ALL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    det.LOV_DISPLAY_VAL,',
'    det.ID',
'from APXSHR_LOV_DETAILS det',
'join APXSHR_LOV_NAME name on name.ID = det.LOV_NAME_ID and',
'     name.APP_ALIAS = ''APXSHR_HIST'' and',
'     name.LOV_NA = ''Data Types and Abbreviations''',
'',
'order by det.SORT_ORDER_NO, det.LOV_DISPLAY_VAL'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'APEX_200200'
,p_return_column_name=>'ID'
,p_display_column_name=>'LOV_DISPLAY_VAL'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(60549079928164428342)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_imp.id(60549079928164428342)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(60549080229714428343)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(60549020546203424171)
,p_lov_name=>'FEEDBACK_RATING'
,p_lov_query=>'.'||wwv_flow_imp.id(60549020546203424171)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(60549020922659424172)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Positive'
,p_lov_return_value=>'3'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(60549021168170424175)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutral'
,p_lov_return_value=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(60549021616439424176)
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
 p_id=>wwv_flow_imp.id(60549034636915424194)
,p_lov_name=>'FEEDBACK_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(60549034636915424194)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(60549034899033424194)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(60549035282545424195)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Acknowledged'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(60549035740563424195)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(60549036111154424195)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/is_org_assoc_jorp
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(60544871576482518272)
,p_lov_name=>'IS_ORG_ASSOC_JORP'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  nvl(trim(PRFD_NA), LEGAL_NA) as d,',
'  ACF2_LID_ID as r',
'from IS_ORG_ASSOC',
'where TERM_DA is NULL',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APEX_200200'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/user_interface/lovs/is_org_assoc_jorp_2
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(60544871898828518272)
,p_lov_name=>'IS_ORG_ASSOC_JORP_2'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  nvl(trim(PRFD_NA), LEGAL_NA)||'' (''||ACF2_LID_ID||'')'' as d,',
'  ACF2_LID_ID as r',
'from IS_ORG_ASSOC',
'where TERM_DA is NULL',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(60541514681872301596)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_imp.id(60541514681872301596)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(60541515136353301598)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Remember username'
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/lovs/prefixes
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(74917441651025984384)
,p_lov_name=>'PREFIXES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'select',
'  distinct prefix as D,',
'  prefix as R',
'from ( ',
'*/',
'select ',
'--  TABLE_NAME as D,',
'  distinct SUBSTR(TABLE_NAME,1,INSTR(TABLE_NAME,''_'')-1) AS D,',
'  SUBSTR(TABLE_NAME,1,INSTR(TABLE_NAME,''_'')-1) AS R',
'--  TABLE_NAME as R',
'--from DBA_TABLES t ',
'from user_tables t',
'--where owner = :P1_SCHEMA',
'--)',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>15646781110995
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(60553091326429803922)
,p_lov_name=>'TIMEFRAME (4 WEEKS)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'      val as seconds',
' from table( apex_util.get_timeframe_lov_data )',
'order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'SECONDS'
,p_display_column_name=>'DISP'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(60553126333586804029)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_lov_query=>'.'||wwv_flow_imp.id(60553126333586804029)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(60553126625425804030)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Add Report Page'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(60553127019407804033)
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
 p_id=>wwv_flow_imp.id(60541512761682301572)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(60541369443688301269)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(60541369722794301272)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(60549051719501424249)
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
 p_id=>wwv_flow_imp.id(60541489877409301470)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>3293430150770310735
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
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
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(60541488891987301458)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>true
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(59029172274354447797)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(59029174270285447798)
,p_theme_id=>42
,p_name=>'ICON_STYLE'
,p_display_name=>'Icon Style'
,p_display_sequence=>35
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(59029177074489447799)
,p_theme_id=>42
,p_name=>'DISPLAY_MODE'
,p_display_name=>'Display Mode'
,p_display_sequence=>30
,p_template_types=>'PAGE'
,p_help_text=>'Determines the default display appearance and positioning of the dialog. The default opens a floating dialog position at the center of the screen.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(59029182701670447801)
,p_theme_id=>42
,p_name=>'PRESERVE_LABEL_SPACING'
,p_display_name=>'Preserve Label Spacing'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_help_text=>'Preserves the label space and enables use of the Label Column Span property.'
,p_null_text=>'Yes'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(59029186285671447803)
,p_theme_id=>42
,p_name=>'DISPLAY_MODE'
,p_display_name=>'Display Mode'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the default display appearance and positioning of the dialog. The default opens a floating dialog position at the center of the screen.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(59029196253869447806)
,p_theme_id=>42
,p_name=>'RESULT_SEPARATOR'
,p_display_name=>'Result Separator'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_null_text=>'Show'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(59029200326765447808)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
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
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(60549015131862424113)
,p_build_option_name=>'Feature: Feedback'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>7341659842619
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(60549056733117428311)
,p_build_option_name=>'Feature: Access Control'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>7341659842619
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(60553073946072803759)
,p_build_option_name=>'Feature: Activity Reporting'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>7341659842619
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(86869382150891809065)
,p_build_option_name=>'Allow ALL Schema Access'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>15654549808714
,p_build_option_comment=>'When INCLUDED, allows access to all Schemas in the workspace. This allows app to build History components for tables outside the normal parsing schema, but can make page 1 perform very slowly on big, shared workspaces like APEX.ORACLE.COM.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(86869663911043510929)
,p_build_option_name=>'Feature: Configuration Options'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15654547084881
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>'Allow application administrators to enable or disable specific functionality, associated with an Oracle APEX build option, from within the application.'
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
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_imp_shared.create_shortcut(
 p_id=>wwv_flow_imp.id(60541512641011301570)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_version_scn=>1
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/application_express_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(60541369199087301266)
,p_name=>'Application Express Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/security/authentications/open_door_testing_only
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(60549128491176471986)
,p_name=>'Open Door - TESTING ONLY'
,p_scheme_type=>'NATIVE_OPEN_DOOR'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/security/authentications/trusted_connection
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(60549128684526471990)
,p_name=>'Trusted Connection'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'edj_trusted_auth'
,p_attribute_05=>'N'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function edj_trusted_auth (p_username in VARCHAR2, p_password in VARCHAR2)',
'return BOOLEAN',
'is',
'begin',
'      return true;',
'end edj_trusted_auth;'))
,p_invalid_session_type=>'URL'
,p_invalid_session_url=>'f?p=&APP_ID.:101:&SESSION.'
,p_logout_url=>'https://ejprod.sharepoint.com/sites/JL-US-HO-Home'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>1
,p_comments=>'Based on authentication scheme from gallery:Built-in Login Page: Trusted Connection'
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
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
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
,p_step_title=>'History Tables, Views and Audit Triggers'
,p_reload_on_submit=>'A'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60531647225646417236)
,p_plug_name=>'History Table / View & Trigger Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60531648416193417248)
,p_plug_name=>'Table / View Section 1'
,p_parent_plug_id=>wwv_flow_imp.id(60531647225646417236)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60531648461528417249)
,p_plug_name=>'Audit Trigger Section 1'
,p_parent_plug_id=>wwv_flow_imp.id(60531647225646417236)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(60531648593584417250)
,p_name=>'History Table Found'
,p_parent_plug_id=>wwv_flow_imp.id(60531647225646417236)
,p_template=>2040683448887306517
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning:t-Form--noPadding:margin-top-sm:margin-bottom-sm:margin-left-sm:margin-right-sm'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>5
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  --  owner as schema_owner,',
'    table_name',
'--from DBA_TABLES',
'from user_tables',
'--where OWNER = :P1_SCHEMA',
'  where TABLE_NAME = upper(:P1_PREFIX)||''_HISTORY'''))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'--from DBA_TABLES',
'from user_tables',
'--where OWNER = :P1_SCHEMA',
'  where TABLE_NAME = upper(:P1_PREFIX)||''_HISTORY'''))
,p_display_condition_type=>'EXISTS'
,p_header=>'A HISTORY Table with this Schema / Prefix already exists!'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60531648797869417252)
,p_query_column_id=>1
,p_column_alias=>'TABLE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Table Name'
,p_use_as_row_header=>'Y'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60531648907735417253)
,p_plug_name=>'Generate DDL'
,p_parent_plug_id=>wwv_flow_imp.id(60531647225646417236)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(60544891699366895604)
,p_name=>'Audit Trigger Found'
,p_parent_plug_id=>wwv_flow_imp.id(60531647225646417236)
,p_template=>2040683448887306517
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning:t-Form--noPadding:margin-top-sm:margin-bottom-sm:margin-left-sm:margin-right-sm'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>5
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  --  owner,',
'    trigger_name,',
'    trigger_type,',
'    table_owner,',
'    table_name',
'-- from DBA_triggers',
'from user_triggers',
'--where OWNER = :P1_SCHEMA',
'  where TRIGGER_NAME = upper(:P1_TABLE)||''_AUD'''))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'--from DBA_triggers',
'from user_triggers',
'--where OWNER = :P1_SCHEMA',
'  where TRIGGER_NAME = upper(:P1_TABLE)||''_AUD'''))
,p_display_condition_type=>'EXISTS'
,p_header=>'An *_AUD Trigger already exists for this Schema & Table. However, if you run the generated DDL, it will REPLACE that Trigger. '
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1_TABLE,P1_SCHEMA'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60544891912276895606)
,p_query_column_id=>1
,p_column_alias=>'TRIGGER_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Trigger Name'
,p_use_as_row_header=>'Y'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60544892001603895607)
,p_query_column_id=>2
,p_column_alias=>'TRIGGER_TYPE'
,p_column_display_sequence=>30
,p_column_heading=>'Trigger Type'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60544892108054895608)
,p_query_column_id=>3
,p_column_alias=>'TABLE_OWNER'
,p_column_display_sequence=>40
,p_column_heading=>'Table Owner'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60544892218479895609)
,p_query_column_id=>4
,p_column_alias=>'TABLE_NAME'
,p_column_display_sequence=>50
,p_column_heading=>'Table Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60541520343602301626)
,p_plug_name=>'History Tables, Views and Audit Triggers'
,p_icon_css_classes=>'fa-database-new'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60544892698213895614)
,p_plug_name=>'How to use this app'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-Region--hideShowIconsMath:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return APXSHR_PGM_OPTS.rtn_pgm_opt (:APP_ALIAS, to_number(:APP_PAGE_ID) + 100);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'APXSHR_PGM_OPTS.pgm_opt_exists(:APP_ALIAS,to_number(:APP_PAGE_ID) + 100)'
,p_plug_display_when_cond2=>'PLSQL'
,p_plug_comment=>'None'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60531647575736417240)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(60531648907735417253)
,p_button_name=>'Generate'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Generate SQL'
,p_button_position=>'PREVIOUS'
,p_icon_css_classes=>'fa-file-sql'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60544894986610895637)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(60531648907735417253)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Download SQL'
,p_button_position=>'PREVIOUS'
,p_button_condition=>'P1_DDL'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-download-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60531647247859417237)
,p_name=>'P1_SCHEMA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(60531648416193417248)
,p_prompt=>'Schema'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'APEX_SCHEMA_OWNERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    username as D,',
'    username as R ',
'--from dba_users  -- (only if your parsing schema has access)',
'from all_users',
'where username = ',
'    case ',
'        -- this allows workspaces with multiple schemas (or GRANTed access to multiple schemas) to access more tables',
'        when APEX_APPLICATION_ADMIN.GET_BUILD_OPTION_STATUS (p_application_id => :APP_ID, p_build_option_name => ''Allow ALL Schema Access'') = ''EXCLUDE''',
'        then ''#FLOW_OWNER#''',
'        else username',
'    end',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Not Selected -'
,p_cHeight=>1
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select the Schema in which you want to create your *_HISTORY Table and *_HISTORY_V View.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60531647430285417238)
,p_name=>'P1_PREFIX'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(60531648416193417248)
,p_prompt=>'HISTORY Table / View Prefix'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_named_lov=>'PREFIXES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'select',
'  distinct prefix as D,',
'  prefix as R',
'from ( ',
'*/',
'select ',
'--  TABLE_NAME as D,',
'  distinct SUBSTR(TABLE_NAME,1,INSTR(TABLE_NAME,''_'')-1) AS D,',
'  SUBSTR(TABLE_NAME,1,INSTR(TABLE_NAME,''_'')-1) AS R',
'--  TABLE_NAME as R',
'--from DBA_TABLES t ',
'from user_tables t',
'--where owner = :P1_SCHEMA',
'--)',
'order by 1'))
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Usually a 3- or 4-character Prefix that will be appended to the START of the HISTORY Table / View name.',
'<p>Pick from a list of existing Prefixes for this Schema, or type in a new one (if you have not yet created your base tables).',
'<p>Do NOT add the underscore (''_'') - the app will take care of that!  '))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'fetch_on_type', 'Y',
  'match_type', 'CONTAINS_IGNORE',
  'max_values_in_list', '5',
  'min_chars', '0',
  'use_cache', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60531647529761417239)
,p_name=>'P1_DDL'
,p_data_type=>'CLOB'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(60531648907735417253)
,p_prompt=>'Generated DDL'
,p_placeholder=>'Click Generate SQL button...'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>200
,p_cHeight=>10
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Generated by the app. The Textarea page item is editable to make it easier for you to copy / paste the DDL into a SQL Script.  A future version of this app may feature the ability to create a script file directly.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'Y',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60531647777717417242)
,p_name=>'P1_TABLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(60531648461528417249)
,p_prompt=>'Existing Table (based on Schema selected)'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  TABLE_NAME as D,',
'  TABLE_NAME as R',
'--from DBA_TABLES t ',
'from user_tables t',
'--where owner = :P1_SCHEMA',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1_SCHEMA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_help_text=>'This is the Table that will be used to create the _AUD Trigger.  This table <i>must already exist</i> in the SCHEMA you selected above.  If your Table doesn''t yet exist, <b>create it</b> with Quick SQL (or some other method) and come back to this app'
||'.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60531647875395417243)
,p_name=>'P1_CREATE_TABLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(60531648416193417248)
,p_prompt=>'Create HISTORY Table & View?'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-sm'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60531647946344417244)
,p_name=>'P1_CREATE_TRIGGER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(60531648461528417249)
,p_prompt=>'Create AUD Trigger for Table?'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-sm'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60544892841146895615)
,p_name=>'P1_PK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(60531648461528417249)
,p_item_default=>'ID'
,p_prompt=>'Primary Key Column'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_help_text=>'Primary Key column of the Table for which the _AUD Trigger is being created. This item defaults to ''ID'', which is the column created by Quick SQL.  For Tables not created with Quick SQL, provide the Primary Key column for the Table (there is a valida'
||'tion to make sure this column exists).'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'text_case', 'UPPER',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60544895204033895639)
,p_name=>'P1_SCRIPT_NAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(60531648907735417253)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(86872135818663543801)
,p_computation_sequence=>10
,p_computation_item=>'P1_SCHEMA'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_application_admin.get_parsing_schema(',
'        p_application_id => :APP_ID )'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(60544894475046895632)
,p_validation_name=>'Pick one!'
,p_validation_sequence=>10
,p_validation=>':P1_CREATE_TABLE != ''N'' or :P1_CREATE_TRIGGER != ''N'''
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Nothing to generate!  Change the Sliders to generate History Table / View or Audit Trigger.'
,p_when_button_pressed=>wwv_flow_imp.id(60531647575736417240)
,p_associated_item=>wwv_flow_imp.id(60531647875395417243)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(60544892906394895616)
,p_validation_name=>'PK Found?'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--select 1 from dba_tab_cols',
'select 1 from user_tab_cols',
'--where owner = :P1_SCHEMA',
'  where table_name = :P1_TABLE',
'  and column_name = :P1_PK'))
,p_validation_type=>'EXISTS'
,p_error_message=>'Primary Key column NOT FOUND on Table!'
,p_validation_condition=>'P1_CREATE_TRIGGER'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(60531647575736417240)
,p_associated_item=>wwv_flow_imp.id(60544892841146895615)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60531648170899417246)
,p_name=>'Change Prefix, Schema or Table'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_PREFIX,P1_SCHEMA,P1_TABLE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60531648338213417247)
,p_event_id=>wwv_flow_imp.id(60531648170899417246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60531647704969417241)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate DDL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    :P1_DDL := ',
'    ',
'        APXSHR_HIST_PKG.GEN_HIST_AUD_TRIGGER   ',
'          ( schema_in             => upper(:P1_SCHEMA),',
'            prefix_in             => upper(:P1_PREFIX),',
'            table_in              => :P1_TABLE ,',
'            table_pk_col_name_in  => :P1_PK,',
'            create_hist_table     => :P1_CREATE_TABLE,',
'            create_aud_trigger    => :P1_CREATE_TRIGGER );',
'    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(60531647575736417240)
,p_process_success_message=>'DDL Generated!'
,p_internal_uid=>1520222336723199826
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60544895138555895638)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Script'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    :P1_SCRIPT_NAME := :APP_USER || '' Hist DDL ''||to_char(sysdate,''yymmdd hh24.mi.ss'');',
'',
'    -- requires:   grant execute on apex_200200.wwv_flow_sw_script to apex_hq; (which was added to GRANTS SYNONYMS in Sharepoint)',
'    /*',
'    apex_240200.wwv_flow_sw_script.create_script_from_clob (        ',
'                                                 p_script_name => :P1_SCRIPT_NAME,',
'                                                 p_script      => :P1_DDL);  ',
'    */',
'    /*',
'    BEGIN',
'        -- Insert the CLOB content into the APEX SQL Scripts table',
'        INSERT INTO APEX_WORKSPACE_FILES (',
'            WORKSPACE_ID,',
'            FILE_NAME,',
'            DOCUMENT, --BLOB_CONTENT,',
'            MIME_TYPE,',
'        --    CHARACTER_SET,',
'            FILE_TYPE,',
'            CREATED_ON',
'        )',
'        VALUES (',
'         --   APEX_UTIL.GET_WORKSPACE_ID, -- Current workspace ID',
'            :WORKSPACE_ID,',
'            :P1_SCRIPT_NAME, -- ''my_script.sql'',            -- Name of the script',
'            TO_BLOB(:P1_DDL),     -- Convert CLOB to BLOB',
'            ''text/plain'',               -- MIME type',
'        --    ''utf-8'',                    -- Character set',
'            ''SQL'',                      -- File type',
'            SYSDATE                     -- Timestamp',
'        );',
'    END;',
'    */',
'',
'    apex_http.download(',
'        p_clob         => :P1_DDL,',
'        p_content_type => ''text/plain'',',
'        p_filename     => :P1_SCRIPT_NAME||''.sql''',
'    );',
'',
'end;             '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(60544894986610895637)
,p_process_success_message=>'Script Saved.  Look in SQL Workshop > SQL Scripts. Script name = &P1_SCRIPT_NAME.'
,p_internal_uid=>1533469770309678223
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Original Quick SQL "Save Script"  NOT USED'
,p_alias=>'ORIGINAL-QUICK-SQL-SAVE-SCRIPT'
,p_step_title=>'Original Quick SQL "Save Script"'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(60541512145456301566)
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60544894632424895633)
,p_plug_name=>'Test'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60544894665186895634)
,p_name=>'P3_PL_SQL_T'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(60544894632424895633)
,p_prompt=>'PL / SQL Editor'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'Y',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60544894761709895635)
,p_name=>'P3_PL_SQL_E'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(60544894632424895633)
,p_prompt=>'PL / SQL Editor'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_custom_html', 'N',
  'format', 'HTML',
  'min_height', '180',
  'toolbar', 'INTERMEDIATE',
  'toolbar_style', 'OVERFLOW')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60544894851306895636)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate Boxes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select',
'        process_source, process_source ',
'    into ',
'        :P3_PL_SQL_E,  :P3_PL_SQL_T',
'    from apex_application_page_proc',
'    where application_id = 4500',
'    and page_id = 1104',
'    and execution_sequence = 10;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>1533469483060678221
,p_process_comment=>'In previous versions of APEX, app 4500, page 1104 is where Quick SQL did its work to generate the Trigger scripts.  This is where we go the ideas for this app (in an APEX instance running an older version of APEX) after the feature was removed.'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'History Tables, Views and Audit Triggers 1.1 - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_comment=>'login'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74898729291213460730)
,p_plug_name=>'History Tables, Views and Audit Triggers 1.1 - Log In'
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
 p_id=>wwv_flow_imp.id(74898730961496460734)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(74898729291213460730)
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
 p_id=>wwv_flow_imp.id(74898729739764460731)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74898729291213460730)
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
 p_id=>wwv_flow_imp.id(74898730190246460732)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(74898729291213460730)
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
 p_id=>wwv_flow_imp.id(74898730537108460733)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(74898729291213460730)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
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
 p_id=>wwv_flow_imp.id(74898733156067460736)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>74898733156067460736
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(74898733639709460736)
,p_page_process_id=>wwv_flow_imp.id(74898733156067460736)
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
 p_id=>wwv_flow_imp.id(74898734189449460737)
,p_page_process_id=>wwv_flow_imp.id(74898733156067460736)
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
 p_id=>wwv_flow_imp.id(74898731225829460734)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>74898731225829460734
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(74898731703481460735)
,p_page_process_id=>wwv_flow_imp.id(74898731225829460734)
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
 p_id=>wwv_flow_imp.id(74898732222255460735)
,p_page_process_id=>wwv_flow_imp.id(74898731225829460734)
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
 p_id=>wwv_flow_imp.id(74898732718215460736)
,p_page_process_id=>wwv_flow_imp.id(74898731225829460734)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74898735058884460737)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>74898735058884460737
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74898734633729460737)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>74898734633729460737
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Administration'
,p_alias=>'ADMIN'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(60541512145456301566)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_comment=>'n/a'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60549051299682424247)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(60541369443688301269)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60549052984601424253)
,p_plug_name=>'Feedback'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(60549015131862424113)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(60549053399405424254)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(60549052984601424253)
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_display_point=>'SUB_REGIONS'
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
 p_id=>wwv_flow_imp.id(60549054103307424271)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60549054462033424272)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60549056257367424291)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(60549052984601424253)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(60549051865857424252)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60549093124504428367)
,p_plug_name=>'Access Control'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(60549056733117428311)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60549093898466428367)
,p_plug_name=>'ACL Information'
,p_parent_plug_id=>wwv_flow_imp.id(60549093124504428367)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope   varchar2(45);',
'begin',
'    l_acl_scope   := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        sys.htp.p( apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'') );',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        sys.htp.p( apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'') );',
'    else',
'        sys.htp.p( apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope) );',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(60549094319225428367)
,p_name=>'User Counts Report'
,p_parent_plug_id=>wwv_flow_imp.id(60549093124504428367)
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name, (select count(*) from apex_appl_acl_user_roles ur where r.role_id = ur.role_id) user_count, r.role_id',
'from  APEX_APPL_ACL_ROLES r',
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
 p_id=>wwv_flow_imp.id(60549095021540428371)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60549095428242428371)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60549095820821428372)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60549098760100428379)
,p_plug_name=>'Access Control Actions'
,p_parent_plug_id=>wwv_flow_imp.id(60549093124504428367)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(60549091957807428366)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60553143837132804087)
,p_plug_name=>'Activity Reports'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_list_id=>wwv_flow_imp.id(60553141124812804078)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(60553073946072803759)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(86869674226066510959)
,p_plug_name=>'Application Configuration'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_list_id=>wwv_flow_imp.id(86869673514833510958)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(86869663911043510929)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60549093466820428367)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(60549093124504428367)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:10022:&SESSION.::&DEBUG.:RP,10022::'
,p_icon_css_classes=>'fa-user-plus'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60549097928860428378)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(60549093466820428367)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60549098350065428378)
,p_event_id=>wwv_flow_imp.id(60549097928860428378)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60549094319225428367)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: #4caf50; }',
'.feedback-neutral { color: #eb9f41; }',
'.feedback-negative { color: #f44336; }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(60549015131862424113)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60549015639836424127)
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
 p_id=>wwv_flow_imp.id(60549015659630424127)
,p_plug_name=>'Buttons Region'
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
 p_id=>wwv_flow_imp.id(60549015830862424127)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(60549015659630424127)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60549015918708424127)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(60549015659630424127)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(60549024832533424186)
,p_branch_name=>'success'
,p_branch_action=>'f?p=&APP_ID.:10011:&SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549019254438424166)
,p_name=>'P10010_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(60549015639836424127)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549019689107424169)
,p_name=>'P10010_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(60549015639836424127)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549020049033424169)
,p_name=>'P10010_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(60549015639836424127)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549020485745424170)
,p_name=>'P10010_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(60549015639836424127)
,p_prompt=>'Experience'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_lov=>'.'||wwv_flow_imp.id(60549020546203424171)||'.'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549022254279424176)
,p_name=>'P10010_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(60549015639836424127)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549022732991424177)
,p_name=>'P10010_ATTACHMENT_BLOB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(60549015639836424127)
,p_prompt=>'Attachment'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'INLINE',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(60549024383038424185)
,p_validation_name=>'At least One Feedback Required'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10010_FEEDBACK is null and :P10010_RATING is null then',
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
 p_id=>wwv_flow_imp.id(60549015995126424127)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(60549015918708424127)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60549023492352424179)
,p_event_id=>wwv_flow_imp.id(60549015995126424127)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60549023980711424184)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit Feedback'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'apex_util.submit_feedback (',
'    p_comment              => :P10010_FEEDBACK,',
'    p_application_id       => :APP_ID,',
'    p_page_id              => :P10010_PAGE_ID,',
'    p_rating               => :P10010_RATING',
'  , p_attachment_name      => :P10010_ATTACHMENT_BLOB',
' );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(60549015830862424127)
,p_process_success_message=>'Feedback Submitted'
,p_internal_uid=>1537598612465206769
);
end;
/
prompt --application/pages/page_10011
begin
wwv_flow_imp_page.create_page(
 p_id=>10011
,p_name=>'Feedback Submitted'
,p_alias=>'FEEDBACK-SUBMITTED'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(60549015131862424113)
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60549016155451424127)
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
 p_id=>wwv_flow_imp.id(60549016044869424127)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(60549016155451424127)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'w40p'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60549016286221424127)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(60549016044869424127)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60549026393655424188)
,p_event_id=>wwv_flow_imp.id(60549016286221424127)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
end;
/
prompt --application/pages/page_10012
begin
wwv_flow_imp_page.create_page(
 p_id=>10012
,p_name=>'Feedback Settings'
,p_alias=>'FEEDBACK-SETTINGS'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback Settings'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(60541512145456301566)
,p_required_patch=>wwv_flow_imp.id(60549015131862424113)
,p_protection_level=>'C'
,p_help_text=>'<p><strong>Enable Attachments</strong> - If yes, users will be able to upload an attachment in support of their feedback.</p>'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60549016424363424127)
,p_plug_name=>'Form Items Region'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60549016538803424127)
,p_plug_name=>'Buttons Region'
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
 p_id=>wwv_flow_imp.id(60549016655115424127)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(60549016538803424127)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60549016618532424127)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(60549016538803424127)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549028313123424190)
,p_name=>'P10012_FEEDBACK_ATTACHMENTS_YN'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(60549016424363424127)
,p_item_default=>'N'
,p_prompt=>'Enable Attachments'
,p_source=>'apex_app_setting.get_value( p_name  => ''FEEDBACK_ATTACHMENTS_YN'' )'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60549016755117424127)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(60549016655115424127)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60549029104918424190)
,p_event_id=>wwv_flow_imp.id(60549016755117424127)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60549029599966424190)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Setting'
,p_process_sql_clob=>'apex_app_setting.set_value( p_name => ''FEEDBACK_ATTACHMENTS_YN'', p_value => :P10012_FEEDBACK_ATTACHMENTS_YN );'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(60549016618532424127)
,p_process_success_message=>'Feedback settings updated.'
,p_internal_uid=>1537604231720206775
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60549029962791424190)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1537604594545206775
);
end;
/
prompt --application/pages/page_10013
begin
wwv_flow_imp_page.create_page(
 p_id=>10013
,p_name=>'Manage Feedback'
,p_alias=>'MANAGE-FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Feedback'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: #4caf50; }',
'.feedback-neutral { color: #eb9f41; }',
'.feedback-negative { color: #f44336; }'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(60541512145456301566)
,p_required_patch=>wwv_flow_imp.id(60549015131862424113)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Feedback can be entered by end users from any normal page within the application.</p>',
'<p>This report shows the feedback entered, any response enter by administrators, and the status of the feedback.</p>',
'<p>Click the edit icon (yellow pencil) to enter a response or update the feedback status.</p>',
'<p><em><strong>Note:</strong> If feedback recipients have been defined then feedback submissions will also be emailed to the email addresses in the feedback recipients list.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60549017674580424128)
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
'    /* no attachments',
'    , (select ''<a href="''||apex_util.get_blob_file_src(''P10013_ATTACHMENT'',id)||''">''|| filename ||''</a>''',
'       from apex$team_dev_files',
'      where component_id = f.feedback_id',
'        and component_type = ''FEEDBACK'') download_attachment',
'    */',
'from apex_team_feedback f',
'where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage Feedback'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(60549041286439424201)
,p_name=>'Manage Feedback'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10014:&APP_SESSION.::::P10014_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'J11740'
,p_internal_uid=>1360814643183813998
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60544893105166895618)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'O'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60544893145797895619)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>20
,p_column_identifier=>'P'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60544893331943895620)
,p_db_column_name=>'CREATED'
,p_display_order=>30
,p_column_identifier=>'Q'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60544893375799895621)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>40
,p_column_identifier=>'R'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60544893540069895622)
,p_db_column_name=>'FEEDBACK'
,p_display_order=>50
,p_column_identifier=>'S'
,p_column_label=>'Feedback'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60544893611763895623)
,p_db_column_name=>'RATING'
,p_display_order=>60
,p_column_identifier=>'T'
,p_column_label=>'Rating'
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(60549020546203424171)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60544893659256895624)
,p_db_column_name=>'RATING_ICON'
,p_display_order=>70
,p_column_identifier=>'U'
,p_column_label=>'Rating Icon'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60544893751948895625)
,p_db_column_name=>'STATUS'
,p_display_order=>80
,p_column_identifier=>'V'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(60549034636915424194)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60544893849493895626)
,p_db_column_name=>'RESPONSE'
,p_display_order=>90
,p_column_identifier=>'W'
,p_column_label=>'Response'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60544893950332895627)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>100
,p_column_identifier=>'X'
,p_column_label=>'User Agent'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60544894074382895628)
,p_db_column_name=>'UPDATED'
,p_display_order=>110
,p_column_identifier=>'Y'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60544894203157895629)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>120
,p_column_identifier=>'Z'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60544894338091895630)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>130
,p_column_identifier=>'AA'
,p_column_label=>'Page Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(60549047306740424223)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'13608207'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:PAGE_NAME:CREATED:CREATED_BY:FEEDBACK:RATING:RATING_ICON:STATUS:RESPONSE:USER_AGENT:UPDATED:UPDATED_BY:PAGE_ID'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60549048223008424228)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(60549017674580424128)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549048446045424232)
,p_name=>'P10013_ATTACHMENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(60549017674580424128)
,p_use_cache_before_default=>'NO'
,p_item_default=>'REPORT'
,p_source=>'FILE_BLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_display_when_type=>'NEVER'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'blob_last_updated_column', 'UPDATED',
  'character_set_column', 'FILE_CHARSET',
  'content_disposition', 'inline',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'filename_column', 'FILENAME',
  'mime_type_column', 'FILE_MIMETYPE',
  'purge_file_at', 'SESSION',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60549017600554424128)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(60549017674580424128)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60549049259794424234)
,p_event_id=>wwv_flow_imp.id(60549017600554424128)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60549017674580424128)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60549049795296424234)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Get File ID'
,p_attribute_02=>'APEX$TEAM_DEV_FILES'
,p_attribute_03=>'P10013_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1537624427050206819
);
end;
/
prompt --application/pages/page_10014
begin
wwv_flow_imp_page.create_page(
 p_id=>10014
,p_name=>'Feedback'
,p_alias=>'FEEDBACK1'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: #4caf50; }',
'.feedback-neutral { color: #eb9f41; }',
'.feedback-negative { color: #f44336; }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(60541512145456301566)
,p_required_patch=>wwv_flow_imp.id(60549015131862424113)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60549017013614424127)
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
 p_id=>wwv_flow_imp.id(60549017128018424128)
,p_plug_name=>'Buttons Region'
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
 p_id=>wwv_flow_imp.id(60549017166195424128)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(60549017128018424128)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60549017337736424128)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(60549017128018424128)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60549017440071424128)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(60549017128018424128)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P10014_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549032080016424192)
,p_name=>'P10014_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(60549017013614424127)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549032446429424193)
,p_name=>'P10014_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(60549017013614424127)
,p_prompt=>'Page'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549032914791424193)
,p_name=>'P10014_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(60549017013614424127)
,p_prompt=>'Filed'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549033272030424193)
,p_name=>'P10014_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(60549017013614424127)
,p_prompt=>'Rating'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'HTML_UNSAFE',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549033660159424193)
,p_name=>'P10014_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(60549017013614424127)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549034121698424193)
,p_name=>'P10014_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(60549017013614424127)
,p_prompt=>'Response'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549034519100424194)
,p_name=>'P10014_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(60549017013614424127)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_lov=>'.'||wwv_flow_imp.id(60549034636915424194)||'.'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549036817343424196)
,p_name=>'P10014_ATTACHMENT_DISPLAY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(60549017013614424127)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Attachment'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''<a href="''||apex_util.get_blob_file_src(''P10013_ATTACHMENT'',id)||''">''||filename||''</a>''',
'  from apex$team_dev_files',
' where component_id = :P10014_ID',
'   and component_type = ''FEEDBACK'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'select 1 from apex$team_dev_files where component_id = :P10014_ID and component_type = ''FEEDBACK'''
,p_display_when_type=>'EXISTS'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'HTML_UNSAFE',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549037197914424197)
,p_name=>'P10014_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(60549017013614424127)
,p_prompt=>'User Agent'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60549017541947424128)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(60549017337736424128)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60549037971384424197)
,p_event_id=>wwv_flow_imp.id(60549017541947424128)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60549038528457424197)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
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
'    where feedback_id = :P10014_ID',
') loop',
'   :P10014_PAGE_ID := c1.page_id||''. ''||c1.page_name;',
'   :P10014_FILED := c1.filed;',
'   :P10014_RATING_ICON := c1.rating_icon;',
'   :P10014_FEEDBACK := c1.feedback;',
'   :P10014_RESPONSE := c1.public_response;',
'   :P10014_FEEDBACK_STATUS := c1.feedback_status;',
'   :P10014_USER_AGENT := c1.http_user_agent;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1537613160211206782
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60549038877369424198)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.reply_to_feedback (',
'    p_feedback_id        => :P10014_ID,',
'    p_status             => :P10014_FEEDBACK_STATUS,',
'    p_public_response    => :P10014_RESPONSE );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(60549017166195424128)
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>1537613509123206783
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60549039308125424198)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.delete_feedback (',
'    p_feedback_id        => :P10014_ID );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(60549017440071424128)
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>1537613939879206783
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60549039734438424199)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'E.PROPERTY.BUTTON_ACTION.LOV.RESET.D'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(60549017440071424128)
,p_internal_uid=>1537614366192206784
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60549040136267424199)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1537614768021206784
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Configure Access Control'
,p_alias=>'CONFIGURE-ACCESS-CONTROL'
,p_page_mode=>'MODAL'
,p_step_title=>'Configure Access Control'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(60541512145456301566)
,p_required_patch=>wwv_flow_imp.id(60549056733117428311)
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
 p_id=>wwv_flow_imp.id(60549058448771428321)
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
 p_id=>wwv_flow_imp.id(60549058580497428321)
,p_plug_name=>'Dialog Buttons'
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
 p_id=>wwv_flow_imp.id(60549060003321428323)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(60549058580497428321)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60549058695091428321)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(60549058580497428321)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(60549060686654428324)
,p_branch_name=>'Go To Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549060953268428324)
,p_name=>'P10020_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(60549058448771428321)
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
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60549058835049428321)
,p_name=>'Cancel Modal'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(60549058695091428321)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60549061702478428326)
,p_event_id=>wwv_flow_imp.id(60549058835049428321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60549062176871428326)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACCESS CONTROL ENABLED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10020_ALLOW_OTHER_USERS = ''Y'' then',
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
,p_internal_uid=>1537636808625210911
);
end;
/
prompt --application/pages/page_10021
begin
wwv_flow_imp_page.create_page(
 p_id=>10021
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(60541512145456301566)
,p_required_patch=>wwv_flow_imp.id(60549056733117428311)
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
 p_id=>wwv_flow_imp.id(60549062600775428326)
,p_plug_name=>'Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   nvl(trim(prfd_na),legal_na) as associate,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'left outer join IS_ORG_ASSOC ioa on ioa.ACF2_LID_ID = user_name',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage User Access'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(60549063695928428326)
,p_name=>'Manage User Access'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10022:&APP_SESSION.::::P10022_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'J11740'
,p_internal_uid=>1360837052672818123
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60549063745237428330)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60549064211034428330)
,p_db_column_name=>'USERNAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60549064569041428331)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60544892968887895617)
,p_db_column_name=>'ASSOCIATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Associate'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(60549065281860428331)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'13608387'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ASSOCIATE:ACCESS_ROLE:'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60549066162958428332)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(60549062600775428326)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60549066629516428333)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(60549062600775428326)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:10023:&SESSION.::&DEBUG.:10023::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60549066997686428333)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(60549062600775428326)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:10022:&SESSION.::&DEBUG.:10022'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60549062671809428326)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(60549062600775428326)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60549067632326428333)
,p_event_id=>wwv_flow_imp.id(60549062671809428326)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60549062600775428326)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_10022
begin
wwv_flow_imp_page.create_page(
 p_id=>10022
,p_name=>'Manage User Access'
,p_alias=>'USER_ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(60541512145456301566)
,p_required_patch=>wwv_flow_imp.id(60549056733117428311)
,p_dialog_chained=>'N'
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
'<p><em><strong>Note:</strong>   If using Oracle Application Express accounts then users entered here must also be defined as end users by a Workspace Administrator, who can also set their password.</em></p>'))
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60549068103988428333)
,p_plug_name=>'Form Items Region'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
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
 p_id=>wwv_flow_imp.id(60549068166871428333)
,p_plug_name=>'Button Bar'
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
 p_id=>wwv_flow_imp.id(60549068342667428333)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(60549068166871428333)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P10022_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60549068440588428333)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(60549068166871428333)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P10022_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60549068517877428333)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(60549068166871428333)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60549068626230428333)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(60549068166871428333)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P10022_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549068759533428333)
,p_name=>'P10022_USERNAME'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(60549068103988428333)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'IS_ORG_ASSOC_JORP_2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  nvl(trim(PRFD_NA), LEGAL_NA)||'' (''||ACF2_LID_ID||'')'' as d,',
'  ACF2_LID_ID as r',
'from IS_ORG_ASSOC',
'where TERM_DA is NULL',
'order by 1'))
,p_cSize=>100
,p_cMaxlength=>255
,p_read_only_when=>'P10022_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '2')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549070955292428335)
,p_name=>'P10022_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(60549068103988428333)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549071368879428335)
,p_name=>'P10022_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(60549068103988428333)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549072097772428335)
,p_name=>'P10022_ROLE_ID'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(60549068103988428333)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Role'
,p_source=>'ROLE_IDS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features for authenticated users. This application supports the following 3 roles: Reader, Contributor, and Administrator.<p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create,edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>,in addition to Contributors capability,can also perform configuration of the application.</li>',
'</ul>'))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60549068674843428333)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(60549068517877428333)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60549073638159428340)
,p_event_id=>wwv_flow_imp.id(60549068674843428333)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60549074059955428340)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row'
,p_attribute_02=>'APEX_APPL_ACL_USERS'
,p_attribute_03=>'P10022_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1537648691709210925
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60549074480732428340)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Save'
,p_attribute_02=>'APEX_APPL_ACL_USERS'
,p_attribute_03=>'P10022_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>1537649112486210925
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60549074871424428340)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset Page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(60549068626230428333)
,p_internal_uid=>1537649503178210925
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60549075253673428341)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1537649885427210926
);
end;
/
prompt --application/pages/page_10023
begin
wwv_flow_imp_page.create_page(
 p_id=>10023
,p_name=>'Add Multiple Users - Step 1'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-1'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.helpText {',
'padding: 8px;',
'color: #707070;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(60541512145456301566)
,p_required_patch=>wwv_flow_imp.id(60549056733117428311)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60549075650517428341)
,p_plug_name=>'Button Bar'
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
 p_id=>wwv_flow_imp.id(60549075838834428341)
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
 p_id=>wwv_flow_imp.id(60549075912905428341)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(60549075650517428341)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60549076039885428341)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(60549075650517428341)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(60549078621831428342)
,p_branch_name=>'Go To Next Step'
,p_branch_action=>'f?p=&APP_ID.:10024:&SESSION.::&DEBUG.:RP,10024::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(60549075912905428341)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549079003484428342)
,p_name=>'P10023_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(60549075838834428341)
,p_item_default=>'2'
,p_prompt=>'Role'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549079421664428342)
,p_name=>'P10023_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(60549075838834428341)
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
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549079764480428342)
,p_name=>'P10023_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(60549075838834428341)
,p_prompt=>'Username Format'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_imp.id(60549079928164428342)||'.'
,p_display_when_type=>'NEVER'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60549076078951428341)
,p_name=>'Cancel Modal'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(60549076039885428341)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60549081167295428344)
,p_event_id=>wwv_flow_imp.id(60549076078951428341)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60549081739988428344)
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
'    ---------------------',
'    -- create collections',
'    --',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''ACL_BULK_USER_INVALID'');',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''ACL_BULK_USER_VALID'');',
'',
'    --------------------------------------------',
'    -- replace delimiting characters with commas',
'    --',
'    l_line := :P10023_PRELIM_USERS;',
'    l_line := replace(l_line,chr(10),'' '');',
'    l_line := replace(l_line,chr(13),'' '');',
'    l_line := replace(l_line,chr(9),'' '');',
'    l_line := replace(l_line,''<'','' '');',
'    l_line := replace(l_line,''>'','' '');',
'    l_line := replace(l_line,'';'','' '');',
'    l_line := replace(l_line,'':'','' '');',
'    l_line := replace(l_line,''('','' '');',
'    l_line := replace(l_line,'')'','' '');',
'    l_line := replace(l_line,'' '','','');',
'',
'    -----------------------------------------',
'    -- get one comma separated line of emails',
'    --',
'    for j in 1..1000 loop',
'        if instr(l_line,'',,'') > 0 then',
'           l_line := replace(l_line,'',,'','','');',
'        else',
'           exit;',
'        end if;',
'    end loop;',
'',
'    -------------------------',
'    -- get an array of emails',
'    --',
'    l_emails := apex_string.split(l_line,'','');',
'',
'    -----------------------------',
'    -- add emails to a collection',
'    --',
'    l_username := null;',
'    l_domain := null;',
'    l_at := 0;',
'    l_dot := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid := true;',
'        l_username := upper(trim(l_emails(j)));',
'        l_username := trim(both ''.'' from l_username);',
'        l_username := replace(l_username,'' '',null);',
'        l_username := replace(l_username,chr(10),null);',
'        l_username := replace(l_username,chr(9),null);',
'        l_username := replace(l_username,chr(13),null);',
'        l_username := replace(l_username,chr(49824),null);',
'',
'        if l_username is not null then',
'            if NVL(:P10023_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -----------',
'              -- Validate',
'              --',
'              l_at := instr(nvl(l_username,''x''),''@'');',
'              l_domain := substr(l_username,l_at+1);',
'              l_dot := instr(l_domain,''.'');',
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
'                              and c001 = l_username)',
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
'                    p_c003            => :P10023_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(60549075912905428341)
,p_internal_uid=>1537656371742210929
);
end;
/
prompt --application/pages/page_10024
begin
wwv_flow_imp_page.create_page(
 p_id=>10024
,p_name=>'Add Multiple Users - Step 2'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.uReportList {',
'    margin: 0;',
'    list-style: none;',
'}',
'.uReportList li {',
'    margin: 0 0 4px 0;',
'}',
'.check_icon {',
'    display: inline-block;',
'    width: 16px;',
'    height: 16px;',
'    line-height: 16px;',
'    background: #69B86B;',
'    color: #FFF;',
'    text-align: center;',
'    border-radius: 12px;',
'    font-size: 15px;',
'    border: 1px solid green;',
'    text-shadow: 0 -1px 0 rgba(0,0,0,.15);',
'    vertical-align: top;',
'    margin-right: 4px;',
'}',
'.valid_user {',
'    display: inline-block;',
'    padding: 4px 8px 4px 4px;',
'    border: 1px solid #D0D0D0;',
'    border-radius: 3px;',
'    line-height: 20px;',
'    background-color: #F8F8F8;',
'    color: #404040;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(60541512145456301566)
,p_required_patch=>wwv_flow_imp.id(60549056733117428311)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60549076202274428341)
,p_plug_name=>'Button Bar'
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
 p_id=>wwv_flow_imp.id(60549076268771428341)
,p_plug_name=>'Add Multiple Users - Step 2'
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
 p_id=>wwv_flow_imp.id(60549076726494428341)
,p_name=>'Exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(60549076268771428341)
,p_template=>2664334895415463485
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_display_point=>'SUB_REGIONS'
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
 p_id=>wwv_flow_imp.id(60549083609301428350)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60549084005376428350)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60549076790119428341)
,p_plug_name=>'&P10024_VALID_COUNT. Users to Add'
,p_parent_plug_id=>wwv_flow_imp.id(60549076268771428341)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct lower(c001) username',
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
  'text_formatting', '<span class="fa fa-check-circle u-success-text" aria-hidden="true"></span> <span style="line-height:36px;">&USERNAME.</span>')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60549076884066428341)
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
 p_id=>wwv_flow_imp.id(60549087069027428362)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sys.htp.prn(''<p>'');',
'sys.htp.prn(apex_lang.message (',
'                ''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'',',
'                apex_escape.html(:P10024_VALID_COUNT),',
'                apex_escape.html(:P10024_ROLE)));',
'sys.htp.prn(''</p>'');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60549087840501428363)
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
 p_id=>wwv_flow_imp.id(60549076947623428341)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(60549076202274428341)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60549088461472428364)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(60549076202274428341)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60549076488091428341)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(60549076202274428341)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549089228860428364)
,p_name=>'P10024_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(60549076884066428341)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG( role_name, '', '')',
'         WITHIN GROUP (ORDER BY role_name) role_name',
'from APEX_APPL_ACL_ROLES',
'where application_id = :APP_ID',
'and instr(:P10023_ROLE, role_id, 1) > 0'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549089604237428365)
,p_name=>'P10024_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(60549076884066428341)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60549089993879428365)
,p_name=>'P10024_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(60549076884066428341)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60549076638169428341)
,p_name=>'Cancel Modal'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(60549076488091428341)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60549090707788428365)
,p_event_id=>wwv_flow_imp.id(60549076638169428341)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60549091205694428365)
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
'                where  collection_name = ''ACL_BULK_USER_VALID'' ) loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.DELETE_COLLECTION(''ACL_BULK_USER_INVALID'');',
'    apex_collection.DELETE_COLLECTION(''ACL_BULK_USER_VALID'');',
'    :P10023_PRELIM_USERS := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(60549076947623428341)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>1537665837448210950
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60549091583443428366)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1537666215197210951
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
,p_group_id=>wwv_flow_imp.id(60541512761682301572)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_patch=>wwv_flow_imp.id(60553073946072803759)
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60553074169325803802)
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
 p_id=>wwv_flow_imp.id(60553074305426803802)
,p_region_id=>wwv_flow_imp.id(60553074169325803802)
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
 p_id=>wwv_flow_imp.id(60553076358598803823)
,p_chart_id=>wwv_flow_imp.id(60553074305426803802)
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
'select  w.start_tm log_time,',
'    (   select count(*)',
'        from apex_activity_log l',
'        where l.flow_id = :app_id',
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
 p_id=>wwv_flow_imp.id(60553076947303803826)
,p_chart_id=>wwv_flow_imp.id(60553074305426803802)
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
 p_id=>wwv_flow_imp.id(60553077642312803827)
,p_chart_id=>wwv_flow_imp.id(60553074305426803802)
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
 p_id=>wwv_flow_imp.id(60553074399606803802)
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
 p_id=>wwv_flow_imp.id(60553074527835803802)
,p_region_id=>wwv_flow_imp.id(60553074399606803802)
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
 p_id=>wwv_flow_imp.id(60553081435989803831)
,p_chart_id=>wwv_flow_imp.id(60553074527835803802)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.step_id||''. ''||(select page_name from apex_application_pages p where p.application_id = :app_id and page_id = x.step_id) label, ',
'        value ',
'from',
'(',
'select step_id,',
'    count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'    and step_id is not null',
'group by step_id',
'order by 2 desc',
') x'))
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
 p_id=>wwv_flow_imp.id(60553082035686803831)
,p_chart_id=>wwv_flow_imp.id(60553074527835803802)
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
 p_id=>wwv_flow_imp.id(60553082619747803833)
,p_chart_id=>wwv_flow_imp.id(60553074527835803802)
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
 p_id=>wwv_flow_imp.id(60553074564359803802)
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
 p_id=>wwv_flow_imp.id(60553074663185803802)
,p_region_id=>wwv_flow_imp.id(60553074564359803802)
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
 p_id=>wwv_flow_imp.id(60553078901001803828)
,p_chart_id=>wwv_flow_imp.id(60553074663185803802)
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
 p_id=>wwv_flow_imp.id(60553080053208803830)
,p_chart_id=>wwv_flow_imp.id(60553074663185803802)
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
 p_id=>wwv_flow_imp.id(60553079542266803829)
,p_chart_id=>wwv_flow_imp.id(60553074663185803802)
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
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(60553074784149803802)
,p_name=>'Recent Errors'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    sqlerrm label,',
'    time_stamp value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'and sqlerrm is not null',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60553083631425803877)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60553084014883803878)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(60553074908708803802)
,p_name=>'Latest Activity'
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc as username,',
'    max(time_stamp) as last_activity',
'from apex_activity_log',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'    and userid_lc is not null',
'group by userid_lc',
'order by 2 desc'))
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
 p_id=>wwv_flow_imp.id(60553086753097803908)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60553087168255803909)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>'Last Activity'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60553074948368803802)
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
 p_id=>wwv_flow_imp.id(60553089516171803918)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(60553074169325803802)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60553089933029803920)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(60553074399606803802)
,p_button_name=>'VIEW_ACTIVITY_DETAILS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:10034:&SESSION.::&DEBUG.:RP,10034::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60553090246216803920)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(60553074564359803802)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60553090647909803920)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(60553074784149803802)
,p_button_name=>'VIEW_RECENT_ERRORS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:10032:&SESSION.::&DEBUG.:RP,10032::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60553075134996803802)
,p_name=>'P10030_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(60553074948368803802)
,p_item_default=>'900'
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'      val as seconds',
' from table( apex_util.get_timeframe_lov_data )',
'order by insert_order'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60553075207810803802)
,p_name=>'Change Filters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10030_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60553092297957803938)
,p_event_id=>wwv_flow_imp.id(60553075207810803802)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60553074169325803802)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60553092829328803941)
,p_event_id=>wwv_flow_imp.id(60553075207810803802)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60553074564359803802)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60553093279503803941)
,p_event_id=>wwv_flow_imp.id(60553075207810803802)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60553074399606803802)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60553093773102803942)
,p_event_id=>wwv_flow_imp.id(60553075207810803802)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60553074784149803802)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60553094251627803942)
,p_event_id=>wwv_flow_imp.id(60553075207810803802)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60553074908708803802)
,p_attribute_01=>'N'
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
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(60541512761682301572)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Remove padding around dialog page */',
'.hour-graph { display: table; width: 100%; }',
'span.hour { display: table-cell; padding: 0; font-size: 11px; text-align: center; background-color: #a6ffa6; min-width: 32px; }',
'span.hour.is-over1k { background-color: #7bdc7b; }',
'span.hour.is-null { background-color: #E0E0E0; }',
'span.hour-label { opacity: 0.5; }',
'span.hour-value { display: block; }'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_patch=>wwv_flow_imp.id(60553073946072803759)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this report and chart to see the users with the most page views for the specified timeframe.</p>',
'<p>Select the reporting timeframe (Default = 1 day) and choose between the report and chart icons at the top of the page.</p>',
'<p>For the interactive report, use the search field, or select the <strong>User</strong> column heading, to select a specific user. You can perform numerous functions by clicking the <strong>Actions</strong> button, such as columns displayed / hidden'
||', rows per page, filter, and so forth. Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60553117167939804013)
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
 p_id=>wwv_flow_imp.id(60553118584031804014)
,p_name=>'Top Users'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'J11740'
,p_internal_uid=>1364891940776193811
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553118721536804018)
,p_db_column_name=>'THE_USER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553119081525804018)
,p_db_column_name=>'HOURS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Activity by Hour'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553119510289804019)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>30
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
 p_id=>wwv_flow_imp.id(60553119891049804020)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>40
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
 p_id=>wwv_flow_imp.id(60553120279961804021)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>50
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
 p_id=>wwv_flow_imp.id(60553120655609804022)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'IR Searches'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553121119688804023)
,p_db_column_name=>'ERRORS'
,p_display_order=>70
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
 p_id=>wwv_flow_imp.id(60553121510248804024)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Most_Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(60553122195681804024)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'13648956'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60553117251554804013)
,p_plug_name=>'Button Bar'
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
 p_id=>wwv_flow_imp.id(60553117517730804013)
,p_plug_name=>'Top Users Chart'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--hiddenOverflow'
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
 p_id=>wwv_flow_imp.id(60553117585460804013)
,p_region_id=>wwv_flow_imp.id(60553117517730804013)
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
 p_id=>wwv_flow_imp.id(60553125813042804029)
,p_chart_id=>wwv_flow_imp.id(60553117585460804013)
,p_seq=>10
,p_name=>'Top Users'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc as userid,',
'    count(*) as page_views',
'from apex_activity_log',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'    and userid is not null',
'group by userid_lc',
'order by 2'))
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_items_value_column_name=>'PAGE_VIEWS'
,p_items_label_column_name=>'USERID'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60553123123367804025)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(60553117167939804013)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60553117694193804013)
,p_name=>'P10031_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(60553117251554804013)
,p_item_default=>'REPORT'
,p_prompt=>'View As'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_lov=>'.'||wwv_flow_imp.id(60553126333586804029)||'.'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'number_of_columns', '2',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60553117923877804013)
,p_name=>'P10031_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(60553117251554804013)
,p_item_default=>'900'
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'      val as seconds',
' from table( apex_util.get_timeframe_lov_data )',
'order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60553117391538804013)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10031_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60553124436301804026)
,p_event_id=>wwv_flow_imp.id(60553117391538804013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60553117167939804013)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60553127826769804034)
,p_event_id=>wwv_flow_imp.id(60553117391538804013)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60553117167939804013)
,p_attribute_01=>'N'
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
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(60541512761682301572)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_patch=>wwv_flow_imp.id(60553073946072803759)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60553112262388804006)
,p_plug_name=>'Application Error Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    step_id,',
'    userid,',
'    time_stamp err_time,',
'    sqlerrm,',
'    sqlerrm_component_type,',
'    sqlerrm_component_name',
'from apex_activity_log',
'where flow_id = :app_id',
'and sqlerrm is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Application Error Log'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(60553113165286804006)
,p_name=>'Application Error Log'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_owner=>'J11740'
,p_internal_uid=>1364886522031193803
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553113307977804008)
,p_db_column_name=>'STEP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553113736301804009)
,p_db_column_name=>'USERID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553114087979804009)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Occurrence'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553114532643804010)
,p_db_column_name=>'SQLERRM'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Message'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553114857494804011)
,p_db_column_name=>'SQLERRM_COMPONENT_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Context'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553115259872804011)
,p_db_column_name=>'SQLERRM_COMPONENT_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(60553115982865804012)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'13648894'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60553116861220804012)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(60553112262388804006)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
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
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(60541512761682301572)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_patch=>wwv_flow_imp.id(60553073946072803759)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the page performance and popularity. The report is ordered by <strong>Weighted Performance</strong> which is calculated by multiplying the Median Elapsed time and number of Page Views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60553102655200803994)
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
 p_id=>wwv_flow_imp.id(60553103591268803995)
,p_name=>'Page Performance'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'J11740'
,p_internal_uid=>1364876948013193792
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553103696486803999)
,p_db_column_name=>'PAGE'
,p_display_order=>15
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553104100284804000)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>25
,p_column_identifier=>'B'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553104460563804000)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>35
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
 p_id=>wwv_flow_imp.id(60553104917185804001)
,p_db_column_name=>'WEIGHTED_PERFORMANCE'
,p_display_order=>45
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
 p_id=>wwv_flow_imp.id(60553105275888804001)
,p_db_column_name=>'ERRORS'
,p_display_order=>55
,p_column_identifier=>'E'
,p_column_label=>'Action Processed.'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553105687246804001)
,p_db_column_name=>'DISTINCT_USERS'
,p_display_order=>65
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
 p_id=>wwv_flow_imp.id(60553106043905804002)
,p_db_column_name=>'APPLICATION_SESSIONS'
,p_display_order=>75
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
 p_id=>wwv_flow_imp.id(60553106484888804002)
,p_db_column_name=>'PAGE_VIEWS'
,p_display_order=>85
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
 p_id=>wwv_flow_imp.id(60553106872751804002)
,p_db_column_name=>'MAX_ELAPSED'
,p_display_order=>95
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
 p_id=>wwv_flow_imp.id(60553107307901804002)
,p_db_column_name=>'TOTAL_ROWS'
,p_display_order=>105
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
 p_id=>wwv_flow_imp.id(60553107733188804003)
,p_db_column_name=>'PARTIAL_PAGE_VIEWS'
,p_display_order=>115
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
 p_id=>wwv_flow_imp.id(60553108078901804003)
,p_db_column_name=>'FULL_PAGE_VIEWS'
,p_display_order=>125
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
 p_id=>wwv_flow_imp.id(60553108458840804003)
,p_db_column_name=>'MIN_ELAPSED'
,p_display_order=>135
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
 p_id=>wwv_flow_imp.id(60553108926028804003)
,p_db_column_name=>'AVG_ELAPSED'
,p_display_order=>145
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
 p_id=>wwv_flow_imp.id(60553109591062804004)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'13648830'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60553102804080803994)
,p_plug_name=>'Button Bar'
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
 p_id=>wwv_flow_imp.id(60553110538999804005)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(60553102655200803994)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60553102565403803994)
,p_name=>'P10033_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(60553102804080803994)
,p_item_default=>'900'
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'      val as seconds',
' from table( apex_util.get_timeframe_lov_data )',
'order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60553102858265803994)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10033_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60553111754627804006)
,p_event_id=>wwv_flow_imp.id(60553102858265803994)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60553102655200803994)
,p_attribute_01=>'N'
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
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(60541512761682301572)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_patch=>wwv_flow_imp.id(60553073946072803759)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the most recent page views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60553094782973803943)
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
 p_id=>wwv_flow_imp.id(60553095691740803944)
,p_name=>'Page Views'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'J11740'
,p_internal_uid=>1364869048485193741
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553095829643803960)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553096074812803980)
,p_db_column_name=>'USER_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553096466835803980)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553096856942803981)
,p_db_column_name=>'ELAPSED'
,p_display_order=>40
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
 p_id=>wwv_flow_imp.id(60553097265502803981)
,p_db_column_name=>'PAGE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553097697580803981)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553098107946803982)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553098455826803983)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>80
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
 p_id=>wwv_flow_imp.id(60553098886492803983)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'IR Search'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553099269785803983)
,p_db_column_name=>'ERROR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(60553099982668803987)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'13648734'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60553094929725803943)
,p_plug_name=>'Button Bar'
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
 p_id=>wwv_flow_imp.id(60553100880536803992)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(60553094782973803943)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60553094669082803943)
,p_name=>'P10034_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(60553094929725803943)
,p_item_default=>'900'
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'      val as seconds',
' from table( apex_util.get_timeframe_lov_data )',
'order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60553095012503803943)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10034_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60553102193723803994)
,p_event_id=>wwv_flow_imp.id(60553095012503803943)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60553094782973803943)
,p_attribute_01=>'N'
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
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(60541512761682301572)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_patch=>wwv_flow_imp.id(60553073946072803759)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the automations log.</p>',
'<p>Review logged information about previous automation executions. The log contains start and end timestamps as well as details about processed rows (successful and with errors). Drill down into Messages to see individual messages for processed rows.'
||'</p>',
''))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60553128339252804035)
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
 p_id=>wwv_flow_imp.id(60553129148341804035)
,p_name=>'Automations Log'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'J11740'
,p_internal_uid=>1364902505086193832
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553129288735804053)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553129664745804054)
,p_db_column_name=>'START_TIMESTAMP'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Started'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553130102777804054)
,p_db_column_name=>'AUTOMATION_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Automation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553130535505804055)
,p_db_column_name=>'STATUS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553130884149804055)
,p_db_column_name=>'SUCCESSFUL_ROW_COUNT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Successful Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553131305941804055)
,p_db_column_name=>'ERROR_ROW_COUNT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Error Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553131709255804056)
,p_db_column_name=>'MSG_COUNT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Messages'
,p_column_link=>'f?p=&APP_ID.:10036:&SESSION.:::RP,10036:P10036_LOG_ID:#ID#'
,p_column_linktext=>'#MSG_COUNT#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553132137461804056)
,p_db_column_name=>'IS_JOB'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Scheduled'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553132478247804056)
,p_db_column_name=>'END_TIMESTAMP'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Ended'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(60553133520886804060)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'13649069'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'START_TIMESTAMP:AUTOMATION_NAME:STATUS:SUCCESSFUL_ROW_COUNT:ERROR_ROW_COUNT:MSG_COUNT'
,p_sort_column_1=>'START_TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60553134345629804061)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(60553128339252804035)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
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
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(60541512761682301572)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(60553073946072803759)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60553134990157804061)
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
 p_id=>wwv_flow_imp.id(60553137357218804066)
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
 p_id=>wwv_flow_imp.id(60553137736211804074)
,p_query_column_id=>1
,p_column_alias=>'MESSAGE_TIMESTAMP'
,p_column_display_sequence=>1
,p_column_heading=>'Timestamp'
,p_column_alignment=>'CENTER'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60553138075486804075)
,p_query_column_id=>2
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>2
,p_column_heading=>'Message'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60553138502139804075)
,p_query_column_id=>3
,p_column_alias=>'MESSAGE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Message Type'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60553138916114804075)
,p_query_column_id=>4
,p_column_alias=>'PK_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'Primary Key Value'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60553135345013804062)
,p_name=>'P10036_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(60553134990157804061)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60553135786018804063)
,p_name=>'P10036_AUTOMATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(60553134990157804061)
,p_prompt=>'Automation'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60553136180101804063)
,p_name=>'P10036_START_TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(60553134990157804061)
,p_prompt=>'Started'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60553136544522804063)
,p_name=>'P10036_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(60553134990157804061)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60553136983334804064)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Log Detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select automation_name,',
'       start_timestamp,',
'       status',
'into   :P10036_AUTOMATION_NAME,',
'       :P10036_START_TIMESTAMP,',
'       :P10036_STATUS',
'  from apex_automation_log',
' where id = :P10036_LOG_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1541711615088586649
);
end;
/
prompt --application/pages/page_10040
begin
wwv_flow_imp_page.create_page(
 p_id=>10040
,p_name=>'Configuration Options'
,p_alias=>'CONFIGURATION-OPTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Configuration Options'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_patch=>wwv_flow_imp.id(86869663911043510929)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Configuration settings allow you to make specific functionality either available (enabled) or unavailable (disabled) to end users.</p>',
'<p>If a specific function is not 100% ready, or needs to be temporarily removed, click <strong>Disabled</strong>. ',
'Once it should be made available, simply click <strong>Enabled</strong>.</p>',
'<p><em><strong>Note:</strong> Changes made here will not be reflected for individual end users currently running the application. Once the end user signs out and then signs back in the revised feature settings will be invoked.</em></p>'))
,p_page_comment=>'n/a'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(86869664174730510931)
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
 p_id=>wwv_flow_imp.id(86869664313528510931)
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
 p_id=>wwv_flow_imp.id(86869664948517510932)
,p_name=>'Configuration Options'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SCOTT.VICARS@EDWARDJONES.COM'
,p_internal_uid=>86869664948517510932
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(86869665686528510944)
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
 p_id=>wwv_flow_imp.id(86869665939238510945)
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
 p_id=>wwv_flow_imp.id(86869666379944510946)
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
 p_id=>wwv_flow_imp.id(86869666749162510946)
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
 p_id=>wwv_flow_imp.id(86869667133273510946)
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
 p_id=>wwv_flow_imp.id(86869667531112510947)
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
 p_id=>wwv_flow_imp.id(86869667989645510947)
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
 p_id=>wwv_flow_imp.id(86869670785875510952)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'868696708'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_OPTION:STATUS:DESCRIPTION:UPDATED:UPDATED_BY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(86869672317110510954)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(86869664174730510931)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(86869671633695510953)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(86869664313528510931)
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
 p_id=>wwv_flow_imp.id(86869673186823510955)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(86869672770164510954)
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
,p_internal_uid=>86869672770164510954
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(86904103614359860107)
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DROP PACKAGE APXSHR_HIST_PKG;',
'',
'delete APXSHR_LOV_NAME where APP_ALIAS = ''APXSHR_HIST'';',
'',
'delete APXSHR_PGM_OPTIONS where APP_ALIAS = ''APXSHR_HIST'';'))
);
end;
/
prompt --application/deployment/install/install_create_apxshr_hist_table_and_view
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(62230844031059367828)
,p_install_id=>wwv_flow_imp.id(86904103614359860107)
,p_name=>'Create APXSHR_HIST table and view'
,p_sequence=>1
,p_script_type=>'INSTALL'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>'select COUNT(*) from APXSHR_HISTORY'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  /*',
'    This table and view may already exist if you installed the PGMOPT or APXSHR_SHARED_LOVS apps.',
'  */',
'  CREATE SEQUENCE  "APXSHR_HISTORY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;',
'',
'  CREATE TABLE "APXSHR_HISTORY" ',
'   (	"ID" NUMBER, ',
'	"TABLE_NAME" VARCHAR2(128), ',
'	"COLUMN_NAME" VARCHAR2(128), ',
'	"ACTION" VARCHAR2(1), ',
'	"ACTION_DATE" DATE, ',
'	"ACTION_BY" VARCHAR2(255), ',
'	"DATA_TYPE" VARCHAR2(255), ',
'	"PK1" VARCHAR2(64), ',
'	"TAB_ROW_VERSION" NUMBER(*,0), ',
'	"OLD_VC" VARCHAR2(4000), ',
'	"NEW_VC" VARCHAR2(4000), ',
'	"OLD_NUMBER" NUMBER, ',
'	"NEW_NUMBER" NUMBER, ',
'	"OLD_DATE" DATE, ',
'	"NEW_DATE" DATE, ',
'	"OLD_TS" TIMESTAMP (6), ',
'	"NEW_TS" TIMESTAMP (6), ',
'	"OLD_TSWTZ" TIMESTAMP (6) WITH TIME ZONE, ',
'	"NEW_TSWTZ" TIMESTAMP (6) WITH TIME ZONE, ',
'	"OLD_TSWLTZ" TIMESTAMP (6) WITH LOCAL TIME ZONE, ',
'	"NEW_TSWLTZ" TIMESTAMP (6) WITH LOCAL TIME ZONE, ',
'	"OLD_CLOB" CLOB, ',
'	"NEW_CLOB" CLOB, ',
'	"OLD_BLOB" BLOB, ',
'	"NEW_BLOB" BLOB, ',
'	"ASOF_TS" DATE DEFAULT SYSDATE, ',
'	 CHECK (action in (''I'',''U'',''D'')) ENABLE, ',
'	 PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE INDEX "APXSHR_HISTORY_IDX1" ON "APXSHR_HISTORY" ("COLUMN_NAME");',
'',
'CREATE INDEX "APXSHR_HISTORY_INDX2" ON "APXSHR_HISTORY" ("PK1");',
'',
'CREATE INDEX "APXSHR_HISTORY_IDX3" ON "APXSHR_HISTORY" ("ASOF_TS");',
'',
'CREATE OR REPLACE FORCE EDITIONABLE VIEW "APXSHR_HISTORY_V" ("ID", "TABLE_NAME", "COLUMN_NAME", "ACTION", "ACTION_DATE", "ACTION_BY", "TABLE_PRIMARY_KEY", "TABLE_ROW_VERSION", "CHANGE") AS ',
'  SELECT id,',
'           table_name,',
'           column_name,',
'           DECODE (action,  ''U'', ''Update'',  ''D'', ''Delete'')',
'               action,',
'           action_date,',
'           action_by,',
'           pk1',
'               table_primary_key,',
'           tab_row_version',
'               table_row_version,',
'           DECODE (',
'               data_type,',
'               ''NUMBER'', old_number || '' > '' || new_number,',
'               ''VARCHAR2'',    SUBSTR (old_vc, 1, 50)',
'                           || '' > ''',
'                           || SUBSTR (new_vc, 1, 50),',
'               ''DATE'',    TO_CHAR (old_date, ''YYYYMMDD HH24:MI:SS'')',
'                       || '' > ''',
'                       || TO_CHAR (new_date, ''YYYYMMDD HH24:MI:SS''),',
'               ''TIMESTAMP'',    TO_CHAR (old_ts, ''YYYYMMDD HH24:MI:SS'')',
'                            || '' > ''',
'                            || TO_CHAR (new_ts, ''YYYYMMDD HH24:MI:SS''),',
'               ''TIMESTAMP WITH TIMEZONE'',    TO_CHAR (old_tswtz,',
'                                                      ''YYYYMMDD HH24:MI:SS'')',
'                                          || '' > ''',
'                                          || TO_CHAR (new_tswtz,',
'                                                      ''YYYYMMDD HH24:MI:SS''),',
'               ''TIMESTAMP WITH LOCAL TIMEZONE'',    TO_CHAR (',
'                                                       old_tswltz,',
'                                                       ''YYYYMMDD HH24:MI:SS'')',
'                                                || '' > ''',
'                                                || TO_CHAR (',
'                                                       new_tswltz,',
'                                                       ''YYYYMMDD HH24:MI:SS''),',
'               ''BLOB'',    ''length ''',
'                       || sys.DBMS_LOB.getlength (old_blob)',
'                       || '' > ''',
'                       || '' length ''',
'                       || sys.DBMS_LOB.getlength (new_blob),',
'               ''CLOB'',    sys.DBMS_LOB.SUBSTR (old_clob, 50, 1)',
'                       || '' > ''',
'                       || sys.DBMS_LOB.SUBSTR (new_clob, 50, 1))',
'               change',
'      FROM apxshr_history',
';'))
);
end;
/
prompt --application/deployment/install/install_create_apxshr_lov_tables
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(62235121693331435401)
,p_install_id=>wwv_flow_imp.id(86904103614359860107)
,p_name=>'Create APXSHR_LOV_* Tables'
,p_sequence=>5
,p_script_type=>'INSTALL'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>'select 1 from APXSHR_LOV_NAME where APP_ALIAS = ''APXSHR_HIST'''
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'    These objects may already exist if you installed the PGMOPT or APXSHR_SHARED_LOVS apps.',
'*/',
'CREATE TABLE "APXSHR_LOV_NAME" ',
'   (	"ID" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"APP_ALIAS" VARCHAR2(500) NOT NULL ENABLE, ',
'	"LOV_NA" VARCHAR2(100) NOT NULL ENABLE, ',
'	"LOV_DESC" VARCHAR2(500), ',
'	"SORT_ORDER_NO" NUMBER, ',
'	"ACTIVE_IND" VARCHAR2(1), ',
'	"CREATED" DATE NOT NULL ENABLE, ',
'	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE, ',
'	"UPDATED" DATE NOT NULL ENABLE, ',
'	"UPDATED_BY" VARCHAR2(255) NOT NULL ENABLE, ',
'	"GLOBAL_LOV_IND" CHAR(1), ',
'	"ALLOW_USER_DELETE_IND" CHAR(1)',
'   ) ;',
'CREATE UNIQUE INDEX "APXSHR_LOV_NAME_PK" ON "APXSHR_LOV_NAME" ("ID");',
'',
'CREATE UNIQUE INDEX "APXSHR_LOV_NAME_U1" ON "APXSHR_LOV_NAME" ("APP_ALIAS", "LOV_NA");',
'',
'CREATE INDEX "APXSHR_LOV_NAME_IDX1" ON "APXSHR_LOV_NAME" ("LOV_NA");',
'',
'ALTER TABLE "APXSHR_LOV_NAME" ADD CONSTRAINT "APXSHR_LOV_NAME_PK" PRIMARY KEY ("ID")',
'  USING INDEX "APXSHR_LOV_NAME_PK"  ENABLE;',
'',
'ALTER TABLE "APXSHR_LOV_NAME" ADD CONSTRAINT "APXSHR_LOV_NAME_U1" UNIQUE ("APP_ALIAS", "LOV_NA")',
'  USING INDEX "APXSHR_LOV_NAME_U1"  ENABLE;',
'',
'CREATE TABLE "APXSHR_LOV_DETAILS" ',
'   (	"ID" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"LOV_NAME_ID" NUMBER, ',
'	"LOV_DISPLAY_VAL" VARCHAR2(100) NOT NULL ENABLE, ',
'	"LOV_DISPLAY_DESC" VARCHAR2(500), ',
'	"SORT_ORDER_NO" NUMBER, ',
'	"ACTIVE_IND" VARCHAR2(1), ',
'	"EFF_START_DA" DATE, ',
'	"EFF_END_DA" DATE, ',
'	"CREATED" DATE NOT NULL ENABLE, ',
'	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE, ',
'	"UPDATED" DATE NOT NULL ENABLE, ',
'	"UPDATED_BY" VARCHAR2(255) NOT NULL ENABLE, ',
'	"ALLOW_USER_DELETE_IND" CHAR(1)',
'   ) ;',
'CREATE UNIQUE INDEX "APXSHR_LOV_DETAILS_PK" ON "APXSHR_LOV_DETAILS" ("ID");',
'',
'CREATE UNIQUE INDEX "APXSHR_LOV_DETAILS_U1" ON "APXSHR_LOV_DETAILS" ("LOV_NAME_ID", "LOV_DISPLAY_VAL");',
'',
'ALTER TABLE "APXSHR_LOV_DETAILS" ADD CONSTRAINT "APXSHR_LOV_DETAILS_PK" PRIMARY KEY ("ID")',
'  USING INDEX "APXSHR_LOV_DETAILS_PK"  ENABLE;',
'',
'ALTER TABLE "APXSHR_LOV_DETAILS" ADD CONSTRAINT "APXSHR_LOV_DETAILS_U1" UNIQUE ("LOV_NAME_ID", "LOV_DISPLAY_VAL")',
'  USING INDEX "APXSHR_LOV_DETAILS_U1"  ENABLE;',
'',
'ALTER TABLE "APXSHR_LOV_DETAILS" ADD CONSTRAINT "APXSHR_LOV_DETAILS_FK" FOREIGN KEY ("LOV_NAME_ID")',
'	  REFERENCES "APXSHR_LOV_NAME" ("ID") ON DELETE CASCADE ENABLE;',
'',
'CREATE INDEX "APXSHR_LOV_DETAILS_I1" ON "APXSHR_LOV_DETAILS" ("LOV_NAME_ID");',
'',
'CREATE INDEX "APXSHR_LOV_DETAILS_I2" ON "APXSHR_LOV_DETAILS" ("LOV_DISPLAY_VAL");',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "APXSHR_LOV_DETAILS_AUD" ',
'    after update or delete on apxshr_lov_details ',
'    for each row',
'declare ',
'    t varchar2(128) := ''APXSHR_LOV_DETAILS''; ',
'    u varchar2(128) := coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'begin ',
'if updating then ',
'    if (:old.id is null and :new.id is not null) or  ',
'        (:old.id is not null and :new.id is null) or  ',
'        :old.id != :new.id then  ',
'        insert into apxshr_history ( ',
'            id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_number, new_number ',
'        ) values ( ',
'            apxshr_history_seq.nextval, t, ''ID'', :old.id, null, ''U'', sysdate, u, ''NUMBER'', :old.id, :new.id); ',
' ',
'    end if; ',
'    if (:old.lov_name_id is null and :new.lov_name_id is not null) or  ',
'        (:old.lov_name_id is not null and :new.lov_name_id is null) or  ',
'        :old.lov_name_id != :new.lov_name_id then  ',
'        insert into apxshr_history ( ',
'            id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_number, new_number ',
'        ) values ( ',
'            apxshr_history_seq.nextval, t, ''LOV_NAME_ID'', :old.id, null, ''U'', sysdate, u, ''NUMBER'', :old.lov_name_id, :new.lov_name_id); ',
' ',
'    end if; ',
'    if (:old.lov_display_val is null and :new.lov_display_val is not null) or  ',
'        (:old.lov_display_val is not null and :new.lov_display_val is null) or  ',
'        :old.lov_display_val != :new.lov_display_val then  ',
'        insert into apxshr_history ( ',
'            id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc ',
'        ) values ( ',
'            apxshr_history_seq.nextval, t, ''LOV_DISPLAY_VAL'', :old.id, null, ''U'', sysdate, u, ''VARCHAR2'', :old.lov_display_val, :new.lov_display_val); ',
' ',
'    end if; ',
'    if (:old.lov_display_desc is null and :new.lov_display_desc is not null) or  ',
'        (:old.lov_display_desc is not null and :new.lov_display_desc is null) or  ',
'        :old.lov_display_desc != :new.lov_display_desc then  ',
'        insert into apxshr_history ( ',
'            id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc ',
'        ) values ( ',
'            apxshr_history_seq.nextval, t, ''LOV_DISPLAY_DESC'', :old.id, null, ''U'', sysdate, u, ''VARCHAR2'', :old.lov_display_desc, :new.lov_display_desc); ',
' ',
'    end if; ',
'    if (:old.sort_order_no is null and :new.sort_order_no is not null) or  ',
'        (:old.sort_order_no is not null and :new.sort_order_no is null) or  ',
'        :old.sort_order_no != :new.sort_order_no then  ',
'        insert into apxshr_history ( ',
'            id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_number, new_number ',
'        ) values ( ',
'            apxshr_history_seq.nextval, t, ''SORT_ORDER_NO'', :old.id, null, ''U'', sysdate, u, ''NUMBER'', :old.sort_order_no, :new.sort_order_no); ',
' ',
'    end if; ',
'    if (:old.active_ind is null and :new.active_ind is not null) or  ',
'        (:old.active_ind is not null and :new.active_ind is null) or  ',
'        :old.active_ind != :new.active_ind then  ',
'        insert into apxshr_history ( ',
'            id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc ',
'        ) values ( ',
'            apxshr_history_seq.nextval, t, ''ACTIVE_IND'', :old.id, null, ''U'', sysdate, u, ''VARCHAR2'', :old.active_ind, :new.active_ind); ',
' ',
'    end if; ',
'    if (:old.eff_start_da is null and :new.eff_start_da is not null) or  ',
'        (:old.eff_start_da is not null and :new.eff_start_da is null) or  ',
'        :old.eff_start_da != :new.eff_start_da then  ',
'        insert into apxshr_history ( ',
'            id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_date, new_date ',
'        ) values ( ',
'            apxshr_history_seq.nextval, t, ''EFF_START_DA'', :old.id, null, ''U'', sysdate, u, ''DATE'', :old.eff_start_da, :new.eff_start_da); ',
' ',
'    end if; ',
'    if (:old.eff_end_da is null and :new.eff_end_da is not null) or  ',
'        (:old.eff_end_da is not null and :new.eff_end_da is null) or  ',
'        :old.eff_end_da != :new.eff_end_da then  ',
'        insert into apxshr_history ( ',
'            id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_date, new_date ',
'        ) values ( ',
'            apxshr_history_seq.nextval, t, ''EFF_END_DA'', :old.id, null, ''U'', sysdate, u, ''DATE'', :old.eff_end_da, :new.eff_end_da); ',
' ',
'    end if; ',
'    if (:old.allow_user_delete_ind is null and :new.allow_user_delete_ind is not null) or  ',
'        (:old.allow_user_delete_ind is not null and :new.allow_user_delete_ind is null) or  ',
'        :old.allow_user_delete_ind != :new.allow_user_delete_ind then  ',
'        insert into apxshr_history ( ',
'            id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc ',
'        ) values ( ',
'            apxshr_history_seq.nextval, t, ''ALLOW_USER_DELETE_IND'', :old.id, null, ''U'', sysdate, u, ''VARCHAR2'', :old.allow_user_delete_ind, :new.allow_user_delete_ind); ',
' ',
'    end if;     ',
'elsif deleting then ',
'    insert into apxshr_history ( ',
'        id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_number, new_number ',
'    ) values ( ',
'        apxshr_history_seq.nextval, t, ''ID'', :old.id, null, ''D'', sysdate, u, ''NUMBER'', :old.id, :new.id); ',
'    insert into apxshr_history ( ',
'        id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_number, new_number ',
'    ) values ( ',
'        apxshr_history_seq.nextval, t, ''LOV_NAME_ID'', :old.id, null, ''D'', sysdate, u, ''NUMBER'', :old.lov_name_id, :new.lov_name_id); ',
'    insert into apxshr_history ( ',
'        id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc ',
'    ) values ( ',
'        apxshr_history_seq.nextval, t, ''LOV_DISPLAY_VAL'', :old.id, null, ''D'', sysdate, u, ''VARCHAR2'', :old.lov_display_val, :new.lov_display_val); ',
'    insert into apxshr_history ( ',
'        id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc ',
'    ) values ( ',
'        apxshr_history_seq.nextval, t, ''LOV_DISPLAY_DESC'', :old.id, null, ''D'', sysdate, u, ''VARCHAR2'', :old.lov_display_desc, :new.lov_display_desc); ',
'    insert into apxshr_history ( ',
'        id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_number, new_number ',
'    ) values ( ',
'        apxshr_history_seq.nextval, t, ''SORT_ORDER_NO'', :old.id, null, ''D'', sysdate, u, ''NUMBER'', :old.sort_order_no, :new.sort_order_no); ',
'    insert into apxshr_history ( ',
'        id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc ',
'    ) values ( ',
'        apxshr_history_seq.nextval, t, ''ACTIVE_IND'', :old.id, null, ''D'', sysdate, u, ''VARCHAR2'', :old.active_ind, :new.active_ind); ',
'    insert into apxshr_history ( ',
'        id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_date, new_date ',
'    ) values ( ',
'        apxshr_history_seq.nextval, t, ''EFF_START_DA'', :old.id, null, ''D'', sysdate, u, ''DATE'', :old.eff_start_da, :new.eff_start_da); ',
'    insert into apxshr_history ( ',
'        id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_date, new_date ',
'    ) values ( ',
'        apxshr_history_seq.nextval, t, ''EFF_END_DA'', :old.id, null, ''D'', sysdate, u, ''DATE'', :old.eff_end_da, :new.eff_end_da); ',
'    insert into apxshr_history ( ',
'        id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc ',
'    ) values ( ',
'        apxshr_history_seq.nextval, t, ''ALLOW_USER_DELETE_IND'', :old.id, null, ''D'', sysdate, u, ''VARCHAR2'', :old.allow_user_delete_ind, :new.allow_user_delete_ind);         ',
' ',
'end if; ',
'end apxshr_lov_details_aud;',
'/',
'ALTER TRIGGER "APXSHR_LOV_DETAILS_AUD" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "APXSHR_LOV_DETAILS_BIU" ',
'    before insert or update  ',
'    on apxshr_lov_details ',
'    for each row',
'begin ',
'    if inserting then ',
'        if :new.created is null then :new.created := sysdate; end if;',
'        if :new.created_by is null then :new.created_by := nvl(sys_context(''APEX$SESSION'',''APP_USER''),user); end if;',
'    end if; ',
'    if :new.updated is null then :new.updated := sysdate; end if; ',
'    if :new.updated_by is null then :new.updated_by := nvl(sys_context(''APEX$SESSION'',''APP_USER''),user); end if; ',
'    if :new.ALLOW_USER_DELETE_IND is null then :new.ALLOW_USER_DELETE_IND := ''Y''; end if;    ',
'end apxshr_lov_details_biu;',
'/',
'ALTER TRIGGER "APXSHR_LOV_DETAILS_BIU" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "APXSHR_LOV_NAME_AUD" ',
'    after update or delete on apxshr_lov_name ',
'    for each row',
'declare ',
'    t varchar2(128) := ''APXSHR_LOV_NAME''; ',
'    u varchar2(128) := coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'begin ',
'if updating then ',
'    if (:old.id is null and :new.id is not null) or  ',
'        (:old.id is not null and :new.id is null) or  ',
'        :old.id != :new.id then  ',
'        insert into apxshr_history ( ',
'            id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_number, new_number ',
'        ) values ( ',
'            apxshr_history_seq.nextval, t, ''ID'', :old.id, null, ''U'', sysdate, u, ''NUMBER'', :old.id, :new.id); ',
' ',
'    end if; ',
'    if (:old.app_alias is null and :new.app_alias is not null) or  ',
'        (:old.app_alias is not null and :new.app_alias is null) or  ',
'        :old.app_alias != :new.app_alias then  ',
'        insert into apxshr_history ( ',
'            id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc ',
'        ) values ( ',
'            apxshr_history_seq.nextval, t, ''APP_ALIAS'', :old.id, null, ''U'', sysdate, u, ''VARCHAR2'', :old.app_alias, :new.app_alias); ',
' ',
'    end if; ',
'    if (:old.lov_na is null and :new.lov_na is not null) or  ',
'        (:old.lov_na is not null and :new.lov_na is null) or  ',
'        :old.lov_na != :new.lov_na then  ',
'        insert into apxshr_history ( ',
'            id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc ',
'        ) values ( ',
'            apxshr_history_seq.nextval, t, ''LOV_NA'', :old.id, null, ''U'', sysdate, u, ''VARCHAR2'', :old.lov_na, :new.lov_na); ',
' ',
'    end if; ',
'    if (:old.lov_desc is null and :new.lov_desc is not null) or  ',
'        (:old.lov_desc is not null and :new.lov_desc is null) or  ',
'        :old.lov_desc != :new.lov_desc then  ',
'        insert into apxshr_history ( ',
'            id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc ',
'        ) values ( ',
'            apxshr_history_seq.nextval, t, ''LOV_DESC'', :old.id, null, ''U'', sysdate, u, ''VARCHAR2'', :old.lov_desc, :new.lov_desc); ',
' ',
'    end if; ',
'    if (:old.sort_order_no is null and :new.sort_order_no is not null) or  ',
'        (:old.sort_order_no is not null and :new.sort_order_no is null) or  ',
'        :old.sort_order_no != :new.sort_order_no then  ',
'        insert into apxshr_history ( ',
'            id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_number, new_number ',
'        ) values ( ',
'            apxshr_history_seq.nextval, t, ''SORT_ORDER_NO'', :old.id, null, ''U'', sysdate, u, ''NUMBER'', :old.sort_order_no, :new.sort_order_no); ',
' ',
'    end if; ',
'    if (:old.active_ind is null and :new.active_ind is not null) or  ',
'        (:old.active_ind is not null and :new.active_ind is null) or  ',
'        :old.active_ind != :new.active_ind then  ',
'        insert into apxshr_history ( ',
'            id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc ',
'        ) values ( ',
'            apxshr_history_seq.nextval, t, ''ACTIVE_IND'', :old.id, null, ''U'', sysdate, u, ''VARCHAR2'', :old.active_ind, :new.active_ind); ',
' ',
'    end if; ',
'    if (:old.allow_user_delete_ind is null and :new.allow_user_delete_ind is not null) or  ',
'        (:old.allow_user_delete_ind is not null and :new.allow_user_delete_ind is null) or  ',
'        :old.allow_user_delete_ind != :new.allow_user_delete_ind then  ',
'        insert into apxshr_history ( ',
'            id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc ',
'        ) values ( ',
'            apxshr_history_seq.nextval, t, ''ALLOW_USER_DELETE_IND'', :old.id, null, ''U'', sysdate, u, ''VARCHAR2'', :old.allow_user_delete_ind, :new.allow_user_delete_ind); ',
' ',
'    end if;    ',
'    if (:old.GLOBAL_LOV_IND is null and :new.GLOBAL_LOV_IND is not null) or  ',
'        (:old.GLOBAL_LOV_IND is not null and :new.GLOBAL_LOV_IND is null) or  ',
'        :old.GLOBAL_LOV_IND != :new.GLOBAL_LOV_IND then  ',
'        insert into apxshr_history ( ',
'            id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc ',
'        ) values ( ',
'            apxshr_history_seq.nextval, t, ''GLOBAL_LOV_IND'', :old.id, null, ''U'', sysdate, u, ''VARCHAR2'', :old.GLOBAL_LOV_IND, :new.GLOBAL_LOV_IND); ',
' ',
'    end if;          ',
'elsif deleting then ',
'    insert into apxshr_history ( ',
'        id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_number, new_number ',
'    ) values ( ',
'        apxshr_history_seq.nextval, t, ''ID'', :old.id, null, ''D'', sysdate, u, ''NUMBER'', :old.id, :new.id); ',
'    insert into apxshr_history ( ',
'        id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc ',
'    ) values ( ',
'        apxshr_history_seq.nextval, t, ''APP_ALIAS'', :old.id, null, ''D'', sysdate, u, ''VARCHAR2'', :old.app_alias, :new.app_alias); ',
'    insert into apxshr_history ( ',
'        id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc ',
'    ) values ( ',
'        apxshr_history_seq.nextval, t, ''LOV_NA'', :old.id, null, ''D'', sysdate, u, ''VARCHAR2'', :old.lov_na, :new.lov_na); ',
'    insert into apxshr_history ( ',
'        id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc ',
'    ) values ( ',
'        apxshr_history_seq.nextval, t, ''LOV_DESC'', :old.id, null, ''D'', sysdate, u, ''VARCHAR2'', :old.lov_desc, :new.lov_desc); ',
'    insert into apxshr_history ( ',
'        id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_number, new_number ',
'    ) values ( ',
'        apxshr_history_seq.nextval, t, ''SORT_ORDER_NO'', :old.id, null, ''D'', sysdate, u, ''NUMBER'', :old.sort_order_no, :new.sort_order_no); ',
'    insert into apxshr_history ( ',
'        id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc ',
'    ) values ( ',
'        apxshr_history_seq.nextval, t, ''ACTIVE_IND'', :old.id, null, ''D'', sysdate, u, ''VARCHAR2'', :old.active_ind, :new.active_ind); ',
'    insert into apxshr_history ( ',
'        id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc ',
'    ) values ( ',
'        apxshr_history_seq.nextval, t, ''ALLOW_USER_DELETE_IND'', :old.id, null, ''D'', sysdate, u, ''VARCHAR2'', :old.allow_user_delete_ind, :new.allow_user_delete_ind);      ',
'    insert into apxshr_history ( ',
'        id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc ',
'    ) values ( ',
'        apxshr_history_seq.nextval, t, ''GLOBAL_LOV_IND'', :old.id, null, ''D'', sysdate, u, ''VARCHAR2'', :old.GLOBAL_LOV_IND, :new.GLOBAL_LOV_IND);             ',
' ',
'end if; ',
'end apxshr_lov_name_aud;',
'/',
'ALTER TRIGGER "APXSHR_LOV_NAME_AUD" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "APXSHR_LOV_NAME_BIU" ',
'    before insert or update  ',
'    on apxshr_lov_name ',
'    for each row',
'begin ',
'    if inserting then ',
'        if :new.created is null then :new.created := sysdate; end if;',
'        if :new.created_by is null then :new.created_by := nvl(sys_context(''APEX$SESSION'',''APP_USER''),user); end if;',
'    end if; ',
'    if :new.updated is null then :new.updated := sysdate; end if; ',
'    if :new.updated_by is null then :new.updated_by := nvl(sys_context(''APEX$SESSION'',''APP_USER''),user); end if; ',
'    if :new.GLOBAL_LOV_IND is null then :new.GLOBAL_LOV_IND := ''N''; end if;',
'    if :new.ALLOW_USER_DELETE_IND is null then :new.ALLOW_USER_DELETE_IND := ''Y''; end if;',
'end apxshr_lov_name_biu;',
'/',
'ALTER TRIGGER "APXSHR_LOV_NAME_BIU" ENABLE;',
'',
'create or replace package APXSHR_LOV_PACKAGE as',
'',
'    function APXSHR_LOV_NAME_ALLOW_DELETE ( lov_name_id_in in NUMBER ) return BOOLEAN;',
'    function APXSHR_LOV_NAME_ALLOW_DELETE ( lov_name_id_in in NUMBER, -- overloaded version for use in SQL or testing',
'                                            text_in        in VARCHAR2 ) return VARCHAR2;  ',
'',
'    function APXSHR_LOV_DETAILS_ALLOW_DELETE ( lov_details_id_in in NUMBER ) return BOOLEAN;',
'    function APXSHR_LOV_DETAILS_ALLOW_DELETE ( lov_details_id_in in NUMBER, -- overloaded version for use in SQL or testing',
'                                               text_in           in VARCHAR2 ) return VARCHAR2;    ',
'',
'-- These two tell us if the LOV_NAME for a LOV_DETAILS row is a global LOV, which should also NOT allow Users to delete Details',
'    function APXSHR_LOV_DETAILS_FIRM_WIDE ( lov_details_id_in in NUMBER ) return BOOLEAN;',
'    function APXSHR_LOV_DETAILS_FIRM_WIDE ( lov_details_id_in in NUMBER, -- overloaded version for use in SQL or testing',
'                                            text_in           in VARCHAR2 ) return VARCHAR2;      ',
'',
'    function lov_dtls_display_val_id ( app_alias_in       in varchar2, ',
'                                       lov_na_in          in varchar2, ',
'                                       lov_display_val_in in varchar2 ) return NUMBER;                                                                                                                                          ',
'',
'end;',
'/',
'',
'CREATE OR REPLACE FORCE EDITIONABLE VIEW "APXSHR_LOV_VIEW" ("APP_ALIAS", "LOV_NA", "LOV_NA_ID", "LOV_DISPLAY_VAL", "DISPLAY_VAL_ID") AS ',
'  select APP_ALIAS,',
'         NA.LOV_NA,',
'         NA.ID  LOV_NA_ID,',
'         DET.LOV_DISPLAY_VAL,',
'         DET.ID DISPLAY_VAL_ID',
'  from APXSHR_LOV_DETAILS DET,',
'              APXSHR_LOV_NAME NA ',
'where LOV_NAME_ID = NA.ID;',
'',
'create or replace package body "APXSHR_LOV_PACKAGE" is',
'',
'function APXSHR_LOV_NAME_ALLOW_DELETE (lov_name_id_in in NUMBER) return BOOLEAN is',
'    l_allow_delete CHAR(1) := NULL;',
'begin',
'    select nvl(ALLOW_USER_DELETE_IND, ''Y'') into l_allow_delete',
'    from APXSHR_LOV_NAME ',
'    where ID = lov_name_id_in;',
'',
'    if l_allow_delete = ''Y''',
'    then ',
'        RETURN TRUE;',
'    else ',
'        RETURN FALSE;',
'    end if;',
'',
'    exception when OTHERS then RETURN TRUE;',
'',
'end APXSHR_LOV_NAME_ALLOW_DELETE;',
'',
'function APXSHR_LOV_NAME_ALLOW_DELETE ( lov_name_id_in in NUMBER,',
'                                        text_in        in VARCHAR2 ) return VARCHAR2 is',
'begin',
'',
'    if APXSHR_LOV_NAME_ALLOW_DELETE  (lov_name_id_in => lov_name_id_in )',
'    then ',
'        RETURN ''Y'';',
'    else',
'        RETURN ''N'';',
'    end if;',
'',
'end APXSHR_LOV_NAME_ALLOW_DELETE;',
'',
'function APXSHR_LOV_DETAILS_ALLOW_DELETE ( lov_details_id_in in NUMBER ) return BOOLEAN is',
'    l_name_id NUMBER := NULL;',
'    l_allow_dtls_delete CHAR(1) := NULL;',
'begin',
'    select',
'         LOV_NAME_ID ',
'        ,nvl(ALLOW_USER_DELETE_IND, ''Y'') ',
'    into ',
'         l_name_id',
'        ,l_allow_dtls_delete',
'    from APXSHR_LOV_DETAILS ',
'    where ID = lov_details_id_in;',
'',
'    if APXSHR_LOV_NAME_ALLOW_DELETE ( lov_name_id_in => l_name_id )',
'    then',
'        -- if not prohibition at LOV_NAME level, check the LOV_DETAILS item',
'        if l_allow_dtls_delete = ''Y''',
'        then ',
'            RETURN TRUE;',
'        else ',
'            RETURN FALSE;',
'        end if; -- l_allow_dtls_delete = ''Y''',
'    else',
'        -- if prohibited at the LOV_NAME level, don''t allow even if set at LOV_DETAILS item level',
'        RETURN FALSE;',
'    end if; -- APXSHR_LOV_NAME_ALLOW_DELETE ( lov_name_id_in = l_name_id )',
'',
'    exception when OTHERS then RETURN TRUE;',
'',
'end APXSHR_LOV_DETAILS_ALLOW_DELETE;',
'',
'function APXSHR_LOV_DETAILS_ALLOW_DELETE ( lov_details_id_in in NUMBER, -- overloaded version for use in SQL or testing',
'                                           text_in           in VARCHAR2 ) return VARCHAR2  is',
'begin',
'',
'    if APXSHR_LOV_DETAILS_ALLOW_DELETE  ( lov_details_id_in => lov_details_id_in )',
'    then ',
'        RETURN ''Y'';',
'    else',
'        RETURN ''N'';',
'    end if;',
'',
'end APXSHR_LOV_DETAILS_ALLOW_DELETE;  ',
'',
'-- These two tell us if the LOV_NAME for a LOV_DETAILS row is a global LOV, which should also NOT allow Users to delete Details',
'function APXSHR_LOV_DETAILS_FIRM_WIDE ( lov_details_id_in in NUMBER ) return BOOLEAN is',
'    l_global_lov CHAR(1) := NULL;',
'begin',
'    select',
'        nvl(lname.GLOBAL_LOV_IND, ''N'') ',
'    into ',
'        l_global_lov',
'    from APXSHR_LOV_DETAILS det',
'    join APXSHR_LOV_NAME lname on lname.ID = det.LOV_NAME_ID',
'    where det.ID = lov_details_id_in;',
'',
'    -- if not prohibition at LOV_NAME level, check the LOV_DETAILS item',
'    if l_global_lov = ''Y''',
'    then ',
'        RETURN TRUE;',
'    else ',
'        RETURN FALSE;',
'    end if; -- l_allow_dtls_delete = ''Y''',
'',
'    exception when OTHERS then RETURN FALSE;',
'',
'end APXSHR_LOV_DETAILS_FIRM_WIDE;',
'',
'function APXSHR_LOV_DETAILS_FIRM_WIDE ( lov_details_id_in in NUMBER, -- overloaded version for use in SQL or testing',
'                                        text_in           in VARCHAR2 ) return VARCHAR2  is',
'begin',
'',
'    if APXSHR_LOV_DETAILS_FIRM_WIDE  ( lov_details_id_in => lov_details_id_in )',
'    then ',
'        RETURN ''Y'';',
'    else',
'        RETURN ''N'';',
'    end if;',
'',
'end APXSHR_LOV_DETAILS_FIRM_WIDE;    ',
'',
'function lov_dtls_display_val_id ( app_alias_in       in varchar2, ',
'                                   lov_na_in          in varchar2, ',
'                                   lov_display_val_in in varchar2 ) return NUMBER is ',
'    l_apxshr_lov_details_id NUMBER;                                    ',
'begin ',
'    select  ',
'        det.ID into l_apxshr_lov_details_id ',
'    from APXSHR_LOV_NAME nam  ',
'    join APXSHR_LOV_DETAILS det on det.LOV_NAME_ID     = nam.ID ',
'                               and det.LOV_DISPLAY_VAL = lov_display_val_in ',
'    where nam.APP_ALIAS = app_alias_in ',
'      and nam.LOV_NA    = lov_na_in; ',
'       ',
'    RETURN l_apxshr_lov_details_id; ',
' ',
'    exception when NO_DATA_FOUND  ',
'    then ',
'        RETURN NULL; ',
' ',
'end lov_dtls_display_val_id; ',
'',
'end "APXSHR_LOV_PACKAGE";',
'/'))
);
end;
/
prompt --application/deployment/install/install_load_apxshr_lov_name_data
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(86904463396423568689)
,p_install_id=>wwv_flow_imp.id(86904103614359860107)
,p_name=>'Load APXSHR_LOV_NAME data'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    --APXSHR_LOV_NAME: 1/10000 rows exported, APEX$DATA$PKG/APXSHR_LOV_NAME$975458',
'    apex_data_install.load_supporting_object_data(p_table_name => ''APXSHR_LOV_NAME'', p_delete_after_install => true );',
'end;'))
);
end;
/
prompt --application/deployment/install/install_load_apxshr_lov_details_data
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(86904224112151873117)
,p_install_id=>wwv_flow_imp.id(86904103614359860107)
,p_name=>'Load APXSHR_LOV_DETAILS data'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    --APXSHR_LOV_DETAILS: 10/10000 rows exported, APEX$DATA$PKG/APXSHR_LOV_DETAILS$61918',
'    apex_data_install.load_supporting_object_data(p_table_name => ''APXSHR_LOV_DETAILS'', p_delete_after_install => true );',
'end;'))
);
end;
/
prompt --application/deployment/install/install_load_apxshr_pgm_options_for_apxshr_hist
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(109416678364137611710)
,p_install_id=>wwv_flow_imp.id(86904103614359860107)
,p_name=>'load apxshr_pgm_options for APXSHR_HIST'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    --APXSHR_PGM_OPTIONS: 11/10000 rows exported, APEX$DATA$PKG/APXSHR_PGM_OPTIONS$370288',
'    apex_data_install.load_supporting_object_data(p_table_name => ''APXSHR_PGM_OPTIONS'', p_delete_after_install => false );',
'end;'))
);
end;
/
prompt --application/deployment/install/install_create_apxshr_hist_pkg
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(86962768812972526402)
,p_install_id=>wwv_flow_imp.id(86904103614359860107)
,p_name=>'Create APXSHR_HIST_PKG'
,p_sequence=>40
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package APXSHR_HIST_PKG as',
'    TYPE  APXSHR_VC_ARRAY_1 is TABLE OF VARCHAR2(100);',
'',
'    function GEN_HIST_AUD_TRIGGER',
'        ( schema_in             in VARCHAR2 default NULL, ',
'          prefix_in             in VARCHAR2 default NULL, ',
'          table_in              in VARCHAR2 default NULL, ',
'          table_pk_col_name_in  in VARCHAR2 default ''ID'', ',
'          create_hist_table     in VARCHAR2 default ''Y'', ',
'          create_aud_trigger    in VARCHAR2 default ''Y'' ) return CLOB;',
'',
'    function pipelined_list ( p_string    in VARCHAR2,   ',
'                              p_delimiter in VARCHAR2 DEFAULT '','')  RETURN apxshr_vc_array_1 PIPELINED;           ',
'',
'end APXSHR_HIST_PKG;',
'/',
'create or replace package body APXSHR_HIST_PKG as',
'',
'function pipelined_list       (p_string    in VARCHAR2,       ',
'                               p_delimiter in VARCHAR2 DEFAULT '','') RETURN apxshr_vc_array_1 PIPELINED IS       ',
'           ',
'    l_string varchar2(32000);       ',
'--    l_array  wwv_flow_global.vc_arr2;  -- deprecated     ',
'    l_array  apex_t_varchar2;     ',
'       ',
'begin       ',
'           ',
'   if p_string IS NULL        ',
'   then        ',
'        return;        ',
'   end if;  -- prevent error if nothing is passed       ',
'       ',
'--   l_array := apex_util.STRING_TO_TABLE (p_string,p_delimiter);   -- deprecated     ',
'   l_array := apex_string.split(p_string,p_delimiter);      ',
'       ',
'--   for i in l_array.first..l_array.last        ',
'   for i in 1..l_array.count     ',
'   loop       ',
'      pipe row (trim(l_array(i)));       ',
'   end loop;       ',
'          ',
'   return;       ',
'       ',
'end pipelined_list;  ',
'',
'function GEN_HIST_AUD_TRIGGER',
'    ( schema_in             in VARCHAR2 default NULL, ',
'      prefix_in             in VARCHAR2 default NULL, ',
'      table_in              in VARCHAR2 default NULL, ',
'      table_pk_col_name_in  in VARCHAR2 default ''ID'', ',
'      create_hist_table     in VARCHAR2 default ''Y'', ',
'      create_aud_trigger    in VARCHAR2 default ''Y'' ) return CLOB is   ',
'--------------------------------------------------------------------- ',
'---------------------------------------------------------------------       ',
'-- variables and constants for the function    ',
'    my_boolean BOOLEAN; ',
'    -- use the VARCHAR variables.  They must be free of any TABS.  Line feeds are required around ''/'' to generate separate SQL Statements ',
'    l_hist_table_tmplt      APXSHR_PGM_OPTIONS.OPT_VAL_VARCHAR%TYPE := APXSHR_PGM_OPTS.rtn_pgm_opt (''APXSHR_HIST'', 1, ''text'');  -- contains the template to create the *_HISTORY table    ',
'    l_hist_table_seq_tmplt  APXSHR_PGM_OPTIONS.OPT_VAL_VARCHAR%TYPE := APXSHR_PGM_OPTS.rtn_pgm_opt (''APXSHR_HIST'', 2, ''text'');  -- contains the template to create the *_HISTORY_SEQ sequence ',
'    l_hist_view_seq_tmplt   APXSHR_PGM_OPTIONS.OPT_VAL_VARCHAR%TYPE := APXSHR_PGM_OPTS.rtn_pgm_opt (''APXSHR_HIST'', 3, ''text'');  -- contains the template to create the *_HISTORY_V view ',
'    l_aud_trgr_pt_1         APXSHR_PGM_OPTIONS.OPT_VAL_VARCHAR%TYPE := APXSHR_PGM_OPTS.rtn_pgm_opt (''APXSHR_HIST'', 10, ''text''); -- contains the 1st part of trigger ',
'    l_aud_trgr_pt_2         APXSHR_PGM_OPTIONS.OPT_VAL_VARCHAR%TYPE := APXSHR_PGM_OPTS.rtn_pgm_opt (''APXSHR_HIST'', 11, ''text''); -- contains the Update template. Repeated for each column. ',
'    l_aud_trgr_pt_3         APXSHR_PGM_OPTIONS.OPT_VAL_VARCHAR%TYPE := APXSHR_PGM_OPTS.rtn_pgm_opt (''APXSHR_HIST'', 12, ''text''); -- contains the ELSIF between Update and Delete sections. ',
'    l_aud_trgr_pt_4         APXSHR_PGM_OPTIONS.OPT_VAL_VARCHAR%TYPE := APXSHR_PGM_OPTS.rtn_pgm_opt (''APXSHR_HIST'', 13, ''text''); -- contains the Delete template. Repeated for each column.  ',
'    l_aud_trgr_pt_5         APXSHR_PGM_OPTIONS.OPT_VAL_VARCHAR%TYPE := APXSHR_PGM_OPTS.rtn_pgm_opt (''APXSHR_HIST'', 14, ''text''); -- contains the END of the trigger. ',
'    l_aud_trgr_pt_6         APXSHR_PGM_OPTIONS.OPT_VAL_VARCHAR%TYPE := APXSHR_PGM_OPTS.rtn_pgm_opt (''APXSHR_HIST'', 16, ''text''); -- contains the Update template. Repeated for each column. BLOB/CLOB.     ',
'    l_exclude_columns_lst   APXSHR_PGM_OPTIONS.OPT_VAL_VARCHAR%TYPE := APXSHR_PGM_OPTS.rtn_pgm_opt (''APXSHR_HIST'', 15, ''text''); -- comma separated list of columns to exclude from trigger    ',
'    l_aud_trgr_work         CLOB := NULL; ',
'    l_cr_lf                 VARCHAR2(50) := chr(13) || chr(10); ',
'    l_hist_table_DDL        CLOB := NULL; ',
'    l_hist_table_SEQ_DDL    VARCHAR2(4000) := NULL; ',
'    l_hist_view_DDL         CLOB := NULL; ',
'    l_hist_aud_trgr_DDL     CLOB := NULL; ',
'    l_RETURN_DDL            CLOB := NULL; ',
'    l_column_count          NUMBER := 0; ',
'     ',
'    -- Associative array indexed by string to contain the Data Types and Abbreviations needed to build the AUD Trigger ',
'    TYPE abbreviations IS TABLE OF VARCHAR2(20)  -- Associative array type ',
'    INDEX BY VARCHAR2(64);                       -- indexed by string ',
'    data_type_abbr  abbreviations;               -- Associative array variable ',
'    i        VARCHAR2(64);                       -- Scalar variable         ',
'         ',
'-- end local variables ',
' ',
'-- local functions ',
'-- end local functions ',
' ',
'-- local procedures ',
'    procedure debug_it (text_in in varchar2) is',
'    begin',
'        apex_debug.info ( text_in ); ',
'        dbms_output.put_line ( text_in ); ',
'    end debug_it;',
'',
'    procedure raise_app_error ( error_code_in in number, ',
'                                error_text_in in VARCHAR2 ) is ',
'    begin ',
'        raise_application_error (error_code_in, error_text_in); ',
'    end raise_app_error; ',
' ',
'    procedure load_data_type_abbr is ',
'    /* ',
'       use global arrays  ',
'    */         ',
'    begin ',
'        for C1 in ( ',
'            select ',
'                det.LOV_DISPLAY_VAL, ',
'                det.lov_display_desc, ',
'                det.ID ',
'            from APXSHR_LOV_DETAILS det ',
'            join APXSHR_LOV_NAME name on name.ID = det.LOV_NAME_ID and ',
'                name.APP_ALIAS = ''APXSHR_HIST'' and ',
'                name.LOV_NA = ''Data Types and Abbreviations'' ',
'            order by det.SORT_ORDER_NO, det.LOV_DISPLAY_VAL ',
'        ) ',
'        loop ',
'        -- Add elements (key-value pairs) to associative array: ',
'  ',
'            data_type_abbr(C1.LOV_DISPLAY_VAL)  := C1.lov_display_desc; ',
'        end loop; ',
'         ',
'        -- Print associative array (testing): ',
'        /* ',
'        i := data_type_abbr.FIRST;  -- Get first element of array ',
'  ',
'        WHILE i IS NOT NULL  ',
'        LOOP ',
'            DBMS_Output.PUT_LINE ',
'            (''Data Type Abbreviation of '' || i || '' is '' || data_type_abbr(i)); ',
'            i := data_type_abbr.NEXT(i);  -- Get next element of array ',
'        END LOOP; ',
'        */ ',
'    end load_data_type_abbr; ',
' ',
'-- end local procedures        ',
'begin  -- "mainline" of GEN_HIST_AUD_TRIGGER ',
'    debug_it (''*** Starting GEN_HIST_AUD_TRIGGER ***''); ',
' ',
'    if  nvl(create_hist_table, ''N'') = ''N'' ',
'    and nvl(create_aud_trigger, ''N'') = ''N''  ',
'    then ',
'        raise_app_error (-20000, ''Invalid call to function, "create_hist_table" or "create_aud_trigger" must = ''''Y''''.''); ',
'        RETURN NULL; ',
'    end if; ',
' ',
'--  *** Generate History Table / View *** ',
'    if nvl(create_hist_table, ''N'') = ''Y'' ',
'    then ',
'        debug_it (''  Creating History Table / View''); ',
' ',
'        if prefix_in is NULL ',
'        then raise_app_error (-20001, ''Invalid call to function, must provide PREFIX when creating History TABLE.''); ',
'        end if; ',
' ',
'        if schema_in is NULL ',
'        then raise_app_error (-20004, ''Invalid call to function, must provide SCHEMA when creating History VIEW.''); ',
'        end if;         ',
' ',
'        l_hist_table_seq_tmplt := replace (l_hist_table_seq_tmplt, ''[PREFIX]'', prefix_in); ',
'        l_hist_table_seq_tmplt := replace (l_hist_table_seq_tmplt, ''[USER]'', v(''APP_USER'')); ',
'        l_hist_table_seq_tmplt := replace (l_hist_table_seq_tmplt, ''[DATE]'', SYSDATE);   ',
'        l_hist_table_seq_tmplt := replace (l_hist_table_seq_tmplt, ''[APP_ID]'', NV(''APP_ID''));       ',
'        l_hist_table_seq_tmplt := replace (l_hist_table_seq_tmplt, ''[FUNCTION]'', utl_call_stack.subprogram (1) (1) || ''.'' || utl_call_stack.subprogram (1) (2));                          ',
'        l_hist_table_DDL       := l_hist_table_DDL || l_hist_table_seq_tmplt || l_cr_lf || l_cr_lf; ',
' ',
'        l_hist_table_tmplt     := replace (l_hist_table_tmplt, ''[PREFIX]'', prefix_in); ',
'        l_hist_table_tmplt     := replace (l_hist_table_tmplt, ''[USER]'', v(''APP_USER'')); ',
'        l_hist_table_tmplt     := replace (l_hist_table_tmplt, ''[DATE]'', SYSDATE);   ',
'        l_hist_table_tmplt     := replace (l_hist_table_tmplt, ''[APP_ID]'', NV(''APP_ID''));      ',
'        l_hist_table_tmplt     := replace (l_hist_table_tmplt, ''[FUNCTION]'', utl_call_stack.subprogram (1) (1) || ''.'' || utl_call_stack.subprogram (1) (2));    ',
'        l_hist_table_DDL       := l_hist_table_DDL || l_hist_table_tmplt || l_cr_lf  || l_cr_lf; ',
' ',
'        l_hist_view_seq_tmplt  := replace (l_hist_view_seq_tmplt,  ''[PREFIX]'', prefix_in); ',
'        l_hist_view_seq_tmplt  := replace (l_hist_view_seq_tmplt,  ''[SCHEMA]'', schema_in);   ',
'        l_hist_view_seq_tmplt  := replace (l_hist_view_seq_tmplt, ''[USER]'', v(''APP_USER'')); ',
'        l_hist_view_seq_tmplt  := replace (l_hist_view_seq_tmplt, ''[DATE]'', SYSDATE);   ',
'        l_hist_view_seq_tmplt  := replace (l_hist_view_seq_tmplt, ''[APP_ID]'', NV(''APP_ID''));    ',
'        l_hist_view_seq_tmplt  := replace (l_hist_view_seq_tmplt, ''[FUNCTION]'', utl_call_stack.subprogram (1) (1) || ''.'' || utl_call_stack.subprogram (1) (2));                   ',
'        l_hist_table_DDL       := l_hist_table_DDL || l_hist_view_seq_tmplt || l_cr_lf; ',
' ',
'    --    l_hist_table_DDL       := REGEXP_REPLACE(l_hist_table_DDL, ''[^[:print:]]'', ''''); -- removes ''/'' ',
'        l_hist_table_DDL       := l_hist_table_DDL;         ',
'         ',
'        l_RETURN_DDL := l_RETURN_DDL || l_hist_table_DDL;       ',
'    else ',
'        debug_it (''  NO History Table created.''); ',
'    end if;  -- create_hist_table ',
' ',
'--  *** Build the AUDIT Trigger *** ',
'    if nvl(create_aud_trigger, ''N'') = ''Y'' ',
'    then ',
'        debug_it (''  Creating History Audit Trigger(s)''); ',
' ',
'        if schema_in is NULL ',
'        then raise_app_error (-20002, ''Invalid call to function, must provide SCHEMA when creating History TRIGGER.''); ',
'        end if; ',
' ',
'        if prefix_in is NULL  -- 06/10/24 S.Vicars added this check ',
'        then raise_app_error (-20004, ''Invalid call to function, must provide PREFIX when creating History TRIGGER.''); ',
'        end if; ',
' ',
'        if table_in is NULL ',
'        then raise_app_error (-20003, ''Invalid call to function, must provide TABLE when creating History TRIGGER.''); ',
'        end if;         ',
' ',
'        load_data_type_abbr; ',
'         ',
'        if data_type_abbr.FIRST is NULL ',
'        then raise_app_error (-20005, ''Fatal Error: Data Types not available. Contact APEX_Support.''); ',
'        end if; ',
' ',
'        l_aud_trgr_pt_1 := replace (l_aud_trgr_pt_1, ''[SCHEMA]'', schema_in); ',
'        l_aud_trgr_pt_1 := replace (l_aud_trgr_pt_1, ''[TABLE]'',  table_in);  ',
'        l_aud_trgr_pt_1 := replace (l_aud_trgr_pt_1, ''[USER]'', v(''APP_USER'')); ',
'        l_aud_trgr_pt_1 := replace (l_aud_trgr_pt_1, ''[DATE]'', SYSDATE);   ',
'        l_aud_trgr_pt_1 := replace (l_aud_trgr_pt_1, ''[APP_ID]'', NV(''APP_ID''));  ',
'        l_aud_trgr_pt_1 := replace (l_aud_trgr_pt_1, ''[FUNCTION]'', utl_call_stack.subprogram (1) (1) || ''.'' || utl_call_stack.subprogram (1) (2));           ',
' ',
'        l_hist_aud_trgr_DDL := l_hist_aud_trgr_DDL || l_aud_trgr_pt_1 || l_cr_lf; ',
'         ',
'        select  ',
'            count(column_name) into l_column_count ',
'        from user_tab_cols --dba_tab_cols ',
'    --    where owner = upper(schema_in)  ',
'    --          and table_name = upper(table_in); ',
'        where table_name = upper(table_in);               ',
' ',
'        if l_column_count < 1 ',
'        then raise_app_error (-20006, ''Error: No columns found for Schema=''||schema_in||'', Table=''||table_in); ',
'        end if;                ',
' ',
'        for crsr_columns in ( ',
'            select  ',
'              --   owner ',
'              --  ,',
'                 table_name ',
'                ,column_name ',
'                ,data_type ',
'            from user_tab_cols --dba_tab_cols ',
'        --    where owner = upper(schema_in)  ',
'        --      and table_name = upper(table_in)',
'            where table_name = upper(table_in)         ',
'              and column_name NOT in (select column_value from table (pipelined_list (p_string => l_exclude_columns_lst, p_delimiter => '',''))) ',
'            order by column_id ',
'        ) ',
'        loop ',
'            if crsr_columns.data_type = ''CLOB'' ',
'            or crsr_columns.data_type = ''BLOB'' ',
'            then ',
'                l_aud_trgr_work := l_aud_trgr_pt_6; -- don''t change the original templates!  SPECIAL TEMPLATE FOR BLOB/CLOB ',
'            else ',
'                l_aud_trgr_work := l_aud_trgr_pt_2; -- don''t change the original templates! ',
'            end if; ',
'         --   debug_it (''table=''||crsr_columns.table_name||'', column_name=''||crsr_columns.column_name||'', data_type=''||crsr_columns.data_type||'', Abbreviation=''||data_type_abbr(crsr_columns.data_type)); ',
'    --        l_aud_trgr_work := l_aud_trgr_pt_2; -- don''t change the original templates! ',
'            l_aud_trgr_work := replace (l_aud_trgr_work, ''[SCHEMA]'', schema_in); ',
'            l_aud_trgr_work := replace (l_aud_trgr_work, ''[PREFIX]'', prefix_in);             ',
'            l_aud_trgr_work := replace (l_aud_trgr_work, ''[COLUMN_NAME]'', lower(crsr_columns.column_name)); ',
'            l_aud_trgr_work := replace (l_aud_trgr_work, ''[PK]'', table_pk_col_name_in); ',
'            l_aud_trgr_work := replace (l_aud_trgr_work, ''[COLUMN_NAME_UC]'', crsr_columns.column_name); ',
'            l_aud_trgr_work := replace (l_aud_trgr_work, ''[DATA_TYPE_UC]'', crsr_columns.data_type); ',
'            l_aud_trgr_work := replace (l_aud_trgr_work, ''[DATA_TYPE_ABBR]'', lower(data_type_abbr(crsr_columns.data_type)));  ',
'            l_hist_aud_trgr_DDL := l_hist_aud_trgr_DDL || l_aud_trgr_work || l_cr_lf;                       ',
'        end loop; ',
' ',
'        -- get the "middle part" - don''t forget the l_cr_lf ',
'        l_hist_aud_trgr_DDL := l_hist_aud_trgr_DDL || l_aud_trgr_pt_3 || l_cr_lf; ',
'        ',
'        -- do the "delete" part (part 4) - cursor loop, including l_cr_lf ',
'        for crsr_columns in ( ',
'            select  ',
'              --   owner ',
'              --  ,',
'                 table_name ',
'                ,column_name ',
'                ,data_type ',
'            from user_tab_cols --dba_tab_cols ',
'            -- where clauses need to be exactly the same! ',
'            -- where owner = upper(schema_in)  ',
'            --  and table_name = upper(table_in) ',
'            where table_name = upper(table_in)              ',
'              and column_name NOT in (select column_value from table (pipelined_list (p_string => l_exclude_columns_lst, p_delimiter => '','')))   ',
'            order by column_id                           ',
'        ) ',
'        loop ',
'        --    debug_it (''table=''||crsr_columns.table_name||'', column_name=''||crsr_columns.column_name||'', data_type=''||crsr_columns.data_type||'', Abbreviation=''||data_type_abbr(crsr_columns.data_type)); ',
'            l_aud_trgr_work := l_aud_trgr_pt_4; -- don''t change the original templates! ',
'            l_aud_trgr_work := replace (l_aud_trgr_work, ''[SCHEMA]'', schema_in); ',
'            l_aud_trgr_work := replace (l_aud_trgr_work, ''[PREFIX]'', prefix_in); ',
'            l_aud_trgr_work := replace (l_aud_trgr_work, ''[COLUMN_NAME]'', lower(crsr_columns.column_name)); ',
'            l_aud_trgr_work := replace (l_aud_trgr_work, ''[PK]'', table_pk_col_name_in); ',
'            l_aud_trgr_work := replace (l_aud_trgr_work, ''[COLUMN_NAME_UC]'', crsr_columns.column_name); ',
'            l_aud_trgr_work := replace (l_aud_trgr_work, ''[DATA_TYPE_UC]'', crsr_columns.data_type); ',
'            l_aud_trgr_work := replace (l_aud_trgr_work, ''[DATA_TYPE_ABBR]'', lower(data_type_abbr(crsr_columns.data_type)));  ',
'            l_hist_aud_trgr_DDL := l_hist_aud_trgr_DDL || l_aud_trgr_work || l_cr_lf;                       ',
'        end loop; ',
' ',
'--        debug_it (''Trigger after 4th part=''||l_hist_aud_trgr_DDL); ',
'         ',
'        -- do the last section (part 5) ',
'        --l_aud_trgr_pt_5 := replace (l_aud_trgr_pt_5, ''[PREFIX]'', schema_in); ',
'        l_aud_trgr_pt_5 := replace (l_aud_trgr_pt_5, ''[TABLE]'',  table_in);          ',
'        l_hist_aud_trgr_DDL := l_hist_aud_trgr_DDL || l_aud_trgr_pt_5 || l_cr_lf; ',
'         ',
'        debug_it (''Trigger after 5th part=''||l_hist_aud_trgr_DDL); ',
' ',
'       l_RETURN_DDL := l_RETURN_DDL || l_hist_aud_trgr_DDL;   ',
'    else ',
'        debug_it (''  NO Tiggers created.''); ',
'    end if;  -- create_aud_trigger ',
' ',
'    debug_it (''*** Ending GEN_HIST_AUD_TRIGGER ***''); ',
' ',
'    RETURN l_RETURN_DDL; ',
'',
'end GEN_HIST_AUD_TRIGGER;',
'',
'end APXSHR_HIST_PKG;',
'/ '))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(86962768982044526403)
,p_script_id=>wwv_flow_imp.id(86962768812972526402)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'APXSHR_HIST_PKG'
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
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
