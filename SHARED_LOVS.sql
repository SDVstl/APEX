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
,p_default_application_id=>201735
,p_default_id_offset=>58955437498978326167
,p_default_owner=>'WKSP_SDVLOWCODE'
);
end;
/
 
prompt APPLICATION 201735 - APEX Shared Lists of Values 5.0
--
-- Application Export:
--   Application:     201735
--   Name:            APEX Shared Lists of Values 5.0
--   Date and Time:   17:17 Saturday March 14, 2026
--   Exported By:     SCOTTV
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     29
--       Items:                   86
--       Validations:              4
--       Processes:               40
--       Regions:                 85
--       Buttons:                 66
--       Dynamic Actions:         28
--     Shared Components:
--       Logic:
--         Items:                  4
--         Processes:              2
--         Computations:           2
--         App Settings:           2
--         Build Options:          8
--       Navigation:
--         Lists:                  7
--         Breadcrumbs:            1
--           Entries:              5
--       Security:
--         Authentication:         2
--         Authorization:          3
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                  10
--         Shortcuts:              1
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--       Install scripts:          5
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
,p_name=>nvl(wwv_flow_application_install.get_application_name,'APEX Shared Lists of Values 5.0')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'SHARED_LOVS')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'7F1315A8DBB3BA7C2EA9C06CFEE32E6A88D964ABAD85FE9FC41F95E1ECFFDAFD'
,p_bookmark_checksum_function=>'SH512'
,p_accept_old_checksums=>false
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
,p_documentation_banner=>'Application created from create application wizard 2022.01.21.'
,p_authentication_id=>wwv_flow_imp.id(61457909958554680679)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'APEX Shared Lists of Values - &AI_LOCAL_ENV.'
,p_app_builder_icon_name=>'app-icon.svg'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 5.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T'
,p_pass_ecid=>'N'
,p_security_scheme=>wwv_flow_imp.id(61456299409809415787)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_tokenize_row_search=>'N'
,p_friendly_url=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'APEX Shared Lists of Values'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>7
,p_version_scn=>15684585083621
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(58955437498978124432)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>true
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(61456158427468415564)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'js-navCollapsed--default:t-TreeNav--styleA'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(61456294771643415742)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(61456158427468415564)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>15674314776708
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(61456307953586415832)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(61456584384488632767)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'LOV Maintenance (Admin)'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP,7:P7_APP_ALIAS:&P1_APP_ALIAS.:'
,p_list_item_icon=>'fa-list-ul'
,p_parent_list_item_id=>wwv_flow_imp.id(61456307953586415832)
,p_security_scheme=>wwv_flow_imp.id(61456299276325415787)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(60582941662121387530)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'See Global Shared LOVs'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,1:P1_APP_ALIAS:&AI_COMMON_LOV_ALIAS.:'
,p_list_item_icon=>'fa-th-list'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(60596056972133690130)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Copy from &AI_REMOTE_ENV.'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-files-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(61456451604347416056)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(61456299276325415787)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(61456294771643415742)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(61456448147769416054)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10050:&SESSION.::&DEBUG.:RP,10050:P10050_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(61456296838543415780)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(61456448537165416054)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'About'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(61456297249915415780)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(61456449017493416055)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Page Help'
,p_list_item_link_target=>'f?p=&APP_ID.:10061:&SESSION.::&DEBUG.::P10061_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(61456448537165416054)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(61456297249915415780)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(61456449354139416055)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(61456448537165416054)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(61456449773589416055)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'About Page'
,p_list_item_link_target=>'f?p=&APP_ID.:10060:&SESSION.::&DEBUG.:10060'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(61456448537165416054)
,p_required_patch=>wwv_flow_imp.id(61456297249915415780)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(61456450123463416055)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(61456450632043416055)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(61456450123463416055)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(61456450950830416056)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_imp.id(61456450123463416055)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/application_configuration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(61456452698966416060)
,p_name=>'Application Configuration'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(61456296964279415780)
,p_version_scn=>15674314655163
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(61456453079339416060)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Configuration Options'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&SESSION.::&DEBUG.:10010:::'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>'Enable or disable application features.'
,p_security_scheme=>wwv_flow_imp.id(61456299276325415787)
,p_required_patch=>wwv_flow_imp.id(61456296964279415780)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_interface
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(61456453434934416060)
,p_name=>'User Interface'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(61456297371655415780)
,p_version_scn=>15674314824222
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(61456453766475416060)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&SESSION.::&DEBUG.:10020:::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel.'
,p_security_scheme=>wwv_flow_imp.id(61456299276325415787)
,p_required_patch=>wwv_flow_imp.id(61456297371655415780)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(61456454074732416061)
,p_name=>'Activity Reports'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(61456296672396415780)
,p_version_scn=>15674314598408
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(60595402836614444826)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Change History'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3,RIR:::YES'
,p_list_item_icon=>'fa-clock-o'
,p_security_scheme=>wwv_flow_imp.id(61456299276325415787)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(61456454506088416061)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&SESSION.::&DEBUG.:10030:::YES'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'View application activity metrics'
,p_security_scheme=>wwv_flow_imp.id(61456299276325415787)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(61456454939382416061)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&SESSION.::&DEBUG.:10031:::YES'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report of page views aggregated by user'
,p_security_scheme=>wwv_flow_imp.id(61456299276325415787)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(61456455286224416061)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Application Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10032:&SESSION.::&DEBUG.:10032:::YES'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report of errors logged by this application'
,p_security_scheme=>wwv_flow_imp.id(61456299276325415787)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(61456455683283416061)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Performance'
,p_list_item_link_target=>'f?p=&APP_ID.:10033:&SESSION.::&DEBUG.:10033:::YES'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>'Report of activity and performance by application page'
,p_security_scheme=>wwv_flow_imp.id(61456299276325415787)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(61456456142326416061)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Views'
,p_list_item_link_target=>'f?p=&APP_ID.:10034:&SESSION.::&DEBUG.:RIR,10034:::YES'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report of each page view by user including date of access and elapsed time'
,p_security_scheme=>wwv_flow_imp.id(61456299276325415787)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(61456456386067416061)
,p_name=>'Access Control'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(61456296595635415780)
,p_version_scn=>15674314486231
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(61456456845681416061)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10041:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Change access control settings and disable access control.'
,p_security_scheme=>wwv_flow_imp.id(61456299276325415787)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(61456457169820416062)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_list_item_link_target=>'f?p=&APP_ID.:10040:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Set level of access for authenticated users of this application.'
,p_security_scheme=>wwv_flow_imp.id(61456299276325415787)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/feedback
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(61456457494955416062)
,p_name=>'Feedback'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(61456296838543415780)
,p_version_scn=>15674314427758
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(61456457849518416062)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Feedback Settings'
,p_list_item_link_target=>'f?p=&APP_ID.:10052:&SESSION.::&DEBUG.:10052:::'
,p_list_item_icon=>'fa-envelope-user'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_text_01=>'Manage if attachments should be allowed.'
,p_security_scheme=>wwv_flow_imp.id(61456299276325415787)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(61456458324914416062)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'User Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10053:&SESSION.::&DEBUG.:10053:::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>'Report of all feedback submitted by application users.'
,p_security_scheme=>wwv_flow_imp.id(61456299276325415787)
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
wwv_flow_imp.g_varchar2_table(1) := '3C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B222076696577426F783D223020302036342036';
wwv_flow_imp.g_varchar2_table(2) := '34223E3C646566733E3C7374796C653E2E636C732D317B66696C6C3A75726C282372616469616C2D6772616469656E74293B7D2E636C732D327B6F7061636974793A302E313B7D2E636C732D332C2E636C732D347B66696C6C3A236666663B7D2E636C73';
wwv_flow_imp.g_varchar2_table(3) := '2D337B6F7061636974793A302E363B7D3C2F7374796C653E3C72616469616C4772616469656E742069643D2272616469616C2D6772616469656E74222063783D223332222063793D222E30352220723D22363422206772616469656E74556E6974733D22';
wwv_flow_imp.g_varchar2_table(4) := '7573657253706163654F6E557365223E3C73746F70206F66667365743D2230222073746F702D636F6C6F723D2223666666222073746F702D6F7061636974793D22302E3135222F3E3C73746F70206F66667365743D222E35222073746F702D636F6C6F72';
wwv_flow_imp.g_varchar2_table(5) := '3D2223666666222073746F702D6F7061636974793D22302E31222F3E3C73746F70206F66667365743D2231222073746F702D636F6C6F723D2223666666222073746F702D6F7061636974793D2230222F3E3C2F72616469616C4772616469656E743E3C73';
wwv_flow_imp.g_varchar2_table(6) := '796D626F6C2069643D22616D6269656E742D6C69676874696E67222076696577426F783D22302030203634203634223E3C7061746820636C6173733D22636C732D312220643D224D302030683634763634682D36347A222F3E3C2F73796D626F6C3E3C2F';
wwv_flow_imp.g_varchar2_table(7) := '646566733E3C7469746C653E6261722D6C696E652D63686172743C2F7469746C653E3C726563742077696474683D22363422206865696768743D223634222066696C6C3D2223383142423546222F3E3C672069643D2269636F6E73223E3C706174682063';
wwv_flow_imp.g_varchar2_table(8) := '6C6173733D22636C732D322220643D224D313920343668357631682D357A4D323620343668357631682D357A4D333320343668357631682D357A4D343020343668357631682D357A222F3E3C7061746820636C6173733D22636C732D332220643D224D31';
wwv_flow_imp.g_varchar2_table(9) := '3920333868357638682D357A4D32362033326835763134682D357A4D33332033326835763134682D357A4D34302032376835763139682D357A222F3E3C6720636C6173733D22636C732D32223E3C636972636C652063783D2234322E35222063793D2232';
wwv_flow_imp.g_varchar2_table(10) := '302E352220723D22312E35222F3E3C636972636C652063783D2233352E35222063793D2232352E352220723D22312E35222F3E3C636972636C652063783D2232382E35222063793D2232352E352220723D22312E35222F3E3C636972636C652063783D22';
wwv_flow_imp.g_varchar2_table(11) := '32312E35222063793D2233312E352220723D22312E35222F3E3C7061746820643D224D32312E3832352033312E3837396C2D2E36352D2E37353820372E31342D362E31323168372E3032356C362E3836392D342E3930372E3538322E3831342D372E3133';
wwv_flow_imp.g_varchar2_table(12) := '3120352E303933682D362E3937356C2D362E383620352E3837397A222F3E3C2F673E3C636972636C6520636C6173733D22636C732D34222063783D2234322E35222063793D2231392E352220723D22312E35222F3E3C636972636C6520636C6173733D22';
wwv_flow_imp.g_varchar2_table(13) := '636C732D34222063783D2233352E35222063793D2232342E352220723D22312E35222F3E3C636972636C6520636C6173733D22636C732D34222063783D2232382E35222063793D2232342E352220723D22312E35222F3E3C636972636C6520636C617373';
wwv_flow_imp.g_varchar2_table(14) := '3D22636C732D34222063783D2232312E35222063793D2233302E352220723D22312E35222F3E3C7061746820636C6173733D22636C732D342220643D224D32312E3832352033302E3837396C2D2E36352D2E37353820372E31342D362E31323168372E30';
wwv_flow_imp.g_varchar2_table(15) := '32356C362E3836392D342E3930372E3538322E3831342D372E31333120352E303933682D362E3937356C2D362E383620352E3837397A222F3E3C2F673E3C7573652077696474683D22363422206865696768743D2236342220786C696E6B3A687265663D';
wwv_flow_imp.g_varchar2_table(16) := '2223616D6269656E742D6C69676874696E67222069643D226C69676874696E67222F3E3C2F7376673E';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(61456296069009415773)
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
wwv_flow_imp.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20233831424235463B0A7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(61456296355304415778)
,p_file_name=>'app-icon.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/apex_data_pkg_apxshr_pgm_options_370288_zip
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '504B0304140000080800B19C6D5B6EB007255F020000E00B0000170000004150585348525F50474D5F4F5054494F4E532E6A736F6EED966D6FDA3010C7DFF329A2BC2E900758C1AF9A42449928A992944D1A93E5D806B226719638745DB5EFBE0B4F83D1';
wwv_flow_imp.g_varchar2_table(2) := '228D51EDC5906229F9DFF9EE6CFFE4CB73450D258F73157DAA3C575492A638642A4A8A28AA5C2C3E49141230ABDE8DE5DA5D3C70469E0A26914A9C0815E9EB771273F01A91A8E0CA44648AD507DF8E35C0F670B49E3027118C8CCE485646F4AD5E7FD8DB';
wwv_flow_imp.g_varchar2_table(3) := '3626451CF06C937F2D0742449C241B9D661C171242189AD1ACEA7A55337DFD1DD25BA861A82B7B3A8DA128F0B152FE4DB1D2142986A6B75B1B87226498B2B28E8EE3FBA59AF1799E1C0CBCF438187A15642FF87A2D3412C1DE0219917C4F9461CC7349E2';
wwv_flow_imp.g_varchar2_table(4) := '746309E3298E41C5F229E53BEA248CF8EA0CB6D472A371CEE58E18915CE222659074A3F3C90443AA4CFE2EF264CBEF47E5E228468C038CB8F6ADE3DBAF4372E73ADDFB8EDF778627E244D3D0E2392D273A70D246C6256A680739693435ED354A6AA37EC7';
wwv_flow_imp.g_varchar2_table(5) := '72BD2BBBFBC172BBEF9DA1EDD53ACEED7F0E8FB90BCF35C9B972EF0E16FCFC8243716DCF57A848124E65289297619A4999E6685C1FD7A741CB6C93A611307AC9885E4DBF3C706E84DFE543329F7C7D2035C2825A9157E92CA4642AAA7A4D6484461C0EA0';
wwv_flow_imp.g_varchar2_table(6) := '6050755EA3221ED745C6F2713DA7424A4DD3E10DF27086233107B9AC1893720FB82461044AF0B45CEDB87E129875DF309066AE983BE1A5B708DC3091D63A5F7AC772DB38C0EDAAF3FD29B44B0409ECFF0E7D6C0EC03D52C1F8BF0150478DD69B006820D3';
wwv_flow_imp.g_varchar2_table(7) := '3C03782C80CD035D17DACAAD332CA7606BD0B7BC97C9BBB2EE3E7A372EEE0D9C6BF891DB4EF037D82C7BA509077CF9164DB80C7CBEB7009BCF307E02504B0304140000080800B19C6D5BF0BDAF9D90020000CF0F00001F0000004150585348525F50474D';
wwv_flow_imp.g_varchar2_table(8) := '5F4F5054494F4E535F70726F66696C652E6A736F6EBD97516FDA3010C7DFFB29509E495528D536DE0209255202110995AA31592631C55B9C44B1693555FDEE3D9BB6685A8D449C82E448D8B9D3EF7FE773CECF179D8EB5A139B1C5DF8A589D6167D09553';
wwv_flow_imp.g_varchar2_table(9) := '9C160F3059974F726E83734EBA1FAF92222D3378412E594E70DD5F2693EF965A07039B939CA4A2ACD5321584F1FDDA966069C56D5AD81B5A73F1BFFB943F4AEF79C949A6CC57D6DE7653D62930D694D94F5BF0C92B9C2A5C51EFDE4CCB7CC70A0E73F0EF';
wwv_flow_imp.g_varchar2_table(10) := '278C4EE7593D61ADC08CEC61A308F9AE72A916322CF087F2FE619AA494E1DC4EB778AFE2F213133B2785323BD8FDA31C5715A2D9C19072FB372F8B0FC16AFEA57B84D4097C27D6C0F6F440BDAB2B3D11CE29E64DA1E6518266F3F384AFAC042A4A235227';
wwv_flow_imp.g_varchar2_table(11) := 'F45A8C9E0292FE0D90EE9C00C6623C7516A7930DAE8EA13DE21C46AD626E48385B86234F07F8056996E8C58EAD8931F9683E0F3C67767A6C6F8ED3ADCB3227B8688A375E78689968A8AEF554DF3EA74A6B8276E2E00E0E478685CD30FFA3D6EFE16787A1';
wwv_flow_imp.g_varchar2_table(12) := 'EDBA2B2B5959D3697F300CFD611C9BF047B72154D4E991BDD6EC5929A27A6050524651F55D34D61DE847A8FA379A8CABD8D20CA58D4FEE857717CFDA4C774D1E7971DE84EF35B49DF2BD10B3A4BF45B7EDB4BFC5D828F1EF87D038988F746846C73BF445';
wwv_flow_imp.g_varchar2_table(13) := '6B5338D749741FC5D377E63B18BC4FCEB83BDFB5247EE8C58913461A4183235FF9DE71458232C205665503599793C98FA6D2FCF01685200B25F75183E645BBBF297B400C3421E5C4006EE2075EF3CE4AB3C1259DBC5918F557924E365628F674676FD3C8';
wwv_flow_imp.g_varchar2_table(14) := 'C90E0771224CD002274ED03272A1025BAB3FC996632ED0AECAA008CF5882DE6482A0F416499B72C86683A0E86A717E2DDEACD5C44825A4F8A29CC0F397BAF256B8867BB2BC4573D5C35EBCBC02504B01021400140000080800B19C6D5B6EB007255F0200';
wwv_flow_imp.g_varchar2_table(15) := '00E00B0000170000000000000000002000B681000000004150585348525F50474D5F4F5054494F4E532E6A736F6E504B01021400140000080800B19C6D5BF0BDAF9D90020000CF0F00001F0000000000000000002000B681940200004150585348525F50';
wwv_flow_imp.g_varchar2_table(16) := '474D5F4F5054494F4E535F70726F66696C652E6A736F6E504B0506000000000200020092000000610500000000';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(109415308613184573679)
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
 p_id=>wwv_flow_imp.id(58955439661334326345)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>15634973858139
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(58956857917300351783)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>7506772034796
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(58956915820284351788)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>7506772034807
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(58956973706833351794)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>7506772034823
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(58974311574925637883)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(58975039590640655112)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>7394626455665
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(58975039688220655112)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>7394626455665
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(58975150727113655121)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>7394626455689
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(60553844291174558430)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(61456155539573415553)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(61456156107122415556)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(61456156405374415556)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(61456156667309415556)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(61456157310676415556)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(61456299276325415787)
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
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(61456299409809415787)
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
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(61456299528176415787)
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
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(61456298936228415785)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(61456299137354415786)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(61456299213289415786)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes/set_env_variables_pgmopt
begin
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(105223708095433946519)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET ENV VARIABLES - PGMOPT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    -- if APXSHR_PACKAGE.staging_port',
'    :AI_LOCAL_ENV  := APXSHR_PGM_OPTS.rtn_pgm_opt ( :APP_ALIAS, 1, ''TEXT'' ); -- ''STAGING'';',
'    :AI_REMOTE_ENV := APXSHR_PGM_OPTS.rtn_pgm_opt ( :APP_ALIAS, 2, ''TEXT'' ); --''PRODUCTION'';',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_required_patch=>wwv_flow_imp.id(59037901996881296723)
,p_version_scn=>15667424016847
);
end;
/
prompt --application/shared_components/logic/application_processes/set_env_variables_no_pgmopt
begin
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(60596091065708719193)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET ENV VARIABLES - NO PGMOPT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :AI_LOCAL_ENV := ''PRODUCTION'';',
'    :AI_REMOTE_ENV := ''STAGING'';    ',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_required_patch=>-wwv_flow_imp.id(59037901996881296723)
,p_version_scn=>15667422651443
);
end;
/
prompt --application/shared_components/logic/application_items/ai_common_lov_alias
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(60582956581263417246)
,p_name=>'AI_COMMON_LOV_ALIAS'
,p_protection_level=>'I'
,p_version_scn=>15673500899880
);
end;
/
prompt --application/shared_components/logic/application_items/ai_local_env
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(60596088427929713845)
,p_name=>'AI_LOCAL_ENV'
,p_protection_level=>'I'
,p_version_scn=>15673500471676
);
end;
/
prompt --application/shared_components/logic/application_items/ai_lov_app_id
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(60591723427896949473)
,p_name=>'AI_LOV_APP_ID'
,p_protection_level=>'N'
,p_item_comment=>'Used to store the app ID from page 10 so it "persists" when adding multiple LOVs for an Alias.'
,p_version_scn=>15673500491963
);
end;
/
prompt --application/shared_components/logic/application_items/ai_remote_env
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(60596090861708714755)
,p_name=>'AI_REMOTE_ENV'
,p_protection_level=>'I'
,p_version_scn=>15673500514178
);
end;
/
prompt --application/shared_components/logic/application_computations/ai_common_lov_alias
begin
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(60582961495595424633)
,p_computation_sequence=>10
,p_computation_item=>'AI_COMMON_LOV_ALIAS'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'APXSHR_PGM_OPTS.rtn_pgm_opt (''SHARED_LOVS'', 5, ''TEXT'')'
,p_required_patch=>wwv_flow_imp.id(59037901996881296723)
,p_version_scn=>15671172974110
);
end;
/
prompt --application/shared_components/logic/application_computations/ai_common_lov_alias_002
begin
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(59038038489091302774)
,p_computation_sequence=>20
,p_computation_item=>'AI_COMMON_LOV_ALIAS'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'@APXSHR_GLOBAL_LOVS'
,p_required_patch=>-wwv_flow_imp.id(59037901996881296723)
,p_version_scn=>15667422022188
);
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(61456300596446415794)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'N'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(61456296838543415780)
,p_version_scn=>15673504020048
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(61456300850706415795)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ALL_USERS'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(61456296595635415780)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>1
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
 p_id=>wwv_flow_imp.id(61456390085879415996)
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
prompt --application/shared_components/user_interface/lovs/apxshr_lov_na
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(61456904227660618237)
,p_lov_name=>'APXSHR_LOV_NA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    LOV_NA,',
'    ID',
'from APXSHR_LOV_NAME    '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'APEX_190200'
,p_query_table=>'APXSHR_LOV_NAME'
,p_return_column_name=>'ID'
,p_display_column_name=>'LOV_NA'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(61456319037183415873)
,p_lov_name=>'DESKTOP THEME STYLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'    s.theme_style_id r',
'from apex_application_theme_styles s, apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and t.ui_type_name   = ''DESKTOP''',
'    and t.is_current = ''Yes''',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(61456397805888416002)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_imp.id(61456397805888416002)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(61456398087328416003)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(61456416451251416024)
,p_lov_name=>'FEEDBACK_RATING'
,p_lov_query=>'.'||wwv_flow_imp.id(61456416451251416024)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(61456416785482416024)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Positive'
,p_lov_return_value=>'3'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(61456417227264416025)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutral'
,p_lov_return_value=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(61456417555958416025)
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
 p_id=>wwv_flow_imp.id(61456430599934416032)
,p_lov_name=>'FEEDBACK_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(61456430599934416032)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(61456430883127416032)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(61456431287634416032)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Acknowledged'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(61456431722968416032)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(61456432062299416033)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(61456303167913415811)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_imp.id(61456303167913415811)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(61456303566580415813)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Remember username'
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(61456339466333415932)
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
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(61456319709664415891)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_imp.id(61456319709664415891)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(61456319952028415891)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(61456374498417415982)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_lov_query=>'.'||wwv_flow_imp.id(61456374498417415982)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(61456374813632415982)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Add Report Page'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(61456375220905415982)
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
 p_id=>wwv_flow_imp.id(61456301245420415796)
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
 p_id=>wwv_flow_imp.id(61456157916171415561)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(60595393631732400418)
,p_parent_id=>wwv_flow_imp.id(61456452526925416059)
,p_short_name=>'Change History'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(60596077375138690195)
,p_parent_id=>wwv_flow_imp.id(61456158089533415562)
,p_short_name=>'Copy from &AI_REMOTE_ENV.'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(61456158089533415562)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(61456452526925416059)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:10000:&SESSION.'
,p_page_id=>10000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(61456585258021632768)
,p_parent_id=>wwv_flow_imp.id(61456158089533415562)
,p_short_name=>'LOV Maintenance'
,p_link=>'f?p=&APP_ID.:7:&SESSION.'
,p_page_id=>7
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
 p_id=>wwv_flow_imp.id(61456275405631415696)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(112120235988600679600)
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
,p_files_version=>65
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
 p_id=>wwv_flow_imp.id(60590400543256222447)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(112120235988600679600)
,p_theme_id=>42
,p_name=>'Redwood Light (Pillar)'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_css_classes=>' rw-mode-header--pillar rw-pillar--pine'
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_config=>'{"classes":["rw-mode-header--pillar","rw-pillar--pine"],"vars":{},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#112120235988600679600.css'
,p_theme_roller_read_only=>false
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A210D0A20436F707972696768742028632920323032302C20323032342C204F7261636C6520616E642F6F722069747320616666696C69617465732E0D0A202A2F0D0A';
wwv_flow_imp_shared.create_theme_file(
 p_id=>wwv_flow_imp.id(112120236314414679603)
,p_theme_id=>42
,p_file_name=>'112120235988600679600.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(60590539814261222513)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(60590541806700222515)
,p_theme_id=>42
,p_name=>'ICON_STYLE'
,p_display_name=>'Icon Style'
,p_display_sequence=>35
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(60590543821906222516)
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
 p_id=>wwv_flow_imp.id(60590561797316222521)
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
 p_id=>wwv_flow_imp.id(59037901996881296723)
,p_build_option_name=>'Use Program Options?'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15667424937517
,p_build_option_comment=>'If the APXSHR_PGM_OPTS package and associated tables are installed, you can INCLUDE this option.  Otherwise, EXCLUDE it.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(61456296595635415780)
,p_build_option_name=>'Feature: Access Control'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>1
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(61456296672396415780)
,p_build_option_name=>'Feature: Activity Reporting'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>1
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(61456296838543415780)
,p_build_option_name=>'Feature: Feedback'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>1
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(61456296964279415780)
,p_build_option_name=>'Feature: Configuration Options'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>1
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>'Allow application administrators to enable or disable specific functionality, associated with an Application Express build option, from within the application.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(61456297249915415780)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>1
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(61456297371655415780)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>1
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(109423709681481748187)
,p_build_option_name=>'Elevated Privs to WWV_FLOWS?'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>15673527828156
,p_build_option_comment=>'Pages 2 & 10 have processes to insert directly into an app''s Shared LOVs, but they required elevated privileges.  See processes on pages 2 & 10 for more details.  EXCLUDE this feature if you do NOT have these elevated privileges.'
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
 p_id=>wwv_flow_imp.id(61456300328563415790)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_version_scn=>1
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/application_express_authentication
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(61456157621069415559)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'BUILTIN_LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15635040399586
);
end;
/
prompt --application/shared_components/security/authentications/open_door_testing_only
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(61457909958554680679)
,p_name=>'Open Door - TESTING ONLY'
,p_scheme_type=>'NATIVE_OPEN_DOOR'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>1
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
,p_step_title=>'APEX Shared Lists of Values'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59026223023436991306)
,p_plug_name=>'How to use this app'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-Region--hideShowIconsMath:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>21
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p><span style="color: #c0392b;"><strong>STEP ONE -&nbsp;Prepare your application:</strong></span>&nbsp; In <strong>YOUR </strong>application, create a new Navigation Menu List Entry:</p>',
'<ol>',
'<li><strong>List Entry Label</strong> = "Maintain Shared LOVs" or something like that</li>',
'<li><strong>Target type</strong> = <span style="font-family: Courier New,Courier,monospace;">URL</span></li>',
'<li><strong>URL Target</strong> = <span style="font-family: Courier New,Courier,monospace;">f?p=SHARED_LOVS:1:::::P1_APP_ALIAS:YOURAPPALIAS</span></li>',
'</ol>',
'<p><span style="font-family: Arial,Helvetica,sans-serif;"><span style="color: #2980b9;"><strong>NOTE:</strong></span> "YOURAPPALIAS" should be all UPPER CASE with no spaces. You can use ''-'' or ''_'' as separators.</span></p>',
'<p><span style="color: #c0392b;"><strong>STEP TWO - Launch the SHARED_LOVS app:</strong></span></p>',
'<ol>',
'<li>Launch the URL from YOUR Application using the Navigation Menu item created in Step One.</li>',
'<li>Launch this&nbsp;app natively (ALIAS = SHARED_LOVS)&nbsp;</li>',
'</ol>',
'<p><span style="color: #c0392b;"><strong>STEP THREE - Add / edit your LOVs</strong></span></p>',
'<p>To Create a new Shared LOV for your application, click the<span style="font-family: Courier New,Courier,monospace;"> <span style="color: #27ae60;"><strong>Create a New LOV</strong></span> </span>button.</p>',
'<p>To edit an existing Shared LOV, click the<span style="font-family: Courier New,Courier,monospace;"> <strong><span style="color: #2980b9;">LOV Name</span></strong> </span>in the report below.</p>',
'<p>On the LOV Maintenance page (after clicking the <span style="font-family: Courier New,Courier,monospace;"><strong><span style="color: #2980b9;">LOV Name&nbsp;</span></strong></span>in the report), click the <span style="color: #27ae60;"><strong>Ge'
||'nerate Code</strong></span> button for options for creating Lists of Values in your application.</p>',
'<p><span style="color: #c0392b;"><span style="font-size: 16px;"><strong>Finding LOV items by VALUE instead of Number:</strong></span></span></p>',
'<p>If you you need to look for specific values in your LOV (e.g., "Closed" status), but you don''t want to use the NUMBER identifier to search, you can use this Function to return the ID of your LOV value:&nbsp;</p>',
'<div><span style="font-family: Courier New,Courier,monospace;">my_lov_id := APXSHR_LOV_PACKAGE.lov_dtls_display_val_id ( app_alias_in&nbsp; &nbsp; &nbsp; &nbsp;=&gt; ''APP_ALIAS'',</span></div>',
'<div><span style="font-family: Courier New,Courier,monospace;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp'
||'; &nbsp; &nbsp; lov_na_in&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =&gt; ''LOV Name'',</span></div>',
'<div><span style="font-family: Courier New,Courier,monospace;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp'
||'; &nbsp; &nbsp; lov_display_val_in =&gt; ''LOV Value'' );</span></div>'))
,p_required_patch=>-wwv_flow_imp.id(59037901996881296723)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61454420489347498747)
,p_plug_name=>'LOVs by App ALIAS'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>31
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       APP_ALIAS,',
'       LOV_NA,',
'       LOV_DESC,',
'       SORT_ORDER_NO,',
'       ACTIVE_IND,',
'       CREATED,',
'       CREATED_BY,',
'       UPDATED,',
'       UPDATED_BY,',
'       GLOBAL_LOV_IND,',
'       ''<span class="t-Icon fa fa-copy" aria-hidden="true"></span><span class="t-Button-label">Copy from ''||:AI_REMOTE_ENV||''</span>'' as my_copy',
'       --''Copy from ''||:AI_REMOTE_ENV as my_copy',
'from APXSHR_LOV_NAME',
'where APP_ALIAS = upper(nvl(:P1_APP_ALIAS,''X''))'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1_APP_ALIAS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(61454420576852498748)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
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
,p_owner=>'J11740'
,p_internal_uid=>444873229982763330
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61454420709331498749)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61454420836557498750)
,p_db_column_name=>'APP_ALIAS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'App ALIAS'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61454420896428498751)
,p_db_column_name=>'LOV_NA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'LOV Name'
,p_column_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP,7:P7_ID,P7_APP_ALIAS,AI_LOV_APP_ID:#ID#,#APP_ALIAS#,'
,p_column_linktext=>'#LOV_NA#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61454420985662498752)
,p_db_column_name=>'LOV_DESC'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61454421089432498753)
,p_db_column_name=>'SORT_ORDER_NO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sort Order'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61454421239977498754)
,p_db_column_name=>'ACTIVE_IND'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Active?'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61454421270484498755)
,p_db_column_name=>'CREATED'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61454421364916498756)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61454421529016498757)
,p_db_column_name=>'UPDATED'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61454421548964498758)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60536114966870855300)
,p_db_column_name=>'MY_COPY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Copy'
,p_column_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:4:P4_APP_ALIAS:#APP_ALIAS#'
,p_column_linktext=>'#MY_COPY#'
,p_column_link_attr=>'class="t-Button t-Button--icon t-Button--small t-Button--primary t-Button--iconLeft"'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59026222541170991301)
,p_db_column_name=>'GLOBAL_LOV_IND'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Global LOV?'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(61456483831654445147)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4469365'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APP_ALIAS:LOV_NA:LOV_DESC:SORT_ORDER_NO:ACTIVE_IND:MY_COPY:CREATED:CREATED_BY:UPDATED:UPDATED_BY'
,p_sort_column_1=>'APP_ALIAS'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'LOV_NA'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456308756472415836)
,p_plug_name=>'APEX Shared Lists of Values'
,p_icon_css_classes=>'fa-list-ul'
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
 p_id=>wwv_flow_imp.id(61456895598979397037)
,p_plug_name=>'What''s New?'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-Region--hideShowIconsMath:is-expanded:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>'return APXSHR_PGM_OPTS.rtn_pgm_opt (:APP_ALIAS, to_number(:APP_PAGE_ID) * -1);'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'APXSHR_PGM_OPTS.pgm_opt_exists (:APP_ALIAS, to_number(:APP_PAGE_ID) * -1)'
,p_plug_display_when_cond2=>'PLSQL'
,p_required_patch=>wwv_flow_imp.id(59037901996881296723)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456895664951397038)
,p_plug_name=>'How to use this app'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-Region--hideShowIconsMath:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>'return APXSHR_PGM_OPTS.rtn_pgm_opt (:APP_ALIAS, to_number(:APP_PAGE_ID));'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'APXSHR_PGM_OPTS.pgm_opt_exists(''SHARED_LOVS'',to_number(:APP_PAGE_ID))'
,p_plug_display_when_cond2=>'PLSQL'
,p_required_patch=>wwv_flow_imp.id(59037901996881296723)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87288208199186380820)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61454420489347498747)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Back to &P1_APP_ALIAS.'
,p_button_redirect_url=>'f?p=&P1_APP_ALIAS.:1:&SESSION.::&DEBUG.:::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P1_APP_ALIAS is NOT NULL',
'and',
':P1_APP_ALIAS != :AI_COMMON_LOV_ALIAS'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-backward'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61010221731175064068)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(61454420489347498747)
,p_button_name=>'FIRM_LOVS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--warning:t-Button--gapTop'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'See Global Shared LOVs'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:1:P1_APP_ALIAS:&AI_COMMON_LOV_ALIAS.'
,p_button_condition=>'P1_APP_ALIAS'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61010221430411064065)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(61454420489347498747)
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create a New LOV'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7:P7_APP_ALIAS,AI_LOV_APP_ID:&P1_APP_ALIAS.,'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61454421735687498759)
,p_name=>'P1_APP_ALIAS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61454420489347498747)
,p_prompt=>'App ALIAS'
,p_placeholder=>'Type ALIAS here and press Tab or Enter'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_read_only_when=>'NOT apex_authorization.is_authorized(''Administration Rights'')'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'text_case', 'UPPER',
  'trim_spaces', 'BOTH')).to_clob
,p_item_comment=>'Only allow App Admins to change this value.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61454421819146498760)
,p_name=>'ALIAS Changes'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_APP_ALIAS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61454421883178498761)
,p_event_id=>wwv_flow_imp.id(61454421819146498760)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61454420489347498747)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60876477362317932349)
,p_event_id=>wwv_flow_imp.id(61454421819146498760)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Change History'
,p_alias=>'CHANGE-HISTORY'
,p_step_title=>'Change History'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(61456299276325415787)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60595393251602400416)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(61456157916171415561)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60595393823341400424)
,p_plug_name=>'Change History'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APXSHR_HISTORY_V'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_page_header=>'Change History'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(60595393963435400424)
,p_name=>'Change History'
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
,p_internal_uid=>43736176909087163
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595394343751400430)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595394722777400431)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595395103717400431)
,p_db_column_name=>'COLUMN_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Column Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595395543162400431)
,p_db_column_name=>'ACTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Action'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595395977471400431)
,p_db_column_name=>'ACTION_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Action Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595396346102400432)
,p_db_column_name=>'ACTION_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Action By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595396693208400432)
,p_db_column_name=>'TABLE_PRIMARY_KEY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Table Primary Key'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595397104064400433)
,p_db_column_name=>'TABLE_ROW_VERSION'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Table Row Version'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595397526082400433)
,p_db_column_name=>'CHANGE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Change'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(60595402073337437519)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'437443'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:TABLE_NAME:COLUMN_NAME:ACTION:ACTION_DATE:ACTION_BY:TABLE_PRIMARY_KEY:TABLE_ROW_VERSION:CHANGE'
,p_sort_column_1=>'ACTION_DATE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Import & Select from REST'
,p_alias=>'IMPORT-SELECT-FROM-REST'
,p_step_title=>'Import & Select from REST'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Because this page has an Interactive Report, this jQuery has to be in 2 places:',
'   1. Here when page loads so that the "Select All" box works when the page loads',
'   2. As a Dynamic Action after the Interactive Report refreshes (like after a filter is applied),',
'      otherwise the Select All stops working when other filters are applied',
'*/',
'//select all checkboxes',
'$("#select_all").change(function(){  //"select all" change ',
'    $(".my_checkbox").prop(''checked'', $(this).prop("checked")); //change all ".my_checkbox" checked status',
'});',
'',
'//".my_checkbox" change ',
'',
'$(''.my_checkbox'').change(function(){ ',
'	//uncheck "select all", if one of the listed checkbox item is unchecked',
' ',
'    if(false == $(this).prop("checked")){ //if this item is unchecked',
'        $("#select_all").prop(''checked'', false); //change "select all" checked status to false',
'    }',
'    ',
'	//check "select all" if all checkbox items are checked',
'	if ($(''.my_checkbox:checked'').length == $(''.my_checkbox'').length ){',
'		$("#select_all").prop(''checked'', true);',
'	}',
'',
'});'))
,p_page_template_options=>'#DEFAULT#'
,p_page_comment=>'n/a'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60596076967988690194)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(61456157916171415561)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62574618866313461365)
,p_plug_name=>'MY Shared LOVs (&AI_REMOTE_ENV.)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'     n001    name_ID',
'    ,APEX_ITEM.CHECKBOX2(1,SEQ_ID,''class="my_checkbox"'',NULL,NULL,''f01_''||SEQ_ID) as select_row',
'    ,c001    app_alias',
'    ,c002    lov_na ',
'    ,c003    lov_desc',
'    ,n002    name_sort_order',
'    ,c010    global_lov_ind  ',
'    ,c019    name_allow_user_delete_ind',
'    ,to_char( d001, ''MM-DD-YYYY HH:MI:SS pm'') as name_created   ',
'    ,c004    name_created_by',
'    ,to_char( d002, ''MM-DD-YYYY HH:MI:SS pm'') as name_updated     ',
'    ,c005   name_updated_by ',
'    ,c006   name_activ_ind',
'    ,n003   detail_id',
'    ,c007   lov_display_val',
'    ,c011   lov_display_desc',
'    ,n004   det_sort_order_no',
'    ,c012   det_active_ind',
'    ,c020   det_allow_user_delete_ind',
'    ,to_char( d003, ''MM-DD-YYYY HH:MI:SS pm'') as eff_start_da',
'    ,to_char( d004, ''MM-DD-YYYY HH:MI:SS pm'') as eff_end_da',
'    ,to_char( d005, ''MM-DD-YYYY HH:MI:SS pm'') as det_created',
'    ,c016 as det_created_by',
'    ,c017 as det_updated',
'    ,c018 as det_updated_by',
'from apex_collections ',
'where collection_name = ''P4_PARSED_RESULTS'''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(62574619035579461366)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'... More Data Available ...'
,p_no_data_found_message=>'No Options found for this ALIAS'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV'
,p_enable_mail_download=>'N'
,p_csv_output_separator=>','
,p_csv_output_enclosed_by=>'"'
,p_owner=>'J11740'
,p_internal_uid=>2022961249053148105
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60596059992924690147)
,p_db_column_name=>'APP_ALIAS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Alias'
,p_column_type=>'STRING'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60596057645010690145)
,p_db_column_name=>'SELECT_ROW'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'<input type="checkbox" id="select_all"/> Select All '
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595519233600501886)
,p_db_column_name=>'NAME_ID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Name ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595519383501501887)
,p_db_column_name=>'LOV_NA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'LOV Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595519438270501888)
,p_db_column_name=>'LOV_DESC'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'LOV Desc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595519490444501889)
,p_db_column_name=>'NAME_SORT_ORDER'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Name Sort Order'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595519589170501890)
,p_db_column_name=>'NAME_CREATED'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Name Created'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595519708975501891)
,p_db_column_name=>'NAME_CREATED_BY'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Name Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595519863828501892)
,p_db_column_name=>'NAME_UPDATED'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Name Updated'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595519920649501893)
,p_db_column_name=>'NAME_UPDATED_BY'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Name Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595520187871501896)
,p_db_column_name=>'NAME_ACTIV_IND'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'LOV Name Active?'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595520354667501897)
,p_db_column_name=>'DETAIL_ID'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Detail ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595520432160501898)
,p_db_column_name=>'LOV_DISPLAY_VAL'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'LOV Detail Display Value'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595520960934501903)
,p_db_column_name=>'DET_SORT_ORDER_NO'
,p_display_order=>300
,p_column_identifier=>'AF'
,p_column_label=>'Detail Sort Order'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595521037671501904)
,p_db_column_name=>'DET_ACTIVE_IND'
,p_display_order=>310
,p_column_identifier=>'AG'
,p_column_label=>'LOV Detail Active?'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595521136056501905)
,p_db_column_name=>'EFF_START_DA'
,p_display_order=>320
,p_column_identifier=>'AH'
,p_column_label=>'Effective Start Date'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595521215926501906)
,p_db_column_name=>'EFF_END_DA'
,p_display_order=>330
,p_column_identifier=>'AI'
,p_column_label=>'Effective End Date'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595521365519501907)
,p_db_column_name=>'DET_CREATED'
,p_display_order=>340
,p_column_identifier=>'AJ'
,p_column_label=>'Detail Created'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595521400496501908)
,p_db_column_name=>'DET_CREATED_BY'
,p_display_order=>350
,p_column_identifier=>'AK'
,p_column_label=>'Detail Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595521569547501909)
,p_db_column_name=>'DET_UPDATED'
,p_display_order=>360
,p_column_identifier=>'AL'
,p_column_label=>'Detail Updated'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595521610421501910)
,p_db_column_name=>'DET_UPDATED_BY'
,p_display_order=>370
,p_column_identifier=>'AM'
,p_column_label=>'Detail Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595521729637501911)
,p_db_column_name=>'LOV_DISPLAY_DESC'
,p_display_order=>380
,p_column_identifier=>'AN'
,p_column_label=>'Detail Display Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60876478453725932360)
,p_db_column_name=>'NAME_ALLOW_USER_DELETE_IND'
,p_display_order=>390
,p_column_identifier=>'AO'
,p_column_label=>'Name Allow User Delete?'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60876478511102932361)
,p_db_column_name=>'DET_ALLOW_USER_DELETE_IND'
,p_display_order=>400
,p_column_identifier=>'AP'
,p_column_label=>'Detail Allow User Delete?'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59026222710044991303)
,p_db_column_name=>'GLOBAL_LOV_IND'
,p_display_order=>410
,p_column_identifier=>'AQ'
,p_column_label=>'Global LOV?'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(62577146245695209596)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'444050'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>25
,p_report_columns=>'SELECT_ROW:NAME_ID:APP_ALIAS:LOV_NA:LOV_DESC:NAME_SORT_ORDER:NAME_CREATED:NAME_CREATED_BY:NAME_UPDATED:NAME_UPDATED_BY:NAME_ACTIV_IND:NAME_ALLOW_USER_DELETE_IND:DETAIL_ID:LOV_DISPLAY_VAL:LOV_DISPLAY_DESC:DET_SORT_ORDER_NO:DET_ACTIVE_IND:DET_ALLOW_USE'
||'R_DELETE_IND:EFF_START_DA:EFF_END_DA:DET_CREATED:DET_CREATED_BY:DET_UPDATED:DET_UPDATED_BY'
,p_sort_column_1=>'APP_ALIAS'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'LOV_NA'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'DET_SORT_ORDER_NO'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'LOV_DISPLAY_VAL'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(62912588413757427583)
,p_name=>'Show Collection 1 (unparsed)'
,p_parent_plug_id=>wwv_flow_imp.id(62574618866313461365)
,p_template=>2664334895415463485
,p_display_sequence=>99
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  seq_id, CLOB001',
'from APEX_COLLECTIONS where COLLECTION_NAME = ''P4_REST_RESULTS'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60596064692838690176)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Seq id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60596065019980690177)
,p_query_column_id=>2
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>2
,p_column_heading=>'Clob001'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62683729366863396996)
,p_plug_name=>'MY Shared LOVs (&AI_LOCAL_ENV.)'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    name.ID as name_id,',
'    name.APP_ALIAS,',
'    name.LOV_NA,',
'    name.LOV_DESC,',
'    name.sort_order_no as name_sort_order_no,',
'    name.global_lov_ind,',
'    name.ALLOW_USER_DELETE_IND as name_allow_user_delete_ind,',
'    name.created as name_created,',
'    name.created_by as name_created_by,',
'    name.updated as name_updated,',
'    name.updated_by as name_updated_by,',
'    name.active_ind as name_active_ind,',
'    det.ID as detail_id,',
'    det.LOV_DISPLAY_VAL,',
'    det.lov_display_desc,',
'    det.sort_order_no as det_sort_order_no,',
'    det.active_ind as det_active_ind,',
'    det.ALLOW_USER_DELETE_IND as det_allow_user_delete_ind,',
'    det.eff_start_da,',
'    det.eff_end_da,',
'    det.created as det_created,',
'    det.created_by as det_created_by,',
'    det.updated as det_updated,',
'    det.updated_by as det_updated_by',
'from APXSHR_LOV_DETAILS det',
'join APXSHR_LOV_NAME name on name.ID = det.LOV_NAME_ID ',
'                         and name.APP_ALIAS = :P4_APP_ALIAS'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(62683729807634397000)
,p_name=>'Program Controls'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV'
,p_enable_mail_download=>'N'
,p_csv_output_separator=>','
,p_csv_output_enclosed_by=>'"'
,p_detail_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7:P7_ID,P7_APP_ALIAS:#NAME_ID#,#APP_ALIAS#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'J11740'
,p_internal_uid=>2132072021108083739
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60596070461215690186)
,p_db_column_name=>'APP_ALIAS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Alias'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'APP_ALIAS'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595517110620501865)
,p_db_column_name=>'NAME_ID'
,p_display_order=>13
,p_column_identifier=>'T'
,p_column_label=>'Name ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595517212985501866)
,p_db_column_name=>'LOV_NA'
,p_display_order=>23
,p_column_identifier=>'U'
,p_column_label=>'LOV Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595517373466501867)
,p_db_column_name=>'LOV_DESC'
,p_display_order=>33
,p_column_identifier=>'V'
,p_column_label=>'LOV Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595517472184501868)
,p_db_column_name=>'NAME_SORT_ORDER_NO'
,p_display_order=>43
,p_column_identifier=>'W'
,p_column_label=>'Name Sort Order'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595517656377501870)
,p_db_column_name=>'NAME_CREATED'
,p_display_order=>63
,p_column_identifier=>'Y'
,p_column_label=>'Name Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595517758633501871)
,p_db_column_name=>'NAME_CREATED_BY'
,p_display_order=>73
,p_column_identifier=>'Z'
,p_column_label=>'Name Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595517841970501872)
,p_db_column_name=>'NAME_UPDATED'
,p_display_order=>83
,p_column_identifier=>'AA'
,p_column_label=>'Name Updated'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595517927855501873)
,p_db_column_name=>'NAME_UPDATED_BY'
,p_display_order=>93
,p_column_identifier=>'AB'
,p_column_label=>'Name Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595517988569501874)
,p_db_column_name=>'NAME_ACTIVE_IND'
,p_display_order=>103
,p_column_identifier=>'AC'
,p_column_label=>'LOV Name Active?'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595518118226501875)
,p_db_column_name=>'DETAIL_ID'
,p_display_order=>113
,p_column_identifier=>'AD'
,p_column_label=>'Detail ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595518258011501876)
,p_db_column_name=>'LOV_DISPLAY_VAL'
,p_display_order=>123
,p_column_identifier=>'AE'
,p_column_label=>'LOV Detail Display Value'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595518338260501877)
,p_db_column_name=>'LOV_DISPLAY_DESC'
,p_display_order=>133
,p_column_identifier=>'AF'
,p_column_label=>'Display Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595518449085501878)
,p_db_column_name=>'DET_SORT_ORDER_NO'
,p_display_order=>143
,p_column_identifier=>'AG'
,p_column_label=>'Detail Sort Order'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595518562636501879)
,p_db_column_name=>'DET_ACTIVE_IND'
,p_display_order=>153
,p_column_identifier=>'AH'
,p_column_label=>'Detail Active?'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595518675846501880)
,p_db_column_name=>'EFF_START_DA'
,p_display_order=>163
,p_column_identifier=>'AI'
,p_column_label=>'Eff Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595518692477501881)
,p_db_column_name=>'EFF_END_DA'
,p_display_order=>173
,p_column_identifier=>'AJ'
,p_column_label=>'Eff End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595518863097501882)
,p_db_column_name=>'DET_CREATED'
,p_display_order=>183
,p_column_identifier=>'AK'
,p_column_label=>'Detail Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595518962510501883)
,p_db_column_name=>'DET_CREATED_BY'
,p_display_order=>193
,p_column_identifier=>'AL'
,p_column_label=>'Detail Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595519060002501884)
,p_db_column_name=>'DET_UPDATED'
,p_display_order=>203
,p_column_identifier=>'AM'
,p_column_label=>'Detail Updated'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60595519167543501885)
,p_db_column_name=>'DET_UPDATED_BY'
,p_display_order=>213
,p_column_identifier=>'AN'
,p_column_label=>'Detail Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60876478250397932358)
,p_db_column_name=>'NAME_ALLOW_USER_DELETE_IND'
,p_display_order=>223
,p_column_identifier=>'AO'
,p_column_label=>'Name Allow User Delete?'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60876478314430932359)
,p_db_column_name=>'DET_ALLOW_USER_DELETE_IND'
,p_display_order=>233
,p_column_identifier=>'AP'
,p_column_label=>'Detail Allow User Delete?'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59026222620603991302)
,p_db_column_name=>'GLOBAL_LOV_IND'
,p_display_order=>243
,p_column_identifier=>'AQ'
,p_column_label=>'Global LOV?'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(62683736563534397034)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'444186'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'NAME_ID:APP_ALIAS:LOV_NA:LOV_DESC:NAME_SORT_ORDER_NO:NAME_ALLOW_USER_DELETE_IND:NAME_CREATED:NAME_CREATED_BY:NAME_UPDATED:NAME_UPDATED_BY:NAME_ACTIVE_IND:DETAIL_ID:LOV_DISPLAY_VAL:LOV_DISPLAY_DESC:DET_SORT_ORDER_NO:DET_ACTIVE_IND:DET_ALLOW_USER_DELET'
||'E_IND:EFF_START_DA:EFF_END_DA:DET_CREATED:DET_CREATED_BY:DET_UPDATED:DET_UPDATED_BY'
,p_sort_column_1=>'LOV_NA'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'DET_SORT_ORDER_NO'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'LOV_DISPLAY_VAL'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62908571388553684523)
,p_plug_name=>'Import LOVs / DETAILS by ALIAS'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Find LOVs and DETAILS by ALIAS in the Local (&AI_LOCAL_ENV.) and Remote (&AI_REMOTE_ENV.) environments.',
'<ol>',
'<li>Type the ALIAS (case sensitive) below and click the "Search by Alias" button.',
'<li>RESTful Service performs a LIKE search, so you can type things such as MY_ALIAS% to find all Controls starting with MY_ALIAS.  Don''t include quotes around your search string.</li>',
'<li>Select the checkboxes for the Options you want to Add or Replace in &AI_LOCAL_ENV..',
'<li>Click the "Insert / Update Selected Options" button.',
'</ol>',
'<p style="color:red; font-weight:bold;">NOTE regarding changing the NAME (LOV_NA) of an LOV or Display Value (LOV_DISPLAY_VAL) of DETAIL item.  If you change the name of an LOV or a DETAIL item in the remote (&AI_REMOTE_ENV.) environment, this automa'
||'tion cannot recognize the change and will treat those items as NEW in the local (&AI_LOCAL_ENV.) environment.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60596065770720690179)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(62908571388553684523)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search by Alias'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60596063222272690160)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(62574618866313461365)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Next Page'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P4_URL_NEXT_PAGE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-arrow-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60596063661342690162)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(62574618866313461365)
,p_button_name=>'INSERT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Insert / Update Selected Options'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'   x.ID',
'/*',
'  ,APEX_ITEM.CHECKBOX2(1,x.ID,''class="my_checkbox"'',NULL,NULL,''f01_''||x.ID) as select_row',
'  ,x.app_id',
'  ,x.app_alias',
'  ,x.opt_no',
'  ,x.opt_name  -- looks like JSON output gets escaped by default',
'  ,x.opt_val_varchar',
'  ,x.opt_val_number',
'  ,x.opt_val_boolean',
'  ,x.opt_val_clob',
'  ,x.opt_val_date',
'  ,to_char(to_date( x.opt_val_date, ''YYYY-MM-DD"T"HH24:MI:SS"Z"'' ),''MM-DD-YYYY HH:MI:SS pm'') as opt_val_date_formatted',
'  ,x.opt_val_timestamp',
'--   ,apxshr_package.convert_json_text(x.OPT_VAL_CLOB, ''FROM'') OPT_VAL_CLOB    -- may not be necessary. Looks like JSON is automaticall escaped and un-escaped by these processes',
'*/',
'from apex_collections c, ',
'     xmltable (',
'         ''/json/items/row''',
'         passing apex_json.to_xmltype( c.clob001 )',
'         columns',
'           ID  NUMBER    path ''id''',
'         /*',
'          ,app_id  NUMBER    path ''app_id''',
'          ,app_alias  VARCHAR2(100)   path ''app_alias''',
'          ,opt_no  NUMBER    path ''opt_no''',
'          ,opt_name   VARCHAR2(100)   path ''opt_name''',
'          ,opt_val_varchar VARCHAR2(500)   path ''opt_val_varchar''',
'          ,opt_val_number  NUMBER   path ''opt_val_number''',
'          ,opt_val_boolean VARCHAR2(100)  path ''opt_val_boolean''',
'          ,opt_val_clob  CLOB path ''opt_val_clob''',
'          ,opt_val_date  VARCHAR2(100)  path ''opt_val_date''',
'          ,opt_val_timestamp VARCHAR2(100)  path ''opt_val_timestamp''',
'         */',
'              ) x',
'where c.collection_name = ''P4_REST_RESULTS'''))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-plus-circle'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60596063987435690163)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(62574618866313461365)
,p_button_name=>'PREV'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Previous Page'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P4_URL_PREV_PAGE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-arrow-left'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60596066134879690179)
,p_name=>'P4_APP_ALIAS'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(62908571388553684523)
,p_prompt=>'App Alias (Case Sensitive):'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60596066558881690181)
,p_name=>'P4_ROWS_UPDATED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(62908571388553684523)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60596066929967690182)
,p_name=>'P4_ROWS_INSERTED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(62908571388553684523)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60596067310985690182)
,p_name=>'P4_SHOW_PAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(62908571388553684523)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60596068182541690183)
,p_name=>'P4_THIS_URL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(62908571388553684523)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60596068557147690183)
,p_name=>'P4_URL_NEXT_PAGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(62908571388553684523)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60596068979245690184)
,p_name=>'P4_URL_PREV_PAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(62908571388553684523)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60596079911404690207)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(62574618866313461365)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60596080449969690211)
,p_event_id=>wwv_flow_imp.id(60596079911404690207)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(62574618866313461365)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Because this page has an Interactive Report, this jQuery has to be in 2 places:',
'   1. Here when page loads so that the "Select All" box works when the page loads',
'   2. As a Dynamic Action after the Interactive Report refreshes (like after a filter is applied),',
'      otherwise the Select All stops working when other filters are applied',
'*/',
'//select all checkboxes',
'$("#select_all").change(function(){  //"select all" change ',
'    $(".my_checkbox").prop(''checked'', $(this).prop("checked")); //change all ".my_checkbox" checked status',
'});',
'',
'//".my_checkbox" change ',
'',
'$(''.my_checkbox'').change(function(){ ',
'	//uncheck "select all", if one of the listed checkbox item is unchecked',
' ',
'    if(false == $(this).prop("checked")){ //if this item is unchecked',
'        $("#select_all").prop(''checked'', false); //change "select all" checked status to false',
'    }',
'    ',
'	//check "select all" if all checkbox items are checked',
'	if ($(''.my_checkbox:checked'').length == $(''.my_checkbox'').length ){',
'		$("#select_all").prop(''checked'', true);',
'	}',
'',
'});'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60596077912227690199)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear SHOW/Prev/Next'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P4_SHOW_PAGE := NULL;',
':P4_THIS_URL := NULL;',
':P4_URL_NEXT_PAGE := NULL;',
':P4_URL_PREV_PAGE := NULL;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(60596065770720690179)
,p_internal_uid=>1640640413249364032
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60596078369941690201)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SHOW_PAGE = Prev'
,p_process_sql_clob=>':P4_SHOW_PAGE := ''prev'';'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(60596063987435690163)
,p_internal_uid=>1640640870963364034
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60596078760287690201)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SHOW_PAGE = Next'
,p_process_sql_clob=>':P4_SHOW_PAGE := ''next'';'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(60596063222272690160)
,p_internal_uid=>1640641261309364034
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60596079546385690202)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch Data Into Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'--    g_url_port VARCHAR2(4) := OWA_UTIL.get_cgi_env (''SERVER_PORT'');',
'    l_response clob;',
'    l_default_endpoint VARCHAR2(1000) := ''http://apexp.mydomain.com:7070/apex/security/shared_lovs/name_and_details/by_alias/'';',
'    l_parameter VARCHAR2(100) := q''#TEST#'';',
'    my_json clob;',
'    my_json_t apex_json.t_values;',
'    l_paths apex_t_varchar2;      ',
'    ',
'FUNCTION get_MYAUTH return varchar2 is     ',
'      ',
'  l_cookie owa_cookie.cookie;     ',
'  l_MYAUTH varchar2(255);     ',
'      ',
'BEGIN     ',
'  begin     ',
'    l_cookie := owa_cookie.get(''MYAUTH'');     ',
'    l_MYAUTH := l_cookie.vals(1);     ',
'    l_MYAUTH := replace(l_MYAUTH,CHR(34));     ',
'      ',
'    exception when no_data_found then l_MYAUTH := ''No MYAUTH Cookie'';     ',
'  end;     ',
'      ',
'  RETURN l_MYAUTH;  ',
'END get_MYAUTH;',
'',
'begin',
'    --if APXSHR_PACKAGE.staging_port   ',
'    if :AI_LOCAL_ENV = ''STAGING''',
'    then',
'        -- running in STAGING, get ROWS from PRODUCTION',
'        l_default_endpoint := APXSHR_PGM_OPTS.rtn_pgm_opt (''SHARED_LOVS'', 3, ''text''); -- ''http://apexp.mydomain.com:7070/apex/security/shared_lovs/name_and_details/by_alias/'';   ',
'--        l_default_endpoint := ''http://apexp.mydomain.com:7070/apex/hq001/PGMCNTRL/options/all_options2'';  -- testing',
'    --elsif APXSHR_PACKAGE.production_port',
'    elsif :AI_LOCAL_ENV = ''PRODUCTION''',
'        -- running in PRODUCTION, get ROWS from STAGING',
'    then        ',
'        l_default_endpoint := APXSHR_PGM_OPTS.rtn_pgm_opt (''SHARED_LOVS'', 4, ''text''); -- ''http://apexp.mydomain.com:7170/apex/security/shared_lovs/name_and_details/by_alias//'';  -- why extra / ??',
'    end if;',
'    ',
'    l_parameter := :P4_APP_ALIAS;  -- use Page Item Value for search.',
'    ',
'    :P4_THIS_URL := case ',
'                          -- TODO: replace with your page item names here',
'                          when :P4_SHOW_PAGE = ''next'' and :P4_URL_NEXT_PAGE is not null then :P4_URL_NEXT_PAGE',
'                          when :P4_SHOW_PAGE = ''prev'' and :P4_URL_PREV_PAGE is not null then :P4_URL_PREV_PAGE',
'                          else nvl( :P4_THIS_URL, l_default_endpoint || sys.utl_url.escape(l_parameter) )  ',
'                      end;',
'',
'    :P4_SHOW_PAGE := null;',
'    ',
'    -- Set HTTP Request Headers',
'    apex_web_service.g_request_headers.delete;',
'',
'    apex_web_service.g_request_headers(1).name  := q''#app_alias#'';',
'    ',
'    apex_debug.info(''l_parameter=%s. MYAUTH=%s. page=%s'', l_parameter, get_MYAUTH(), :P4_THIS_URL);',
'    ',
'    apex_web_service.g_request_headers(1).value := l_parameter;',
'    --apex_web_service.g_request_headers(2).name  := q''#MYAUTH#'';',
'    --apex_web_service.g_request_headers(2).value := get_MYAUTH ();   ',
'    --apex_web_service.g_request_headers(3).name  := ''page'';',
'    --apex_web_service.g_request_headers(3).value := :P4_THIS_URL;   ',
'    apex_web_service.g_request_headers(2).name  := ''page'';',
'    apex_web_service.g_request_headers(2).value := :P4_THIS_URL;       ',
'',
'    -- load REST response into a collection',
'    l_response := apex_web_service.make_rest_request (',
'        p_url => :P4_THIS_URL,',
'        p_http_method      => ''GET'') ;',
'',
'    -- create & populate collection with JSON response',
'    apex_collection.create_or_truncate_collection( ''P4_REST_RESULTS'' );',
'    apex_collection.add_member(',
'        p_collection_name => ''P4_REST_RESULTS'',',
'        p_clob001 =>         l_response );',
'',
'--  initialize the links',
'    :P4_URL_NEXT_PAGE := NULL;',
'    :P4_URL_PREV_PAGE := NULL;  ',
'    ',
'--  set pagination variables',
'/*  Old way - APEX REST Services',
'    select',
'        x.next_page, ',
'        coalesce( x.prev_page, x.previous_page ) ',
'      -- TODO: replace with your page item names here',
'      into :P4_URL_NEXT_PAGE, :P4_URL_PREV_PAGE',
'    from apex_collections c, xmltable( ',
'        ''/json''',
'        passing apex_json.to_xmltype( c.clob001 )',
'        columns',
'            next_page     varchar2(500) path ''next/_ref'',',
'            prev_page     varchar2(500) path ''prev/_ref'',',
'            previous_page varchar2(500) path ''previous/_ref''',
'    ) x',
'    where c.collection_name = ''P4_REST_RESULTS'';',
'*/',
'--  Parse the json return',
'    apex_json.parse(my_json_t, l_response);',
'--  Get NEXT link    ',
'    l_paths := apex_json.find_paths_like (',
'        p_values         => my_json_t,',
'        p_return_path => ''links[%]'',',
'        p_subpath       => ''.rel'',',
'        p_value           => ''next'' );',
'    ',
'    for i in 1 .. l_paths.count ',
'    loop',
'        :P4_URL_NEXT_PAGE := apex_json.get_varchar2(p_values => my_json_t, p_path => l_paths(i)||''.href'') ;        ',
'--        dbms_output.put_line(apex_json.get_varchar2(p_values => my_json_t, p_path => l_paths(i)||''.href'')); ',
'--        apex_debug.info(apex_json.get_varchar2(p_values => my_json_t, p_path => l_paths(i)||''.href''));',
'    end loop;    ',
'    ',
'    apex_debug.info('':P4_URL_NEXT_PAGE=%s'',:P4_URL_NEXT_PAGE);  ',
'    ',
'--    apex_json.parse(my_json_t, l_response);',
'--  Get PREV link',
'    l_paths := apex_json.find_paths_like (',
'        p_values         => my_json_t,',
'        p_return_path => ''links[%]'',',
'        p_subpath       => ''.rel'',',
'        p_value           => ''prev'' );',
'    ',
'    for i in 1 .. l_paths.count ',
'    loop',
'--        :P4_URL_PREV_PAGE := :P4_URL_PREV_PAGE || apex_json.get_varchar2(p_values => my_json_t, p_path => l_paths(i)||''.href'') ;',
'        :P4_URL_PREV_PAGE := apex_json.get_varchar2(p_values => my_json_t, p_path => l_paths(i)||''.href'') ;        ',
'        dbms_output.put_line(apex_json.get_varchar2(p_values => my_json_t, p_path => l_paths(i)||''.href'')); ',
'        apex_debug.info(apex_json.get_varchar2(p_values => my_json_t, p_path => l_paths(i)||''.href''));',
'    end loop;    ',
'    ',
'    apex_debug.info('':P4_URL_PREV_PAGE=%s'',:P4_URL_PREV_PAGE);  ',
'    ',
'--  create collection for parsed results',
'    apex_collection.create_or_truncate_collection( ''P4_PARSED_RESULTS'' );',
'',
'--  parse results into new collection    ',
'    for c1 in (',
'                select ',
'                   x.name_id',
'                  ,x.app_alias',
'                  ,x.lov_na',
'                  ,x.lov_desc  -- looks like JSON output gets escaped by default, no need to "un-parse"',
'                  ,x.name_sort_order_no',
'                  ,x.global_lov_ind',
'                  ,x.name_allow_user_delete_ind',
'                  ,x.name_created',
'                  --,to_char(to_date( x.name_created, ''YYYY-MM-DD HH24:MI:SS'' ),''MM-DD-YYYY HH:MI:SS pm'') as name_created_formatted    ',
'                  ,to_char(to_date( x.name_created, ''YYYY-MM-DD"T"HH24:MI:SS"Z"'' ),''MM-DD-YYYY HH:MI:SS pm'') as name_created_formatted                                    ',
'                  ,x.name_created_by',
'                  ,x.name_updated',
'                  --,to_char(to_date( x.name_updated, ''YYYY-MM-DD HH24:MI:SS'' ),''MM-DD-YYYY HH:MI:SS pm'') as name_updated_formatted',
'                  ,to_char(to_date( x.name_updated, ''YYYY-MM-DD"T"HH24:MI:SS"Z"'' ),''MM-DD-YYYY HH:MI:SS pm'') as name_updated_formatted',
'                  ,x.name_updated_by',
'                  ,x.name_active_ind',
'                  ,x.detail_id',
'                  ,x.lov_display_val',
'                  ,x.lov_display_desc ',
'                  ,x.det_sort_order_no ',
'                  ,x.det_active_ind ',
'                  ,x.det_allow_user_delete_ind',
'                  ,x.eff_start_da ',
'                  --,to_char(to_date( x.eff_start_da, ''YYYY-MM-DD HH24:MI:SS'' ),''MM-DD-YYYY HH:MI:SS pm'') as eff_start_da_formatted',
'                  ,to_char(to_date( x.eff_start_da, ''YYYY-MM-DD"T"HH24:MI:SS"Z"'' ),''MM-DD-YYYY HH:MI:SS pm'') as eff_start_da_formatted',
'                  ,x.eff_end_da',
'                  --,to_char(to_date( x.eff_end_da, ''YYYY-MM-DD HH24:MI:SS'' ),''MM-DD-YYYY HH:MI:SS pm'') as eff_end_da_formatted ',
'                  ,to_char(to_date( x.eff_end_da, ''YYYY-MM-DD"T"HH24:MI:SS"Z"'' ),''MM-DD-YYYY HH:MI:SS pm'') as eff_end_da_formatted ',
'                  ,x.det_created  ',
'                  --,to_char(to_date( x.det_created, ''YYYY-MM-DD HH24:MI:SS'' ),''MM-DD-YYYY HH:MI:SS pm'') as det_created_formatted ',
'                  ,to_char(to_date( x.det_created, ''YYYY-MM-DD"T"HH24:MI:SS"Z"'' ),''MM-DD-YYYY HH:MI:SS pm'') as det_created_formatted                        ',
'                  ,x.det_created_by  ',
'                  ,x.det_updated     ',
'                  --,to_char(to_date( x.det_updated, ''YYYY-MM-DD HH24:MI:SS'' ),''MM-DD-YYYY HH:MI:SS pm'') as det_updated_formatted ',
'                  ,to_char(to_date( x.det_updated, ''YYYY-MM-DD"T"HH24:MI:SS"Z"'' ),''MM-DD-YYYY HH:MI:SS pm'') as det_updated_formatted                   ',
'                  ,x.det_updated_by                    ',
'                from apex_collections c, ',
'                     xmltable (',
'                         ''/json/items/row''',
'                         passing apex_json.to_xmltype( c.clob001 )',
'                         columns',
'                           name_id  NUMBER    path ''name_id''',
'                          ,app_alias  VARCHAR2(500)   path ''app_alias''',
'                          ,lov_na  VARCHAR2(100)    path ''lov_na''',
'                          ,lov_desc   VARCHAR2(500)   path ''lov_desc''',
'                          ,name_sort_order_no NUMBER   path ''name_sort_order_no''',
'                          ,global_lov_ind VARCHAR2(1) path ''global_lov_ind''',
'                          ,name_allow_user_delete_ind VARCHAR2(1) path ''name_allow_user_delete_ind''',
'                          ,name_created VARCHAR2(100)  path ''name_created''                          ',
'                          ,name_created_by  VARCHAR2(255)   path ''name_created_by''',
'                          ,name_updated VARCHAR2(100)  path ''name_updated''                          ',
'                          ,name_updated_by  VARCHAR2(255)   path ''name_updated_by''',
'                          ,name_active_ind VARCHAR2(1)  path ''name_active_ind''',
'                          ,detail_id  NUMBER path ''detail_id''',
'                          ,lov_display_val  VARCHAR2(100)  path ''lov_display_val''',
'                          ,lov_display_desc VARCHAR2(500)  path ''lov_display_desc''',
'                          ,det_sort_order_no NUMBER   path ''det_sort_order_no''',
'                          ,det_active_ind VARCHAR2(1)  path ''det_active_ind''',
'                          ,det_allow_user_delete_ind VARCHAR2(1) path ''det_allow_user_delete_ind''',
'                          ,eff_start_da VARCHAR2(100)  path ''eff_start_da''',
'                          ,eff_end_da VARCHAR2(100)  path ''eff_end_da''',
'                          ,det_created VARCHAR2(100)  path ''det_created''                          ',
'                          ,det_created_by  VARCHAR2(255)   path ''det_created_by''',
'                          ,det_updated VARCHAR2(100)  path ''det_updated''                          ',
'                          ,det_updated_by  VARCHAR2(255)   path ''det_updated_by''                          ',
'                              ) x',
'                where c.collection_name = ''P4_REST_RESULTS''',
'              )',
'    loop',
'        apex_collection.add_member(',
'             p_collection_name => ''P4_PARSED_RESULTS''',
'            ,p_n001    => c1.name_id',
'            ,p_c001    => c1.app_alias',
'            ,p_c002    => c1.lov_na ',
'            ,p_c003    => c1.lov_desc',
'            ,p_n002    => c1.name_sort_order_no',
'            ,p_c010    => c1.global_lov_ind',
'            ,p_c019    => c1.name_allow_user_delete_ind',
'            ,p_c008    => c1.name_created',
'            --,p_d001    => to_date( c1.name_created_formatted, ''MM-DD-YYYY HH:MI:SS pm'' ) ',
'            ,p_d001    => to_date( c1.name_created, ''YYYY-MM-DD"T"HH24:MI:SS"Z"'' )              ',
'            ,p_c004    => c1.name_created_by',
'            ,p_c009    => c1.name_updated',
'            --,p_d002    => to_date( c1.name_updated_formatted, ''MM-DD-YYYY HH:MI:SS pm'' )',
'            ,p_d002    => to_date( c1.name_updated, ''YYYY-MM-DD"T"HH24:MI:SS"Z"'' )                ',
'            ,p_c005    => c1.name_updated_by            ',
' ',
'  ',
'            ,p_c006    => c1.name_active_ind',
'            ,p_n003    => c1.detail_id',
'            ,p_c007    => c1.lov_display_val',
'            ,p_c011    => c1.lov_display_desc ',
'            ,p_n004    => c1.det_sort_order_no ',
'            ,p_c012    => c1.det_active_ind ',
'            ,p_c020    => c1.det_allow_user_delete_ind',
'            ,p_c013    => c1.eff_start_da ',
'            --,p_d003    => to_date( c1.eff_start_da_formatted, ''MM-DD-YYYY HH:MI:SS pm'' ) ',
'            ,p_d003    => to_date( c1.eff_start_da, ''YYYY-MM-DD"T"HH24:MI:SS"Z"'' ) ',
'            ,p_c014    => c1.eff_end_da ',
'            --,p_d004    => to_date( c1.eff_end_da_formatted, ''MM-DD-YYYY HH:MI:SS pm'' ) ',
'            ,p_d004    => to_date( c1.eff_end_da, ''YYYY-MM-DD"T"HH24:MI:SS"Z"'' ) ',
'            ,p_c015    => c1.det_created  ',
'            --,p_d005    => to_date( c1.det_created_formatted, ''MM-DD-YYYY HH:MI:SS pm'' )  ',
'            ,p_d005    => to_date( c1.det_created, ''YYYY-MM-DD"T"HH24:MI:SS"Z"'' )                                        ',
'            ,p_c016    => c1.det_created_by  ',
'            ,p_c017    => c1.det_updated     ',
'            --,p_d006    => to_date( c1.detail_updated_formatted, ''MM-DD-YYYY HH:MI:SS pm'' )  -- only have 5 dates in a collection                                   ',
'            ,p_c018    => c1.det_updated_by  );',
'    end loop;',
'',
'-- APEX won''t let us use the secure port to request the REST service',
'/*',
'    :P4_URL_NEXT_PAGE := replace (:P4_URL_NEXT_PAGE, ''https://'',''http://''); ',
'    :P4_URL_NEXT_PAGE := replace (:P4_URL_NEXT_PAGE, '':7670/'','':7170/'');    ',
'    :P4_URL_NEXT_PAGE := replace (:P4_URL_NEXT_PAGE, '':7570/'','':7070/'');   ',
'    :P4_URL_PREV_PAGE := replace (:P4_URL_PREV_PAGE, ''https://'',''http://''); ',
'    :P4_URL_PREV_PAGE := replace (:P4_URL_PREV_PAGE, '':7670/'','':7170/'');    ',
'    :P4_URL_PREV_PAGE := replace (:P4_URL_PREV_PAGE, '':7570/'','':7070/''); ',
'*/    ',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1640642047407364035
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60596079146464690201)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Selected Items'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_rowcount NUMBER := 0;',
'    l_update_count NUMBER :=0;',
'    l_insert_count NUMBER :=0;',
'    l_commit_count NUMBER :=0;',
'',
'    l_lov_name APXSHR_LOV_NAME%ROWTYPE;',
'    l_lov_details APXSHR_LOV_DETAILS%ROWTYPE;',
'',
'BEGIN',
'    apex_collection.create_or_truncate_collection( ''P4_SELECTED_RESULTS'' );',
'',
'--  first we need to get all the SELECTED items on the page and copy them to a separate collection',
'    for i in 1..APEX_APPLICATION.G_F01.COUNT',
'    loop',
'        begin -- select',
'            select ',
'                 n001    name_ID',
'                ,c001    app_alias',
'                ,c002    lov_na ',
'                ,c003    lov_desc',
'                ,n002    name_sort_order',
'                ,c010    global_lov_ind  ',
'                ,d001 --to_char( d001, ''MM-DD-YYYY HH:MI:SS pm'') as name_created   ',
'                ,c004    name_created_by',
'                ,d002 --to_char( d002, ''MM-DD-YYYY HH:MI:SS pm'') as name_updated     ',
'                ,c005   name_updated_by ',
'                ,c006   name_activ_ind',
'                ,n003   detail_id',
'                ,c007   lov_display_val',
'                ,c011   lov_display_desc',
'                ,n004   det_sort_order_no',
'                ,c012   det_active_ind',
'                ,d003 --to_char( d003, ''MM-DD-YYYY HH:MI:SS pm'') as eff_start_da',
'                ,d004 --to_char( d004, ''MM-DD-YYYY HH:MI:SS pm'') as eff_end_da',
'                ,d005 --to_char( d005, ''MM-DD-YYYY HH:MI:SS pm'') as det_created',
'                ,c016 as det_created_by',
'                --,to_date(c017, ''YYYY-MM-DD HH24:MI:SS'') as det_updated',
'                ,to_date(c017, ''YYYY-MM-DD"T"HH24:MI:SS"Z"'') as det_updated               ',
'                ,c018 as det_updated_by',
'                ,c019 as name_allow_user_delete_ind',
'                ,c020 as det_allow_user_delete_ind',
'            into',
'                 l_lov_name.ID',
'                ,l_lov_name.app_alias',
'                ,l_lov_name.lov_na ',
'                ,l_lov_name.lov_desc',
'                ,l_lov_name.sort_order_no',
'                ,l_lov_name.global_lov_ind  ',
'                ,l_lov_name.created   ',
'                ,l_lov_name.created_by',
'                ,l_lov_name.updated     ',
'                ,l_lov_name.updated_by ',
'                ,l_lov_name.active_ind',
'                ,l_lov_details.id',
'                ,l_lov_details.lov_display_val',
'                ,l_lov_details.lov_display_desc',
'                ,l_lov_details.sort_order_no',
'                ,l_lov_details.active_ind',
'                ,l_lov_details.eff_start_da',
'                ,l_lov_details.eff_end_da',
'                ,l_lov_details.created',
'                ,l_lov_details.created_by',
'                ,l_lov_details.updated',
'                ,l_lov_details.updated_by',
'                ,l_lov_name.allow_user_delete_ind',
'                ,l_lov_details.allow_user_delete_ind',
'            from apex_collections ',
'            where collection_name = ''P4_PARSED_RESULTS''',
'              and SEQ_ID = APEX_APPLICATION.G_F01(I);      ',
'        end;  -- select',
'',
'        apex_debug.info(''name id=%s, lov_na=%s, detail id=%s, lov_display_val=%s'',l_lov_name.id,l_lov_name.lov_na,l_lov_details.id,l_lov_details.lov_display_val);',
'',
'        apex_collection.add_member(',
'                    p_collection_name => ''P4_SELECTED_RESULTS''',
'                    ,p_n001    => l_lov_name.ID',
'                    ,p_c001    => l_lov_name.app_alias',
'                    ,p_c002    => l_lov_name.lov_na ',
'                    ,p_c003    => l_lov_name.lov_desc',
'                    ,p_n002    => l_lov_name.sort_order_no',
'                    ,p_c010    => l_lov_name.global_lov_ind',
'                    ,p_d001    => l_lov_name.created            ',
'                    ,p_c004    => l_lov_name.created_by',
'                    ,p_d002    => l_lov_name.updated              ',
'                    ,p_c005    => l_lov_name.updated_by            ',
'                    ,p_c006    => l_lov_name.active_ind',
'                    ,p_n003    => l_lov_details.id',
'                    ,p_c007    => l_lov_details.lov_display_val',
'                    ,p_c011    => l_lov_details.lov_display_desc',
'                    ,p_n004    => l_lov_details.sort_order_no ',
'                    ,p_c012    => l_lov_details.active_ind ',
'                    ,p_d003    => l_lov_details.eff_start_da',
'                    ,p_d004    => l_lov_details.eff_end_da ',
'                    ,p_d005    => l_lov_details.created                                          ',
'                    ,p_c016    => l_lov_details.created_by  ',
'                    ,p_c017    => to_char(l_lov_details.updated, ''YYYY-MM-DD HH24:MI:SS'')                                      ',
'                    ,p_c018    => l_lov_details.updated_by',
'                    ,p_C019    => l_lov_name.allow_user_delete_ind',
'                    ,p_C020    => l_lov_details.allow_user_delete_ind  );        ',
'',
'    end loop;',
'',
'    /* select distinct LOV_NA from collection.  MERGE into APXSHR_LOV_NAME */',
'    merge into APXSHR_LOV_NAME master',
'    using',
'        (',
'        select distinct  -- only want the LOV_NAME entries',
'             n001 as name_id_remote  -- this is the ID from the remote copy ',
'            ,local.ID as name_id_local',
'            ,c001 as app_alias',
'            ,c002 as lov_na',
'            ,c003 as lov_desc',
'            ,n002 as sort_order_no',
'            ,c010 as global_lov_ind',
'            ,d001 as created',
'            ,c004 as created_by',
'            ,d002 as updated',
'            ,c005 as updated_by',
'            ,c006 as active_ind',
'            ,c019 as allow_user_delete_ind',
'        from APEX_COLLECTIONS ac',
'        left outer join APXSHR_LOV_NAME local on local.LOV_NA = ac.c002  -- get the "local" ID for LOV_NA. ',
'                                             and local.APP_ALIAS = ac.C001',
'        where COLLECTION_NAME = ''P4_SELECTED_RESULTS''',
'        ) coll',
'    on (master.ID = coll.name_id_local)',
'    when MATCHED',
'    then',
'        update set',
'            APP_ALIAS = coll.app_alias,',
'            LOV_NA    = coll.lov_na,',
'            LOV_DESC  = coll.lov_desc,',
'            SORT_ORDER_NO = coll.sort_order_no,',
'            global_lov_ind = coll.global_lov_ind,',
'            CREATED =  coll.created,',
'            CREATED_BY = coll.created_by,',
'            UPDATED = coll.updated,',
'            UPDATED_BY = coll.updated_by,',
'            ACTIVE_IND = coll.active_ind,',
'            allow_user_delete_ind = coll.allow_user_delete_ind          ',
'        where ID = coll.name_id_local',
'        ',
'    when NOT MATCHED',
'    then',
'        insert ',
'            (APP_ALIAS, LOV_NA)',
'        values',
'            (coll.app_alias, coll.lov_na);',
'',
'    l_update_count := sql%rowcount;',
'',
'    /* cursor based on "selected" collection. Join APXSHR_LOV_NAME.ID & APXSHR_LOV_DETAILS.ID.  In LOOP, test DETAILS ID. If null, insert, else update. */',
'    for j in (',
'        select ',
'             n001     as name_id_remote  -- this is the ID from the remote copy ',
'            ,local_na.ID  as name_id_local',
'            ,n003     as det_id_remote',
'            ,local_det.ID as det_id_local            ',
'            ,c007     as lov_display_val',
'            ,c011     as lov_display_desc',
'            ,n004     as sort_order_no ',
'            ,c012     as active_ind ',
'            ,d003     as eff_start_da',
'            ,d004     as eff_end_da ',
'            ,d005     as created                                          ',
'            ,c016     as created_by  ',
'            ,to_date(c017, ''YYYY-MM-DD HH24:MI:SS'') as updated                                     ',
'            ,c018     as updated_by  ',
'            ,c020     as allow_user_delete_ind       ',
'        from APEX_COLLECTIONS ac',
'        left outer join APXSHR_LOV_NAME local_na on local_na.LOV_NA    = ac.c002  -- get the "local" ID for LOV_NAME row ',
'                                                and local_na.APP_ALIAS = ac.C001',
'        left outer join APXSHR_LOV_DETAILS local_det on local_det.LOV_DISPLAY_VAL = ac.c007  -- get the "local" ID for LOV_DETAILS row',
'                                                    and local_det.LOV_NAME_ID     = local_na.ID                                             ',
'        where COLLECTION_NAME = ''P4_SELECTED_RESULTS''',
'    )',
'    loop',
'        apex_debug.info(''j loop. remote name id=%s, local name id=%s, remote det id=%s, local_det_id=%s, lov_display_val=%s'',',
'                                 j.name_id_remote,  j.name_id_local,  j.det_id_remote,  j.det_id_local,  j.lov_display_val);',
'',
'        if j.det_id_local is null',
'        then',
'            insert into APXSHR_LOV_DETAILS',
'                (LOV_NAME_ID, LOV_DISPLAY_VAL, LOV_DISPLAY_DESC, SORT_ORDER_NO, ACTIVE_IND, allow_user_delete_ind, EFF_START_DA, EFF_END_DA, CREATED, CREATED_BY, UPDATED, UPDATED_BY)',
'            values',
'                (j.name_id_local, j.lov_display_val, j.lov_display_desc, j.sort_order_no, j.active_ind, j.allow_user_delete_ind, j.eff_start_da, j.eff_end_da, j.created, j.created_by, j.updated, j.updated_by);',
'',
'            l_insert_count := sql%rowcount;                ',
'        else',
'            update APXSHR_LOV_DETAILS',
'                set LOV_NAME_ID = j.name_id_local,',
'                    LOV_DISPLAY_VAL = j.lov_display_val,',
'                    LOV_DISPLAY_DESC = j.lov_display_desc, ',
'                    SORT_ORDER_NO = j.sort_order_no, ',
'                    ACTIVE_IND = j.active_ind,',
'                    EFF_START_DA = j.eff_start_da, ',
'                    EFF_END_DA = j.eff_end_da, ',
'                    CREATED = j.created, ',
'                    CREATED_BY = j.created_by, ',
'                    UPDATED = j.updated, ',
'                    UPDATED_BY = j.updated_by,',
'                    allow_user_delete_ind = j.allow_user_delete_ind',
'            where ID = j.det_id_local;  ',
'',
'            l_update_count := l_update_count + sql%rowcount;',
'        end if; -- j.det_id_local is null                               ',
'    end loop;',
'  ',
'   :P4_ROWS_UPDATED  := to_char(l_update_count,''99,990'');',
'   :P4_ROWS_INSERTED := to_char(l_insert_count,''99,990'');',
'',
'    COMMIT;',
'    ',
'END;  -- anonymous block'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(60596063661342690162)
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&P4_ROWS_UPDATED. Option(s) updated.',
'&P4_ROWS_INSERTED. Option(s) inserted.'))
,p_internal_uid=>1640641647486364034
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'LOV Maintenance'
,p_step_title=>'LOV Maintenance'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Scroll Results Only in Side Column */',
'.t-Body-side {',
'    display: flex;',
'    flex-direction: column;',
'    overflow: hidden;',
'}',
'.search-results {',
'    flex: 1;',
'    overflow: auto;',
'}',
'/* Format Search Region */',
'.search-region {',
'    border-bottom: 1px solid rgba(0,0,0,.1);',
'    flex-shrink: 0;',
'}'))
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_comment=>'n/a'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456584944943632768)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(61456157916171415561)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456586327800632769)
,p_plug_name=>'Search'
,p_region_css_classes=>'search-region padding-md'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(61456587122926632770)
,p_name=>'Master Records'
,p_template=>3371237801798025892
,p_display_sequence=>20
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID",',
'    null link_class,',
'    apex_page.get_url(p_items => ''P7_ID'', p_values => "ID") link,',
'    null icon_class,',
'    null link_attr,',
'    null icon_color_class,',
'    case when nvl(:P7_ID,''0'') = "ID"',
'      then ''is-active'' ',
'      else '' ''',
'    end list_class,',
'    substr("LOV_NA", 1, 50)||( case when length("LOV_NA") > 50 then ''...'' end ) list_title,',
'    substr("LOV_DESC", 1, 50)||( case when length("LOV_DESC") > 50 then ''...'' end ) list_text,',
'    null list_badge',
'from "APXSHR_LOV_NAME" x',
'where APP_ALIAS = :P7_APP_ALIAS',
'/*',
'where (:P7_SEARCH is null',
'        or upper(x."LOV_NA") like ''%''||upper(:P7_SEARCH)||''%''',
'        or upper(x."LOV_DESC") like ''%''||upper(:P7_SEARCH)||''%''',
'    )',
'*/',
'order by "LOV_NA"'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P7_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>2093604263195414824
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<div class="u-tC">No Records Found</div>'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456587803950632772)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_column_width=>30
,p_column_height=>1
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456588175083632772)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'Link Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456588588341632772)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'Link'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456588959623632772)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'Icon Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456589391117632772)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>5
,p_column_heading=>'Link Attr'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456589802759632773)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'Icon Color Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456590223773632773)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>7
,p_column_heading=>'List Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456590598553632773)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'List Title'
,p_use_as_row_header=>'Y'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456591000409632773)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'List Text'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456591417177632773)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'List Badge'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(61456594846426632775)
,p_name=>'LOV Name'
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'APXSHR_LOV_NAME'
,p_query_where=>'"ID" = :P7_ID'
,p_include_rowid_column=>false
,p_display_when_condition=>'P7_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515439059797523
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Record Selected'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456595512204632776)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APXSHR_LOV_NAME"',
'where "ID" is not null',
'and "ID" = :P7_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456595866372632776)
,p_query_column_id=>2
,p_column_alias=>'APP_ALIAS'
,p_column_display_sequence=>2
,p_column_heading=>'App Alias'
,p_use_as_row_header=>'Y'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APXSHR_LOV_NAME"',
'where "APP_ALIAS" is not null',
'and "ID" = :P7_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456596275818632777)
,p_query_column_id=>3
,p_column_alias=>'LOV_NA'
,p_column_display_sequence=>3
,p_column_heading=>'LOV Name'
,p_use_as_row_header=>'Y'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APXSHR_LOV_NAME"',
'where "LOV_NA" is not null',
'and "ID" = :P7_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456596724426632777)
,p_query_column_id=>4
,p_column_alias=>'LOV_DESC'
,p_column_display_sequence=>4
,p_column_heading=>'LOV Description'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APXSHR_LOV_NAME"',
'where "LOV_DESC" is not null',
'and "ID" = :P7_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456597089241632777)
,p_query_column_id=>5
,p_column_alias=>'SORT_ORDER_NO'
,p_column_display_sequence=>5
,p_column_heading=>'Sort Order'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APXSHR_LOV_NAME"',
'where "SORT_ORDER_NO" is not null',
'and "ID" = :P7_ID'))
,p_column_width=>30
,p_column_height=>1
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456597477841632777)
,p_query_column_id=>6
,p_column_alias=>'ACTIVE_IND'
,p_column_display_sequence=>6
,p_column_heading=>'Active?'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_column_default=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456597881892632777)
,p_query_column_id=>7
,p_column_alias=>'CREATED'
,p_column_display_sequence=>36
,p_column_heading=>'Created'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APXSHR_LOV_NAME"',
'where "CREATED" is not null',
'and "ID" = :P7_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456598312620632777)
,p_query_column_id=>8
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>46
,p_column_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APXSHR_LOV_NAME"',
'where "CREATED_BY" is not null',
'and "ID" = :P7_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456598663406632778)
,p_query_column_id=>9
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>56
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APXSHR_LOV_NAME"',
'where "UPDATED" is not null',
'and "ID" = :P7_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456599056496632778)
,p_query_column_id=>10
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>66
,p_column_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APXSHR_LOV_NAME"',
'where "UPDATED_BY" is not null',
'and "ID" = :P7_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59026222896546991304)
,p_query_column_id=>11
,p_column_alias=>'GLOBAL_LOV_IND'
,p_column_display_sequence=>16
,p_column_heading=>'Global LOV?'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61077024481213921281)
,p_query_column_id=>12
,p_column_alias=>'ALLOW_USER_DELETE_IND'
,p_column_display_sequence=>26
,p_column_heading=>'Allow User to Delete?'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456606193777632783)
,p_plug_name=>'Region Display Selector'
,p_region_css_classes=>'js-detail-rds'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P7_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(61456606550607632784)
,p_name=>'LOV Details'
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ID fk_value,',
'       LOV_NAME_ID,',
'       LOV_DISPLAY_VAL,',
'       LOV_DISPLAY_DESC,',
'       SORT_ORDER_NO,',
'       ACTIVE_IND,',
'       ALLOW_USER_DELETE_IND,',
'       EFF_START_DA,',
'       EFF_END_DA,',
'       CREATED,',
'       CREATED_BY,',
'       UPDATED,',
'       UPDATED_BY',
'  from APXSHR_LOV_DETAILS',
' where "LOV_NAME_ID" = :P7_ID'))
,p_display_when_condition=>'P7_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>5000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456607444442632786)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP:P9_ID:#ID#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_report_column_width=>32
,p_column_width=>30
,p_column_height=>1
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60603506019647010663)
,p_query_column_id=>2
,p_column_alias=>'FK_VALUE'
,p_column_display_sequence=>12
,p_column_heading=>'FK Value'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456607817187632786)
,p_query_column_id=>3
,p_column_alias=>'LOV_NAME_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456608146911632786)
,p_query_column_id=>4
,p_column_alias=>'LOV_DISPLAY_VAL'
,p_column_display_sequence=>22
,p_column_heading=>'LOV Display Value'
,p_use_as_row_header=>'Y'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456608573331632786)
,p_query_column_id=>5
,p_column_alias=>'LOV_DISPLAY_DESC'
,p_column_display_sequence=>32
,p_column_heading=>'LOV Display Description'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456609011949632786)
,p_query_column_id=>6
,p_column_alias=>'SORT_ORDER_NO'
,p_column_display_sequence=>42
,p_column_heading=>'Sort Order'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456609367421632786)
,p_query_column_id=>7
,p_column_alias=>'ACTIVE_IND'
,p_column_display_sequence=>52
,p_column_heading=>'Active?'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_column_default=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61077024508709921282)
,p_query_column_id=>8
,p_column_alias=>'ALLOW_USER_DELETE_IND'
,p_column_display_sequence=>62
,p_column_heading=>'Allow User Delete?'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456609781618632786)
,p_query_column_id=>9
,p_column_alias=>'EFF_START_DA'
,p_column_display_sequence=>72
,p_column_heading=>'Effective Start Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456610234006632787)
,p_query_column_id=>10
,p_column_alias=>'EFF_END_DA'
,p_column_display_sequence=>82
,p_column_heading=>'Effective End Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456610572924632787)
,p_query_column_id=>11
,p_column_alias=>'CREATED'
,p_column_display_sequence=>92
,p_column_heading=>'Created'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456611029890632787)
,p_query_column_id=>12
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>102
,p_column_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456611403111632787)
,p_query_column_id=>13
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>112
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456611842898632787)
,p_query_column_id=>14
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>122
,p_column_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456632577321632799)
,p_plug_name=>'No Record Selected'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>'No Record Selected'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P7_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456895316003397034)
,p_plug_name=>'Generate LOV Code for Application'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456895354004397035)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61456895316003397034)
,p_button_name=>'GENERATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Generate Code'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10:P10_APP_ALIAS,P10_LOV_ID,P10_APP_ID:&P7_APP_ALIAS.,&P7_ID.,&AI_LOV_APP_ID.'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456616523867632790)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61456606550607632784)
,p_button_name=>'POP_APXSHR_LOV_DETAILS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Add LOV Details'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP,9:P9_LOV_NAME_ID:&P7_ID.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456633113728632800)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61456594846426632775)
,p_button_name=>'EDIT'
,p_button_static_id=>'edit_master_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Edit'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:RP,8:P8_ID:&P7_ID.'
,p_icon_css_classes=>'fa-pencil-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61454422101633498763)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61456584944943632768)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Back'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-backward'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456585577741632769)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(61456584944943632768)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.:RESET:&DEBUG.:RP,7::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456585953219632769)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(61456584944943632768)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:RP,8:P8_APP_ALIAS:&P7_APP_ALIAS.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456586698896632770)
,p_name=>'P7_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61456586327800632769)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456605841606632783)
,p_name=>'P7_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(61456594846426632775)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456636535443639722)
,p_name=>'P7_APP_ALIAS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(61456586327800632769)
,p_prompt=>'App ALIAS'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61456633386773632800)
,p_name=>'Edit Master Record'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(61456594846426632775)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456633960018632800)
,p_event_id=>wwv_flow_imp.id(61456633386773632800)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61456594846426632775)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456896369811397045)
,p_event_id=>wwv_flow_imp.id(61456633386773632800)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61456587122926632770)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456634480617632800)
,p_event_id=>wwv_flow_imp.id(61456633386773632800)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''LOV\u0020Name\u0020updated'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61456606703955632784)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(61456606550607632784)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456617157537632790)
,p_event_id=>wwv_flow_imp.id(61456606703955632784)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61456606550607632784)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456617695141632791)
,p_event_id=>wwv_flow_imp.id(61456606703955632784)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''LOV Details updated'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61456633523145632800)
,p_name=>'Perform Search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456635262375632800)
,p_event_id=>wwv_flow_imp.id(61456633523145632800)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61456587122926632770)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456635754733632801)
,p_event_id=>wwv_flow_imp.id(61456633523145632800)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'LOV Name'
,p_page_mode=>'MODAL'
,p_step_title=>'LOV Name'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_comment=>'n/a'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456570454373632754)
,p_plug_name=>'LOV Name'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APXSHR_LOV_NAME'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456578435512632758)
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
 p_id=>wwv_flow_imp.id(61456578754626632759)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61456578435512632758)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456580401105632760)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61456578435512632758)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P8_ID IS NOT NULL',
'then',
'    if nvl(:P8_GLOBAL_LOV_IND, ''N'') = ''Y''',
'    then',
'        -- user has to be an Admin to remove a Firm-Wide LOV',
'        if apex_authorization.is_authorized(''Administration Rights'')',
'        then',
'            RETURN TRUE;',
'        else',
'            RETURN FALSE;',
'        end if;',
'    else',
'        if nvl(:P8_ALLOW_USER_DELETE_IND, ''Y'') = ''Y''',
'        then',
'            RETURN TRUE;',
'        else',
'            -- user has to be an Admin to remove a LOV marked "do not allow user deletes"',
'            if apex_authorization.is_authorized(''Administration Rights'')',
'            then',
'                RETURN TRUE;',
'            else',
'                RETURN FALSE;',
'            end if;',
'        end if; ',
'    end if;',
'else',
'    RETURN FALSE;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456580839611632760)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(61456578435512632758)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P8_ID IS NOT NULL',
'then',
'    if :P8_GLOBAL_LOV_IND = ''Y''',
'    then',
'        if apex_authorization.is_authorized(''Administration Rights'')',
'        then',
'            RETURN TRUE;',
'        else',
'            RETURN FALSE;',
'        end if;',
'    else',
'        RETURN TRUE;',
'    end if;',
'else',
'    RETURN FALSE;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456581245595632760)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(61456578435512632758)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P8_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(61456582752042632760)
,p_branch_name=>'Redirect to new'
,p_branch_action=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP:P7_ID:&P8_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(61456581245595632760)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(61456583191558632761)
,p_branch_name=>'Redirect to all'
,p_branch_action=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP,7::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(61456580401105632760)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59026222921009991305)
,p_name=>'P8_GLOBAL_LOV_IND'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(61456570454373632754)
,p_item_source_plug_id=>wwv_flow_imp.id(61456570454373632754)
,p_prompt=>'Global LOV?'
,p_source=>'GLOBAL_LOV_IND'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61077024136313921278)
,p_name=>'P8_ALLOW_USER_DELETE_IND'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(61456570454373632754)
,p_item_source_plug_id=>wwv_flow_imp.id(61456570454373632754)
,p_item_default=>'Y'
,p_prompt=>'Allow User to Delete?'
,p_source=>'ALLOW_USER_DELETE_IND'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_read_only_when=>'NOT apex_authorization.is_authorized(''Administration Rights'')'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456570848226632754)
,p_name=>'P8_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61456570454373632754)
,p_item_source_plug_id=>wwv_flow_imp.id(61456570454373632754)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456571290408632754)
,p_name=>'P8_APP_ALIAS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(61456570454373632754)
,p_item_source_plug_id=>wwv_flow_imp.id(61456570454373632754)
,p_prompt=>'App Alias'
,p_source=>'APP_ALIAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>500
,p_read_only_when=>'P8_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'text_case', 'UPPER',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456571705081632755)
,p_name=>'P8_LOV_NA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(61456570454373632754)
,p_item_source_plug_id=>wwv_flow_imp.id(61456570454373632754)
,p_prompt=>'LOV Name'
,p_source=>'LOV_NA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456572077668632755)
,p_name=>'P8_LOV_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(61456570454373632754)
,p_item_source_plug_id=>wwv_flow_imp.id(61456570454373632754)
,p_prompt=>'LOV Description'
,p_source=>'LOV_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456572505524632755)
,p_name=>'P8_SORT_ORDER_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(61456570454373632754)
,p_item_source_plug_id=>wwv_flow_imp.id(61456570454373632754)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sort Order'
,p_source=>'SORT_ORDER_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456572904446632756)
,p_name=>'P8_ACTIVE_IND'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(61456570454373632754)
,p_item_source_plug_id=>wwv_flow_imp.id(61456570454373632754)
,p_item_default=>'Y'
,p_prompt=>'Active?'
,p_source=>'ACTIVE_IND'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Display to Admin?'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456573750672632756)
,p_name=>'P8_CREATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(61456570454373632754)
,p_item_source_plug_id=>wwv_flow_imp.id(61456570454373632754)
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P8_CREATED'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456574147364632756)
,p_name=>'P8_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(61456570454373632754)
,p_item_source_plug_id=>wwv_flow_imp.id(61456570454373632754)
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P8_CREATED'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456574584237632757)
,p_name=>'P8_UPDATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(61456570454373632754)
,p_item_source_plug_id=>wwv_flow_imp.id(61456570454373632754)
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P8_CREATED'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456574976900632757)
,p_name=>'P8_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(61456570454373632754)
,p_item_source_plug_id=>wwv_flow_imp.id(61456570454373632754)
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P8_CREATED'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61456578908446632759)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(61456578754626632759)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456579681677632759)
,p_event_id=>wwv_flow_imp.id(61456578908446632759)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456581982329632760)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(61456570454373632754)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form LOV Name'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2501144483351306593
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456582377682632760)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(61456580839611632760)
,p_internal_uid=>2501144878704306593
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456581586772632760)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(61456570454373632754)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form LOV Name'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2501144087794306593
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'LOV Details'
,p_page_mode=>'MODAL'
,p_step_title=>'LOV Details'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_comment=>'n/a'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456618393907632791)
,p_plug_name=>'LOV Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APXSHR_LOV_DETAILS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456627713993632797)
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
 p_id=>wwv_flow_imp.id(61456628121963632797)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61456627713993632797)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456629737542632798)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61456627713993632797)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P9_ID IS NOT NULL',
'then',
'    -- NEED LOGIC TO BYPASS FIRM_WIDE LOVs (FUNCTION )   ',
'    if apxshr_lov_package.APXSHR_LOV_DETAILS_FIRM_WIDE ( lov_details_id_in => :P9_ID ) ',
'    then',
'        -- user has to be an Admin to remove a Firm-Wide LOV',
'        if apex_authorization.is_authorized(''Administration Rights'')',
'        then',
'            RETURN TRUE;',
'        else',
'            RETURN FALSE;',
'        end if;',
'    else',
'        if apxshr_lov_package.APXSHR_LOV_DETAILS_ALLOW_DELETE ( lov_details_id_in => :P9_ID ) -- USE THIS BECAUSE IT CHECKS THE LOV_MANE AND DETAILS',
'        then',
'            RETURN TRUE;',
'        else',
'            -- user has to be an Admin to remove a LOV marked "do not allow user deletes"',
'            if apex_authorization.is_authorized(''Administration Rights'')',
'            then',
'                RETURN TRUE;',
'            else',
'                RETURN FALSE;',
'            end if;',
'        end if; ',
'    end if; ',
'    ',
'else',
'    RETURN FALSE;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456630106703632798)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(61456627713993632797)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456630459416632798)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(61456627713993632797)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61083525919183563933)
,p_name=>'P9_ALLOW_USER_DELETE_IND'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_item_source_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_item_default=>'Y'
,p_prompt=>'Allow User to Delete?'
,p_source=>'ALLOW_USER_DELETE_IND'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_read_only_when=>'NOT apex_authorization.is_authorized(''Administration Rights'')'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456618826381632792)
,p_name=>'P9_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_item_source_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456619182813632792)
,p_name=>'P9_LOV_NAME_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_item_source_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_source=>'LOV_NAME_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456619574957632792)
,p_name=>'P9_LOV_DISPLAY_VAL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_item_source_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_prompt=>'LOV Display Value'
,p_source=>'LOV_DISPLAY_VAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456619986305632792)
,p_name=>'P9_LOV_DISPLAY_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_item_source_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_prompt=>'LOV Display Description'
,p_source=>'LOV_DISPLAY_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456620424617632793)
,p_name=>'P9_SORT_ORDER_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_item_source_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sort Order'
,p_source=>'SORT_ORDER_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456620827153632793)
,p_name=>'P9_ACTIVE_IND'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_item_source_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_item_default=>'Y'
,p_prompt=>'Active?'
,p_source=>'ACTIVE_IND'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Display to Admin?'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456621730056632794)
,p_name=>'P9_EFF_START_DA'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_item_source_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_prompt=>'Effective Start Date'
,p_source=>'EFF_START_DA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'max_static', '',
  'min_date', 'NONE',
  'min_static', '',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456622048149632794)
,p_name=>'P9_EFF_END_DA'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_item_source_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_prompt=>'Effective End Date'
,p_source=>'EFF_END_DA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'max_static', '',
  'min_date', 'NONE',
  'min_static', '',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456622525352632794)
,p_name=>'P9_CREATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_item_source_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_prompt=>'Created'
,p_format_mask=>'MM/DD/YY HH24:MI:SS'
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P9_CREATED'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456622915564632795)
,p_name=>'P9_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_item_source_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P9_CREATED'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456623267478632795)
,p_name=>'P9_UPDATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_item_source_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_prompt=>'Updated'
,p_format_mask=>'MM/DD/YY HH24:MI:SS'
,p_source=>'UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P9_CREATED'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456623730147632795)
,p_name=>'P9_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_item_source_plug_id=>wwv_flow_imp.id(61456618393907632791)
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P9_CREATED'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61456628164800632797)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(61456628121963632797)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456628987956632798)
,p_event_id=>wwv_flow_imp.id(61456628164800632797)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456631337710632799)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(61456618393907632791)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form LOV Details'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2501193838732306632
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456631714079632799)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_01=>'P9_ID,REQUEST'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>2501194215101306632
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456630899460632799)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(61456618393907632791)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form LOV Details'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2501193400482306632
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Generate LOV Code for App'
,p_page_mode=>'MODAL'
,p_step_title=>'Generate LOV Code for App'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// This function called by Dynamic Actions on page ("COPY_*" buttons)',
'function copyText(id) {',
'  var textToCopy = document.getElementById(id);',
'  navigator.clipboard.writeText(textToCopy.value)',
'    .then(() => {',
'      alert("LOV copied to clipboard");      ',
'    })',
'    .catch(err => {',
'      console.error(''Failed to copy: '', err);',
'    });',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1200'
,p_page_comment=>'n/a'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61454422308034498765)
,p_plug_name=>'List Attributes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61454422446403498766)
,p_plug_name=>'Code Generated'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-top-md'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'(:P10_LOV_ACTIVE IS NOT NULL) OR (:P10_LOV_ALL IS NOT NULL)'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61012497823594229194)
,p_plug_name=>'LOV for Active Rows'
,p_parent_plug_id=>wwv_flow_imp.id(61454422446403498766)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61012497942321229195)
,p_plug_name=>'LOV for All Rows'
,p_parent_plug_id=>wwv_flow_imp.id(61454422446403498766)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61012497742818229193)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61012497823594229194)
,p_button_name=>'ADD_ACTIVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add LOV to App (Dev / Test Only)'
,p_button_position=>'NEXT'
,p_button_condition=>'APXSHR_PACKAGE.staging_port OR apex_authorization.is_authorized(''Administration Rights'')'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_required_patch=>wwv_flow_imp.id(109423709681481748187)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456894304707397024)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61454422308034498765)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Back'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-backward'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61012498033865229196)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61012497942321229195)
,p_button_name=>'ADD_ALL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add LOV to App  (Dev / Test Only)'
,p_button_position=>'NEXT'
,p_button_condition=>'APXSHR_PACKAGE.staging_port OR apex_authorization.is_authorized(''Administration Rights'')'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_required_patch=>wwv_flow_imp.id(109423709681481748187)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456894171103397023)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61454422308034498765)
,p_button_name=>'GENERATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Generate SQL'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-calculator'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87288207844683380817)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61012497823594229194)
,p_button_name=>'DOWNLOAD_ACTIVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Download LOV Code'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87288207923383380818)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(61012497942321229195)
,p_button_name=>'DOWNLOAD_ALL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Download LOV Code'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87288209537161380834)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(61012497823594229194)
,p_button_name=>'COPY_ACTIVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Copy'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-copy'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87288210095431380839)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(61012497942321229195)
,p_button_name=>'COPY_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Copy'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-copy'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(61456896082484397042)
,p_branch_name=>'Default'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61012498921280229205)
,p_name=>'P10_ACTIVE_LOV_NA'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_imp.id(61012497823594229194)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
'     ''APXSHR_'' || replace(upper(lov_na),'' '',''_'')',
'from APXSHR_LOV_NAME ',
'where ID = :P10_LOV_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'LOV Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61012499076695229206)
,p_name=>'P10_ALL_LOV_NA'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_imp.id(61012497942321229195)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
'     ''APXSHR_'' || replace(upper(lov_na),'' '',''_'')||''_ALL''',
'from APXSHR_LOV_NAME ',
'where ID = :P10_LOV_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'LOV Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61012499169045229207)
,p_name=>'P10_APP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(61454422446403498766)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    application_id',
'from apex_applications',
'where ALIAS = :P10_APP_ALIAS'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'App ID to receive Generated Code'
,p_placeholder=>'Start typing any part of Application Name or ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    application_name || '', #'' || application_id || '', Alias='' || alias as D,',
'    application_id as R',
'from apex_applications'))
,p_lov_display_null=>'YES'
,p_cSize=>60
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_imp.id(109423709681481748187)
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
 p_id=>wwv_flow_imp.id(61012499440207229210)
,p_name=>'P10_LOV_ERROR_MESSAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61454422446403498766)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61454422231672498764)
,p_name=>'P10_APP_ALIAS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61454422308034498765)
,p_prompt=>'App ALIAS'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61454422471278498767)
,p_name=>'P10_LOV_ACTIVE'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_imp.id(61012497823594229194)
,p_prompt=>'LOV for Active Rows'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>10
,p_grid_column=>1
,p_grid_label_column_span=>0
,p_display_when=>'P10_LOV_ACTIVE'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61454422549736498768)
,p_name=>'P10_LOV_ALL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(61012497942321229195)
,p_prompt=>'LOV for ALL Rows'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>10
,p_grid_label_column_span=>0
,p_display_when=>'P10_LOV_ALL'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456893803044397019)
,p_name=>'P10_LOV_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(61454422308034498765)
,p_prompt=>'LOV Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'APXSHR_LOV_NA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    LOV_NA,',
'    ID',
'from APXSHR_LOV_NAME    '))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456893923138397020)
,p_name=>'P10_ACTIVE_OR_EFF_DA'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(61454422308034498765)
,p_prompt=>'Use Active Indicator Or Effective Date?'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Active Indicator;A,Effective Dates;E,Neither - Generate ALL rows;N'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456894046285397021)
,p_name=>'P10_CREATE_ACTIVE_ONLY_LIST'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(61454422308034498765)
,p_item_default=>'Y'
,p_prompt=>'Create List to show only ACTIVE rows (for Select Lists)?'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;Y,No;N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456894139676397022)
,p_name=>'P10_CREATE_ALL_LIST'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(61454422308034498765)
,p_item_default=>'Y'
,p_prompt=>'Create List to show ALL rows (for Reports)?'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;Y,No;N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(61012499278034229208)
,p_validation_name=>'LOV_NA not null'
,p_validation_sequence=>10
,p_validation=>'P10_ACTIVE_LOV_NA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a value for this LOV!'
,p_when_button_pressed=>wwv_flow_imp.id(61012497742818229193)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(61012499292031229209)
,p_validation_name=>'LOV_NA_ALL not null'
,p_validation_sequence=>20
,p_validation=>'P10_ALL_LOV_NA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a value for this LOV!'
,p_when_button_pressed=>wwv_flow_imp.id(61012498033865229196)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(61010221530151064066)
,p_validation_name=>'App ID Required'
,p_validation_sequence=>30
,p_validation=>'P10_APP_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Application ID is REQUIRED to Generate LOV'
,p_validation_condition=>'ADD_ACTIVE,ADD_ALL'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(61012499169045229207)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(109423709681481748187)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61456894912022397030)
,p_name=>'Hide'
,p_event_sequence=>5
,p_condition_element=>'P10_ACTIVE_OR_EFF_DA'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456895028653397031)
,p_event_id=>wwv_flow_imp.id(61456894912022397030)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_CREATE_ACTIVE_ONLY_LIST,P10_CREATE_ALL_LIST'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61456894356312397025)
,p_name=>'Back'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(61456894304707397024)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456894669066397028)
,p_event_id=>wwv_flow_imp.id(61456894356312397025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61456895058885397032)
,p_name=>'Change Active or Eff Date Selection'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_ACTIVE_OR_EFF_DA'
,p_condition_element=>'P10_ACTIVE_OR_EFF_DA'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456895224778397033)
,p_event_id=>wwv_flow_imp.id(61456895058885397032)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_CREATE_ACTIVE_ONLY_LIST,P10_CREATE_ALL_LIST'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456895475780397036)
,p_event_id=>wwv_flow_imp.id(61456895058885397032)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_CREATE_ACTIVE_ONLY_LIST,P10_CREATE_ALL_LIST'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456896186223397043)
,p_event_id=>wwv_flow_imp.id(61456895058885397032)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_LOV_ACTIVE,P10_LOV_ALL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'NULL'
,p_attribute_07=>'P10_LOV_ACTIVE,P10_LOV_ALL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456896277327397044)
,p_event_id=>wwv_flow_imp.id(61456895058885397032)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_LOV_ACTIVE,P10_LOV_ALL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'NULL'
,p_attribute_07=>'P10_LOV_ACTIVE,P10_LOV_ALL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(87288209605114380835)
,p_name=>'Click Copy Active'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(87288209537161380834)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_da_event_comment=>'Executes Javascript function defined in page "Function and Global Variable Declaration"'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(87288209740672380836)
,p_event_id=>wwv_flow_imp.id(87288209605114380835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'copyText(''P10_LOV_ACTIVE'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(87288210176123380840)
,p_name=>'Click Copy ALL'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(87288210095431380839)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_da_event_comment=>'Executes Javascript function defined in page "Function and Global Variable Declaration"'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(87288210280867380841)
,p_event_id=>wwv_flow_imp.id(87288210176123380840)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'copyText(''P10_LOV_ALL'');'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456894828731397029)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate LOVs'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    lc_where_active VARCHAR2(200) := ''where nvl(det.ACTIVE_IND, ''''N'''') != ''''N'''' '';',
'    lc_where_eff    VARCHAR2(200) := ''where ( nvl(EFF_START_DA, sysdate) <= sysdate ) and ( nvl(EFF_END_DA, sysdate + 1) > sysdate )'';   ',
'',
'    l_lov_na APXSHR_LOV_NAME.LOV_NA%TYPE;',
'    ',
'    l_SQL_active CLOB := ',
'''select',
'    det.LOV_DISPLAY_VAL,',
'    det.ID',
'from APXSHR_LOV_DETAILS det',
'join APXSHR_LOV_NAME name on name.ID = det.LOV_NAME_ID and',
'     name.APP_ALIAS = ''''[APP_ALIAS]'''' and',
'     name.LOV_NA = ''''[LOV_NA]''''',
'[WHERE_CLAUSE]',
'order by det.SORT_ORDER_NO, det.LOV_DISPLAY_VAL'';',
'                ',
'    l_SQL_all CLOB;',
'    ',
'begin  -- anon block',
'    :P10_LOV_ACTIVE := NULL;',
'    :P10_LOV_ALL    := NULL;',
'',
'--  get the LOV name from the ID passed into the page item',
'    select LOV_NA into l_lov_na',
'    from APXSHR_LOV_NAME',
'    where ID = :P10_LOV_ID;',
'    ',
'--  replace ALIAS with page item value and LOV Name with looked up LOV Name',
'    l_sql_active := replace (l_sql_active, ''[APP_ALIAS]'', :P10_APP_ALIAS );',
'    l_sql_active := replace (l_sql_active, ''[LOV_NA]'',    l_lov_na    ); ',
'    ',
'    if :P10_ACTIVE_OR_EFF_DA = ''N''',
'    then',
'        l_sql_all := l_sql_active;',
'        ',
'    --  get rid of the WHERE clause ',
'        l_sql_all := replace (l_sql_all, ''[WHERE_CLAUSE]'', '''');   ',
'        ',
'        :P10_LOV_ALL := l_sql_all;',
'    else',
'        l_sql_all := l_sql_active; ',
'        ',
'    --  Replace WHERE CLAUSE placeholder with code from local constants',
'        if :P10_ACTIVE_OR_EFF_DA = ''A''',
'        then',
'            l_sql_active := replace (l_sql_active, ''[WHERE_CLAUSE]'', lc_where_active);',
'        else',
'            l_sql_active := replace (l_sql_active, ''[WHERE_CLAUSE]'', lc_where_eff);    ',
'        end if;',
'                ',
'        if :P10_CREATE_ACTIVE_ONLY_LIST = ''Y''',
'        then',
'            :P10_LOV_ACTIVE := l_sql_active;',
'        end if;',
'            ',
'        if :P10_CREATE_ALL_LIST = ''Y''',
'        then  ',
'        --  get rid of the WHERE clause ',
'            l_sql_all := replace (l_sql_all, ''[WHERE_CLAUSE]'', '''');              ',
'            ',
'            :P10_LOV_ALL := l_sql_all;',
'        end if;        ',
'    end if;',
'end;   -- anon block'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(61456894171103397023)
,p_internal_uid=>2501457329753070862
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61012498817677229204)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add LOV to App'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'    This only works if your Schema has access to WWV_FLOWS and WWV_FLOW_LISTS_OF_VALUES$ ',
'',
'    At our shop, we were able to create PUBLIC SYNONYMs for these objects each time we upgraded. For example:',
'',
'        CREATE PUBLIC SYNONYM MY_FLOWS FOR APEX_240200.WWV_FLOWS;',
'        CREATE PUBLIC SYNONYM MY_FLOW_LOVS FOR APEX_240200.WWV_FLOW_LISTS_OF_VALUES$;',
'',
'        * Of course, each time you upgrade, you''ll need to re-create / replace these synonyms to point to the new version.',
'',
'    Then you need to GRANT privileges to these objects for your Parsing Schema.  For example:',
'',
'        GRANT SELECT ON APEX_240200.WWV_FLOWS TO MY_PARSING_SCHEMA;',
'        GRANT SELECT, INSERT, UPDATE ON APEX_240200.WWV_FLOW_LISTS_OF_VALUES$ TO MY_PARSING_SCHEMA;',
'',
'        * Of cource, each time you upgrade, you''ll need to re-GRANT these privileges to the new APEX version.  We just made it part of our standard upgrade plan.',
'',
'    For an on-prem install of APEX, work with your DBAs to get access to READ WWV_FLOWS and INSERT into WWV_FLOW_LISTS_OF_VALUES$  ',
'',
'    For oracleapex.com/ords installations, this code won''t work.',
'',
'    For cloud.oracle.com installations, you should be able to grant this access - or work with your DBA.',
'*/',
'declare',
'     l_app_id NUMBER := :P10_APP_ID; -- this app has no LOVs',
'     l_lov_na_for_SQL varchar2(200) := NULL;',
'     l_lov_na VARCHAR2(200) := NULL;',
'     l_workspace_id NUMBER;',
'     l_sql CLOB := ''',
' select',
' det.LOV_DISPLAY_VAL,',
' det.ID',
' from APXSHR_LOV_DETAILS det',
' join APXSHR_LOV_NAME name on name.ID = det.LOV_NAME_ID and',
' name.APP_ALIAS = '''''' || :P10_APP_ALIAS || '''''' and',
' name.LOV_NA = ''''[LOV_NA]''''',
' where nvl(det.ACTIVE_IND, ''''N'''') != ''''N'''' ',
' order by det.SORT_ORDER_NO, det.LOV_DISPLAY_VAL ',
' '';',
' /*  original query',
' ''select',
'    det.LOV_DISPLAY_VAL,',
'    det.ID',
'from APXSHR_LOV_DETAILS det',
'join APXSHR_LOV_NAME name on name.ID = det.LOV_NAME_ID and',
'     name.APP_ALIAS = ''''[APP_ALIAS]'''' and',
'     name.LOV_NA = ''''[LOV_NA]''''',
'[WHERE_CLAUSE]',
'order by det.SORT_ORDER_NO, det.LOV_DISPLAY_VAL'';',
' */',
' begin',
'    select LOV_NA into l_lov_na_for_SQL ',
'    from APXSHR_LOV_NAME ',
'    where ID = :P10_LOV_ID;',
' /*',
'    select',
'        replace(upper(LOV_NA),'' '',''_'') into l_lov_na',
'    from APXSHR_LOV_NAME    ',
'    where ID = :P2_LOV_NAME;',
'*/     ',
'     if v(''REQUEST'') = ''ADD_ACTIVE''',
'     then',
'         l_lov_na := trim(upper(:P10_ACTIVE_LOV_NA));',
'         l_sql := :P10_LOV_ACTIVE;',
'     else',
'         l_lov_na := trim(upper(:P10_ALL_LOV_NA));',
'         l_sql := :P10_LOV_ALL;',
'     end if;',
'     ',
' --    l_sql := replace (l_sql, ''[LOV_NA]'', l_lov_na_for_SQL);',
'     ',
'     select security_group_id into l_workspace_id',
'     from MY_FLOWS  -- Your synonym, or the specific APEX version: APEX_240200.WWV_FLOWS.  Need SELECT privileges.',
'     where ID = l_app_id;',
'',
'',
'-- APEX_APPLICATION.G_FLOW_SCHEMA_OWNER',
'-- #FLOW_OWNER#',
'    begin -- insert',
'        ',
'        insert into MY_FLOW_LOVS  -- Your synonym, or the specific APEX version: APEX_240200.WWV_FLOW_LISTS_OF_VALUES$  Need INSERT privileges.',
'          (FLOW_ID, LOV_NAME,  LOV_QUERY, SOURCE_TYPE, SECURITY_GROUP_ID, LOCATION, QUERY_OWNER, RETURN_COLUMN_NAME, DISPLAY_COLUMN_NAME, GROUP_SORT_DIRECTION, DEFAULT_SORT_DIRECTION, LOV_COMMENT)',
'        values',
'          (l_app_id, l_lov_na, l_sql,     ''SQL'',       l_workspace_id,   ''LOCAL'',  APEX_APPLICATION.G_FLOW_SCHEMA_OWNER, ''ID'', ''LOV_DISPLAY_VAL'', ''ASC'', ''ASC'', ''Generated by App #'' || :APP_ID);',
'',
'        exception when DUP_VAL_ON_INDEX then',
'            apex_error.add_error (',
'                p_message          => ''An LOV by this name already exists for this application!'',',
'                p_display_location => apex_error.c_inline_in_notification );            ',
'        --    raise_Application_Error (-20111, ''An LOV by this name already exists for this application!'');',
'    end;  -- insert  ',
'    --exception when OTHERS then NULL;',
'    commit;',
' end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ADD_ACTIVE,ADD_ALL'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'LOV Added to App!'
,p_required_patch=>wwv_flow_imp.id(109423709681481748187)
,p_internal_uid=>2057061318698903037
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(109424754175149448479)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Download ACTIVE LOV'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    apex_http.download(',
'        p_clob         => :P10_LOV_ACTIVE,',
'        p_content_type => ''text/plain'',',
'        p_filename     => trim(upper(:P10_ACTIVE_LOV_NA))||''.sql''',
'        );     ',
'',
'end; -- anonymous block    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(87288207844683380817)
,p_internal_uid=>109424754175149448479
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(87288208081202380819)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Download ALL LOV'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    apex_http.download(',
'        p_clob         => :P10_LOV_ALL,',
'        p_content_type => ''text/plain'',',
'        p_filename     => trim(upper(:P10_ALL_LOV_NA))||''.sql''',
'        );     ',
'',
'end; -- anonymous block    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(87288207923383380818)
,p_internal_uid=>87288208081202380819
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61010221650614064067)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save App ID'
,p_process_sql_clob=>':AI_LOV_APP_ID := :P10_APP_ID;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2054784151635737900
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN-DESKTOP'
,p_step_title=>'APEX Shared Lists of Values - Sign In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_comment=>'login'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456302134337415808)
,p_plug_name=>'APEX Shared Lists of Values'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456306752930415823)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_imp.id(61456302134337415808)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456304915074415819)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(61456302134337415808)
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
 p_id=>wwv_flow_imp.id(61456302466782415810)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61456302134337415808)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456302862652415811)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(61456302134337415808)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456303981981415815)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(61456302134337415808)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_imp.id(61456303167913415811)||'.'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456305659663415822)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2500868160685089655
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456305295338415821)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2500867796360089654
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456306493775415822)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2500868994797089655
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456306143589415822)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>2500868644611089655
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
,p_group_id=>wwv_flow_imp.id(61456301245420415796)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(61456299276325415787)
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456452123661416059)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(61456157916171415561)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456458570561416062)
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
 p_id=>wwv_flow_imp.id(61010221937833064070)
,p_plug_name=>'Configuration'
,p_parent_plug_id=>wwv_flow_imp.id(61456458570561416062)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(61456452698966416060)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_required_patch=>wwv_flow_imp.id(61456296964279415780)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456459427549416063)
,p_plug_name=>'User Interface'
,p_parent_plug_id=>wwv_flow_imp.id(61456458570561416062)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(61456453434934416060)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(61456297371655415780)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456459809059416064)
,p_plug_name=>'Activity Reports'
,p_parent_plug_id=>wwv_flow_imp.id(61456458570561416062)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(61456454074732416061)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(61456296672396415780)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456460180170416064)
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
 p_id=>wwv_flow_imp.id(61456460604229416064)
,p_plug_name=>'Access Control'
,p_parent_plug_id=>wwv_flow_imp.id(61456460180170416064)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(61456296595635415780)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456461361238416065)
,p_plug_name=>'ACL Information'
,p_parent_plug_id=>wwv_flow_imp.id(61456460604229416064)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
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
 p_id=>wwv_flow_imp.id(61456461766613416065)
,p_name=>'User Counts Report'
,p_parent_plug_id=>wwv_flow_imp.id(61456460604229416064)
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
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456462544701416068)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456462902211416068)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456463346221416069)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456466409783416072)
,p_plug_name=>'Access Control Actions'
,p_parent_plug_id=>wwv_flow_imp.id(61456460604229416064)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(61456456386067416061)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456466832871416072)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(61456460180170416064)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(61456296838543415780)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(61456467209760416073)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(61456466832871416072)
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
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456467872382416077)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456468322302416077)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456470178759416078)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(61456466832871416072)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(61456457494955416062)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456460968226416064)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61456460604229416064)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&SESSION.::&DEBUG.:RP,10042::'
,p_icon_css_classes=>'fa-user-plus'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61456465501021416072)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(61456460968226416064)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456466032871416072)
,p_event_id=>wwv_flow_imp.id(61456465501021416072)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61456461766613416065)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'Configuration Options'
,p_page_mode=>'MODAL'
,p_step_title=>'Configuration Options'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(61456301245420415796)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(61456299276325415787)
,p_required_patch=>wwv_flow_imp.id(61456296964279415780)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Configuration settings allow you to make specific functionality either available (enabled) or unavailable (disabled) to end users.</p>',
'<p>If a specific function is not 100% ready, or needs to be temporarily removed, click <strong>Disabled</strong>. ',
'Once it should be made available, simply click <strong>Enabled</strong>.</p>',
'<p><em><strong>Note:</strong> Changes made here will not be reflected for individual end users currently running the application. Once the end user signs out and then signs back in the revised feature settings will be invoked.</em></p>'))
,p_page_comment=>'n/a'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456309446268415845)
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
 p_id=>wwv_flow_imp.id(61456309559481415845)
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
'                           end ),',
'         p_attributes => ''style="white-space:pre;"'') "STATUS",',
'    component_comment   description,',
'    last_updated_on        updated,',
'    lower(last_updated_by) updated_by,',
'    build_option_status current_status',
'  from apex_application_build_options,',
'  (select apex_lang.message(''APEX.FEATURE.CONFIG.ENABLED'') enabled, apex_lang.message(''APEX.FEATURE.CONFIG.DISABLED'') disabled from dual) m',
' where application_id = :APP_ID ',
' and (feature_identifier not in ( ''APPLICATION_ACCESS_CONTROL'', ''APPLICATION_CONFIGURATION'') or feature_identifier is null)'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(61456310497179415846)
,p_name=>'Configuration Options'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
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
,p_internal_uid=>446763150309680428
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61456310641298415857)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61456310958103415860)
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
 p_id=>wwv_flow_imp.id(61456311351598415861)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61456311790851415861)
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
 p_id=>wwv_flow_imp.id(61456312170556415862)
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
 p_id=>wwv_flow_imp.id(61456312639588415862)
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
 p_id=>wwv_flow_imp.id(61456312971811415863)
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
 p_id=>wwv_flow_imp.id(61456313662569415866)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4467664'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_OPTION:STATUS:DESCRIPTION:UPDATED:UPDATED_BY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456315263381415870)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61456309446268415845)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456314623443415870)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61456309559481415845)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(61456316079849415871)
,p_branch_name=>'Refresh Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456315679591415870)
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
,p_internal_uid=>2500878180613089703
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Application Appearance'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Appearance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(61456301245420415796)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(61456299276325415787)
,p_required_patch=>wwv_flow_imp.id(61456297371655415780)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456316385412415871)
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
 p_id=>wwv_flow_imp.id(61456316533647415871)
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
 p_id=>wwv_flow_imp.id(61456318199113415872)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61456316385412415871)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456317734815415872)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61456316385412415871)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(61456318603654415873)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456318870896415873)
,p_name=>'P10020_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61456316533647415871)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Desktop Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and t.ui_type_name   = ''DESKTOP''',
'    and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DESKTOP THEME STYLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'    s.theme_style_id r',
'from apex_application_theme_styles s, apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and t.ui_type_name   = ''DESKTOP''',
'    and t.is_current = ''Yes''',
'order by 1'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and t.ui_type_name   = ''DESKTOP'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>'The default Theme Style applies to all users.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456319556033415891)
,p_name=>'P10020_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(61456316533647415871)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End User Theme Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.theme_style_by_user_pref',
'  from apex_applications a',
' where a.application_id  = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_lov=>'.'||wwv_flow_imp.id(61456319709664415891)||'.'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If checked, end users may choose their own Theme Style using the Customize link.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61456316655856415871)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(61456317734815415872)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456321075849415892)
,p_event_id=>wwv_flow_imp.id(61456316655856415871)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456321603074415894)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10020_DESKTOP_THEME_STYLE_ID is not null then',
'    for c1 in (select theme_number',
'               from apex_application_themes',
'               where application_id = :app_id',
'               and ui_type_name   = ''DESKTOP''',
'               and is_current = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => c1.theme_number,',
'            p_theme_style_id => :P10020_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>2500884104096089727
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456321997642415894)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save End User Style Preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_enabled boolean := case when :P10020_END_USER_STYLE = ''Yes'' then true else false end;',
'begin',
'    for c1 in ( select ui.theme_number',
'                from apex_application_themes t,',
'                    apex_appl_user_interfaces ui',
'                where ui.application_id = t.application_id',
'                    and ui.theme_number   = t.theme_number',
'                    and t.application_id  = :APP_ID',
'                    and t.ui_type_name    = ''DESKTOP''',
'                    and t.is_current      = ''Yes'' ) loop',
'        if l_enabled then',
'            apex_theme.enable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => c1.theme_number );',
'        else',
'            apex_theme.disable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => c1.theme_number );',
'            apex_theme.clear_all_users_style(:APP_ID);',
'        end if;',
'  end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>2500884498664089727
);
end;
/
prompt --application/pages/page_10030
begin
wwv_flow_imp_page.create_page(
 p_id=>10030
,p_name=>'Activity Dashboard'
,p_alias=>'DASHBOARD'
,p_page_mode=>'MODAL'
,p_step_title=>'Activity Dashboard'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(61456301245420415796)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_imp.id(61456299276325415787)
,p_required_patch=>wwv_flow_imp.id(61456296672396415780)
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456322272017415895)
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
 p_id=>wwv_flow_imp.id(61456322372443415895)
,p_region_id=>wwv_flow_imp.id(61456322272017415895)
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
 p_id=>wwv_flow_imp.id(61456324475027415897)
,p_chart_id=>wwv_flow_imp.id(61456322372443415895)
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
 p_id=>wwv_flow_imp.id(61456325741176415900)
,p_chart_id=>wwv_flow_imp.id(61456322372443415895)
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
 p_id=>wwv_flow_imp.id(61456325137475415899)
,p_chart_id=>wwv_flow_imp.id(61456322372443415895)
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
 p_id=>wwv_flow_imp.id(61456322451583415895)
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
 p_id=>wwv_flow_imp.id(61456322636467415895)
,p_region_id=>wwv_flow_imp.id(61456322451583415895)
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
 p_id=>wwv_flow_imp.id(61456329492273415902)
,p_chart_id=>wwv_flow_imp.id(61456322636467415895)
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
 p_id=>wwv_flow_imp.id(61456330072025415902)
,p_chart_id=>wwv_flow_imp.id(61456322636467415895)
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
 p_id=>wwv_flow_imp.id(61456330669162415903)
,p_chart_id=>wwv_flow_imp.id(61456322636467415895)
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
 p_id=>wwv_flow_imp.id(61456322745889415895)
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
 p_id=>wwv_flow_imp.id(61456322776415415895)
,p_region_id=>wwv_flow_imp.id(61456322745889415895)
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
 p_id=>wwv_flow_imp.id(61456327012312415901)
,p_chart_id=>wwv_flow_imp.id(61456322776415415895)
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
 p_id=>wwv_flow_imp.id(61456327588237415901)
,p_chart_id=>wwv_flow_imp.id(61456322776415415895)
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
 p_id=>wwv_flow_imp.id(61456328217288415901)
,p_chart_id=>wwv_flow_imp.id(61456322776415415895)
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
 p_id=>wwv_flow_imp.id(61456322901533415895)
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
 p_id=>wwv_flow_imp.id(61456331787625415912)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456332171426415912)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(61456323006722415895)
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
 p_id=>wwv_flow_imp.id(61456334964418415927)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456335374970415928)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>'Last Activity'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456323089213415895)
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
 p_id=>wwv_flow_imp.id(61456337662213415930)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61456322272017415895)
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
 p_id=>wwv_flow_imp.id(61456338090952415931)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61456322451583415895)
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
 p_id=>wwv_flow_imp.id(61456338508121415931)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61456322745889415895)
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
 p_id=>wwv_flow_imp.id(61456338896981415931)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61456322901533415895)
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
 p_id=>wwv_flow_imp.id(61456323214723415895)
,p_name=>'P10030_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61456323089213415895)
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
 p_id=>wwv_flow_imp.id(61456323304757415895)
,p_name=>'Change Filters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10030_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456340443832415933)
,p_event_id=>wwv_flow_imp.id(61456323304757415895)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61456322272017415895)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456340897650415934)
,p_event_id=>wwv_flow_imp.id(61456323304757415895)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61456322745889415895)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456341441800415934)
,p_event_id=>wwv_flow_imp.id(61456323304757415895)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61456322451583415895)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456341879670415934)
,p_event_id=>wwv_flow_imp.id(61456323304757415895)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61456322901533415895)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456342413344415934)
,p_event_id=>wwv_flow_imp.id(61456323304757415895)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61456323006722415895)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_10031
begin
wwv_flow_imp_page.create_page(
 p_id=>10031
,p_name=>'Top Users'
,p_page_mode=>'MODAL'
,p_step_title=>'Top Users'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(61456301245420415796)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Remove padding around dialog page */',
'.hour-graph { display: table; width: 100%; }',
'span.hour { display: table-cell; padding: 0; font-size: 11px; text-align: center; background-color: #a6ffa6; min-width: 32px; }',
'span.hour.is-over1k { background-color: #7bdc7b; }',
'span.hour.is-null { background-color: #E0E0E0; }',
'span.hour-label { opacity: 0.5; }',
'span.hour-value { display: block; }'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(61456299276325415787)
,p_required_patch=>wwv_flow_imp.id(61456296672396415780)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this report and chart to see the users with the most page views for the specified timeframe.</p>',
'<p>Select the reporting timeframe (Default = 1 day) and choose between the report and chart icons at the top of the page.</p>',
'<p>For the interactive report, use the search field, or select the <strong>User</strong> column heading, to select a specific user. You can perform numerous functions by clicking the <strong>Actions</strong> button, such as columns displayed / hidden'
||', rows per page, filter, and so forth. Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_comment=>'n/a'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456365362611415962)
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
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(61456366815432415962)
,p_name=>'Top Users'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
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
,p_internal_uid=>446819468562680544
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61456366920749415966)
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
 p_id=>wwv_flow_imp.id(61456367266842415967)
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
 p_id=>wwv_flow_imp.id(61456367682012415969)
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
 p_id=>wwv_flow_imp.id(61456368097495415970)
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
 p_id=>wwv_flow_imp.id(61456368546103415972)
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
 p_id=>wwv_flow_imp.id(61456368850353415974)
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
 p_id=>wwv_flow_imp.id(61456369322277415975)
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
 p_id=>wwv_flow_imp.id(61456369714638415977)
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
 p_id=>wwv_flow_imp.id(61456370398443415978)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4468231'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456365492759415962)
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
 p_id=>wwv_flow_imp.id(61456365734224415962)
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
 p_id=>wwv_flow_imp.id(61456365795715415962)
,p_region_id=>wwv_flow_imp.id(61456365734224415962)
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
 p_id=>wwv_flow_imp.id(61456374026598415982)
,p_chart_id=>wwv_flow_imp.id(61456365795715415962)
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
 p_id=>wwv_flow_imp.id(61456371300510415979)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61456365362611415962)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456365907591415962)
,p_name=>'P10031_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(61456365492759415962)
,p_item_default=>'REPORT'
,p_prompt=>'View As'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_lov=>'.'||wwv_flow_imp.id(61456374498417415982)||'.'
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
 p_id=>wwv_flow_imp.id(61456366069886415962)
,p_name=>'P10031_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61456365492759415962)
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
 p_id=>wwv_flow_imp.id(61456365627818415962)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10031_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456372616531415980)
,p_event_id=>wwv_flow_imp.id(61456365627818415962)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61456365362611415962)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456375993829415983)
,p_event_id=>wwv_flow_imp.id(61456365627818415962)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61456365362611415962)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_10032
begin
wwv_flow_imp_page.create_page(
 p_id=>10032
,p_name=>'Application Error Log'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Error Log'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(61456301245420415796)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(61456299276325415787)
,p_required_patch=>wwv_flow_imp.id(61456296672396415780)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
,p_page_comment=>'n/a'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456360529611415957)
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
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(61456361396510415957)
,p_name=>'Application Error Log'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
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
,p_internal_uid=>446814049640680539
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61456361484990415958)
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
 p_id=>wwv_flow_imp.id(61456361872446415959)
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
 p_id=>wwv_flow_imp.id(61456362313566415959)
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
 p_id=>wwv_flow_imp.id(61456362677484415960)
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
 p_id=>wwv_flow_imp.id(61456363129561415960)
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
 p_id=>wwv_flow_imp.id(61456363540977415961)
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
 p_id=>wwv_flow_imp.id(61456364235062415961)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4468169'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456365059202415962)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61456360529611415957)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10033
begin
wwv_flow_imp_page.create_page(
 p_id=>10033
,p_name=>'Page Performance'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Performance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(61456301245420415796)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(61456299276325415787)
,p_required_patch=>wwv_flow_imp.id(61456296672396415780)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the page performance and popularity. The report is ordered by <strong>Weighted Performance</strong> which is calculated by multiplying the Median Elapsed time and number of Page Views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_comment=>'n/a'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456350862349415945)
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
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(61456351843645415946)
,p_name=>'Page Performance'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
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
,p_internal_uid=>446804496775680528
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61456351941316415949)
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
 p_id=>wwv_flow_imp.id(61456352337937415950)
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
 p_id=>wwv_flow_imp.id(61456352694474415950)
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
 p_id=>wwv_flow_imp.id(61456353103891415951)
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
 p_id=>wwv_flow_imp.id(61456353521425415951)
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
 p_id=>wwv_flow_imp.id(61456353892091415951)
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
 p_id=>wwv_flow_imp.id(61456354255042415952)
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
 p_id=>wwv_flow_imp.id(61456354716921415952)
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
 p_id=>wwv_flow_imp.id(61456355076044415952)
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
 p_id=>wwv_flow_imp.id(61456355470837415953)
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
 p_id=>wwv_flow_imp.id(61456355941327415953)
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
 p_id=>wwv_flow_imp.id(61456356263987415953)
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
 p_id=>wwv_flow_imp.id(61456356712488415954)
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
 p_id=>wwv_flow_imp.id(61456357081136415954)
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
 p_id=>wwv_flow_imp.id(61456357775065415954)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4468105'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456351016337415945)
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
 p_id=>wwv_flow_imp.id(61456358739902415955)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61456350862349415945)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456350763979415945)
,p_name=>'P10033_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61456351016337415945)
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
 p_id=>wwv_flow_imp.id(61456351143459415945)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10033_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456360034227415956)
,p_event_id=>wwv_flow_imp.id(61456351143459415945)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61456350862349415945)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_10034
begin
wwv_flow_imp_page.create_page(
 p_id=>10034
,p_name=>'Page Views'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Views'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(61456301245420415796)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(61456299276325415787)
,p_required_patch=>wwv_flow_imp.id(61456296672396415780)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the most recent page views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_comment=>'n/a'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456342904160415935)
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
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(61456343793272415935)
,p_name=>'Page Views'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
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
,p_internal_uid=>446796446402680517
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61456343853513415940)
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
 p_id=>wwv_flow_imp.id(61456344328575415940)
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
 p_id=>wwv_flow_imp.id(61456344742804415940)
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
 p_id=>wwv_flow_imp.id(61456345113290415941)
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
 p_id=>wwv_flow_imp.id(61456345483631415941)
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
 p_id=>wwv_flow_imp.id(61456345906629415941)
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
 p_id=>wwv_flow_imp.id(61456346312520415942)
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
 p_id=>wwv_flow_imp.id(61456346707794415942)
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
 p_id=>wwv_flow_imp.id(61456347068041415942)
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
 p_id=>wwv_flow_imp.id(61456347542469415943)
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
 p_id=>wwv_flow_imp.id(61456348222699415943)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4468009'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456342995330415935)
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
 p_id=>wwv_flow_imp.id(61456349101522415944)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61456342904160415935)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456342803186415935)
,p_name=>'P10034_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61456342995330415935)
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
 p_id=>wwv_flow_imp.id(61456343050543415935)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10034_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456350382935415945)
,p_event_id=>wwv_flow_imp.id(61456343050543415935)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61456342904160415935)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_10040
begin
wwv_flow_imp_page.create_page(
 p_id=>10040
,p_name=>'Configure Access Control'
,p_page_mode=>'MODAL'
,p_step_title=>'Configure Access Control'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(61456301245420415796)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(61456299276325415787)
,p_required_patch=>wwv_flow_imp.id(61456296595635415780)
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
 p_id=>wwv_flow_imp.id(61456376349485415984)
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
 p_id=>wwv_flow_imp.id(61456376470731415984)
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
 p_id=>wwv_flow_imp.id(61456377946030415985)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61456376470731415984)
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
 p_id=>wwv_flow_imp.id(61456376557337415984)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61456376470731415984)
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
 p_id=>wwv_flow_imp.id(61456378585208415985)
,p_branch_name=>'Go To Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456378859052415985)
,p_name=>'P10040_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(61456376349485415984)
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
 p_id=>wwv_flow_imp.id(61456376679981415984)
,p_name=>'Cancel Modal'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(61456376557337415984)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456379588295415986)
,p_event_id=>wwv_flow_imp.id(61456376679981415984)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456380076849415986)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACCESS CONTROL ENABLED'
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
,p_internal_uid=>2500942577871089819
);
end;
/
prompt --application/pages/page_10041
begin
wwv_flow_imp_page.create_page(
 p_id=>10041
,p_name=>'Manage User Access'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(61456301245420415796)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(61456299276325415787)
,p_required_patch=>wwv_flow_imp.id(61456296595635415780)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
,p_page_comment=>'n/a'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456380534606415987)
,p_plug_name=>'Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS aaau ',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(61456381608214415987)
,p_name=>'Manage User Access'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10042:&APP_SESSION.::::P10042_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'J11740'
,p_internal_uid=>446834261344680569
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61456381731539415991)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61456382099877415991)
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
 p_id=>wwv_flow_imp.id(61456382450932415992)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(61456383166697415992)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4468359'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456384099823415993)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61456380534606415987)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456384536185415993)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(61456380534606415987)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:10043:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456384847519415993)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(61456380534606415987)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&SESSION.::&DEBUG.:10042'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61456380606196415987)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(61456380534606415987)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456385491201415993)
,p_event_id=>wwv_flow_imp.id(61456380606196415987)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61456380534606415987)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_10042
begin
wwv_flow_imp_page.create_page(
 p_id=>10042
,p_name=>'Manage User Access'
,p_alias=>'USER_ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(61456301245420415796)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(61456299276325415787)
,p_required_patch=>wwv_flow_imp.id(61456296595635415780)
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
,p_page_comment=>'n/a'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456385999893415994)
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
 p_id=>wwv_flow_imp.id(61456386081355415994)
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
 p_id=>wwv_flow_imp.id(61456386208120415994)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61456386081355415994)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456386263209415994)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61456386081355415994)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456386446366415994)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61456386081355415994)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456386491143415994)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(61456386081355415994)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456386664046415994)
,p_name=>'P10042_USERNAME'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(61456385999893415994)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_read_only_when=>'P10042_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456388848595415995)
,p_name=>'P10042_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61456385999893415994)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456389311105415996)
,p_name=>'P10042_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61456385999893415994)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456389951897415996)
,p_name=>'P10042_ROLE_ID'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(61456385999893415994)
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
 p_id=>wwv_flow_imp.id(61456386573829415994)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(61456386446366415994)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456391466403415999)
,p_event_id=>wwv_flow_imp.id(61456386573829415994)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456391995573415999)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row'
,p_attribute_02=>'APEX_APPL_ACL_USERS'
,p_attribute_03=>'P10042_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2500954496595089832
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456392383136415999)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Save'
,p_attribute_02=>'APEX_APPL_ACL_USERS'
,p_attribute_03=>'P10042_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>2500954884158089832
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456392771845416000)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset Page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(61456386491143415994)
,p_internal_uid=>2500955272867089833
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456393179827416000)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2500955680849089833
);
end;
/
prompt --application/pages/page_10043
begin
wwv_flow_imp_page.create_page(
 p_id=>10043
,p_name=>'Add Multiple Users - Step 1'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(61456301245420415796)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.helpText {',
'padding: 8px;',
'color: #707070;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(61456299276325415787)
,p_required_patch=>wwv_flow_imp.id(61456296595635415780)
,p_dialog_chained=>'N'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456393548677416000)
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
 p_id=>wwv_flow_imp.id(61456393666393416000)
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
 p_id=>wwv_flow_imp.id(61456393830505416000)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61456393548677416000)
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
 p_id=>wwv_flow_imp.id(61456393888961416000)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61456393548677416000)
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
 p_id=>wwv_flow_imp.id(61456396540268416002)
,p_branch_name=>'Go To Next Step'
,p_branch_action=>'f?p=&APP_ID.:10044:&SESSION.::&DEBUG.:RP,10044::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(61456393830505416000)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456396889036416002)
,p_name=>'P10043_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(61456393666393416000)
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
 p_id=>wwv_flow_imp.id(61456397304522416002)
,p_name=>'P10043_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(61456393666393416000)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456397734298416002)
,p_name=>'P10043_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(61456393666393416000)
,p_prompt=>'Username Format'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_imp.id(61456397805888416002)||'.'
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
 p_id=>wwv_flow_imp.id(61456393966714416000)
,p_name=>'Cancel Modal'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(61456393888961416000)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456399077462416003)
,p_event_id=>wwv_flow_imp.id(61456393966714416000)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456399583831416003)
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
'    l_line := :P10043_PRELIM_USERS;',
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
'            if NVL(:P10043_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
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
,p_process_when_button_id=>wwv_flow_imp.id(61456393830505416000)
,p_internal_uid=>2500962084853089836
);
end;
/
prompt --application/pages/page_10044
begin
wwv_flow_imp_page.create_page(
 p_id=>10044
,p_name=>'Add Multiple Users - Step 2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(61456301245420415796)
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
,p_required_role=>wwv_flow_imp.id(61456299276325415787)
,p_required_patch=>wwv_flow_imp.id(61456296595635415780)
,p_deep_linking=>'N'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456394123578416000)
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
 p_id=>wwv_flow_imp.id(61456394240776416000)
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
 p_id=>wwv_flow_imp.id(61456394584826416000)
,p_name=>'Exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(61456394240776416000)
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
 p_id=>wwv_flow_imp.id(61456401459885416007)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456401914319416007)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(61456394698449416000)
,p_name=>'&P10044_VALID_COUNT. Users to Add'
,p_parent_plug_id=>wwv_flow_imp.id(61456394240776416000)
,p_template=>4501440665235496320
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct lower(c001) username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No valid new users found'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61456405021508416010)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_column_html_expression=>'<span class="fa fa-check-circle u-success-text" aria-hidden="true"></span> #USERNAME#'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456394785887416000)
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
 p_id=>wwv_flow_imp.id(61456406602603416012)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sys.htp.prn(''<p>'');',
'sys.htp.prn(apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'', :P10044_VALID_COUNT, :P10044_ROLE));',
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
 p_id=>wwv_flow_imp.id(61456407303311416012)
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
 p_id=>wwv_flow_imp.id(61456394896311416000)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61456394123578416000)
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
 p_id=>wwv_flow_imp.id(61456407975892416013)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61456394123578416000)
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
 p_id=>wwv_flow_imp.id(61456394359736416000)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(61456394123578416000)
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
 p_id=>wwv_flow_imp.id(61456408691720416014)
,p_name=>'P10044_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61456394785887416000)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 access_level',
'from dual ',
'where 1 = 1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456409139276416014)
,p_name=>'P10044_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(61456394785887416000)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456409506873416014)
,p_name=>'P10044_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(61456394785887416000)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61456394533460416000)
,p_name=>'Cancel Modal'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(61456394359736416000)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456410231019416015)
,p_event_id=>wwv_flow_imp.id(61456394533460416000)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456410717882416015)
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
'    :P10043_PRELIM_USERS := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(61456394896311416000)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>2500973218904089848
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456411078716416015)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2500973579738089848
);
end;
/
prompt --application/pages/page_10050
begin
wwv_flow_imp_page.create_page(
 p_id=>10050
,p_name=>'Feedback'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(61456301245420415796)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: #4caf50; }',
'.feedback-neutral { color: #eb9f41; }',
'.feedback-negative { color: #f44336; }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(61456296838543415780)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'n/a',
''))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456411489718416015)
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
 p_id=>wwv_flow_imp.id(61456411564124416015)
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
 p_id=>wwv_flow_imp.id(61456411717588416015)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61456411564124416015)
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
 p_id=>wwv_flow_imp.id(61456411782329416015)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61456411564124416015)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(61456420816646416027)
,p_branch_name=>'success'
,p_branch_action=>'f?p=&APP_ID.:10051:&SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456415180044416024)
,p_name=>'P10050_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61456411489718416015)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456415546888416024)
,p_name=>'P10050_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(61456411489718416015)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456415986594416024)
,p_name=>'P10050_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(61456411489718416015)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456416416044416024)
,p_name=>'P10050_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(61456411489718416015)
,p_prompt=>'Experience'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_lov=>'.'||wwv_flow_imp.id(61456416451251416024)||'.'
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
 p_id=>wwv_flow_imp.id(61456418298499416025)
,p_name=>'P10050_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(61456411489718416015)
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
 p_id=>wwv_flow_imp.id(61456418671478416025)
,p_name=>'P10050_ATTACHMENT_BLOB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(61456411489718416015)
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
 p_id=>wwv_flow_imp.id(61456420372075416027)
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
 p_id=>wwv_flow_imp.id(61456411891136416015)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(61456411782329416015)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456419497599416026)
,p_event_id=>wwv_flow_imp.id(61456411891136416015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456419982570416026)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit Feedback'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'apex_util.submit_feedback (',
'    p_comment              => :P10050_FEEDBACK,',
'    p_application_id       => :APP_ID,',
'    p_page_id              => :P10050_PAGE_ID,',
'    p_rating               => :P10050_RATING',
'  , p_attachment_name      => :P10050_ATTACHMENT_BLOB',
' );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(61456411717588416015)
,p_process_success_message=>'Feedback Submitted'
,p_internal_uid=>2500982483592089859
);
end;
/
prompt --application/pages/page_10051
begin
wwv_flow_imp_page.create_page(
 p_id=>10051
,p_name=>'Feedback Submitted'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(61456301245420415796)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(61456296838543415780)
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456412066274416015)
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
 p_id=>wwv_flow_imp.id(61456412016607416015)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61456412066274416015)
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
 p_id=>wwv_flow_imp.id(61456412154914416015)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(61456412016607416015)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456422378666416028)
,p_event_id=>wwv_flow_imp.id(61456412154914416015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
end;
/
prompt --application/pages/page_10052
begin
wwv_flow_imp_page.create_page(
 p_id=>10052
,p_name=>'Feedback Settings'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback Settings'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(61456301245420415796)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(61456299276325415787)
,p_required_patch=>wwv_flow_imp.id(61456296838543415780)
,p_help_text=>'<p><strong>Enable Attachments</strong> - If yes, users will be able to upload an attachment in support of their feedback.</p>'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456412301459416015)
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
 p_id=>wwv_flow_imp.id(61456412443632416015)
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
 p_id=>wwv_flow_imp.id(61456412608089416015)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61456412443632416015)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456412541785416015)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61456412443632416015)
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
 p_id=>wwv_flow_imp.id(61456424299923416029)
,p_name=>'P10052_FEEDBACK_ATTACHMENTS_YN'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61456412301459416015)
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
 p_id=>wwv_flow_imp.id(61456412675282416015)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(61456412608089416015)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456425101807416029)
,p_event_id=>wwv_flow_imp.id(61456412675282416015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456425612009416030)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Setting'
,p_process_sql_clob=>'apex_app_setting.set_value( p_name => ''FEEDBACK_ATTACHMENTS_YN'', p_value => :P10052_FEEDBACK_ATTACHMENTS_YN );'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(61456412541785416015)
,p_process_success_message=>'Feedback settings updated.'
,p_internal_uid=>2500988113031089863
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456425997079416030)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2500988498101089863
);
end;
/
prompt --application/pages/page_10053
begin
wwv_flow_imp_page.create_page(
 p_id=>10053
,p_name=>'Manage Feedback'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(61456301245420415796)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: #4caf50; }',
'.feedback-neutral { color: #eb9f41; }',
'.feedback-negative { color: #f44336; }'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(61456299276325415787)
,p_required_patch=>wwv_flow_imp.id(61456296838543415780)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Feedback can be entered by end users from any normal page within the application.</p>',
'<p>This report shows the feedback entered, any response enter by administrators, and the status of the feedback.</p>',
'<p>Click the edit icon (yellow pencil) to enter a response or update the feedback status.</p>',
'<p><em><strong>Note:</strong> If feedback recipients have been defined then feedback submissions will also be emailed to the email addresses in the feedback recipients list.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456413572641416015)
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
'    /*',
'    , (select ''<a href="''||apex_util.get_blob_file_src(''P10053_ATTACHMENT'',id)||''">''|| filename ||''</a>''',
'       from apex$team_dev_files',
'      where component_id = f.feedback_id',
'        and component_type = ''FEEDBACK'') download_attachment',
'    */',
'from apex_team_feedback f',
'where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(61456437279512416036)
,p_name=>'Manage Feedback'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10054:&APP_SESSION.::::P10054_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'J11740'
,p_internal_uid=>446889932642680618
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(87288208278750380821)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'O'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(87288208350266380822)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>20
,p_column_identifier=>'P'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(87288208426791380823)
,p_db_column_name=>'CREATED'
,p_display_order=>30
,p_column_identifier=>'Q'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(87288208574994380824)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>40
,p_column_identifier=>'R'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(87288208616985380825)
,p_db_column_name=>'FEEDBACK'
,p_display_order=>50
,p_column_identifier=>'S'
,p_column_label=>'Feedback'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(87288208772293380826)
,p_db_column_name=>'RATING'
,p_display_order=>60
,p_column_identifier=>'T'
,p_column_label=>'Rating'
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(61456416451251416024)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(87288208844009380827)
,p_db_column_name=>'RATING_ICON'
,p_display_order=>70
,p_column_identifier=>'U'
,p_column_label=>'Rating Icon'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(87288208909829380828)
,p_db_column_name=>'STATUS'
,p_display_order=>80
,p_column_identifier=>'V'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(61456430599934416032)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(87288209044702380829)
,p_db_column_name=>'RESPONSE'
,p_display_order=>90
,p_column_identifier=>'W'
,p_column_label=>'Response'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(87288209173440380830)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>100
,p_column_identifier=>'X'
,p_column_label=>'User Agent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(87288209262596380831)
,p_db_column_name=>'UPDATED'
,p_display_order=>110
,p_column_identifier=>'Y'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(87288209358054380832)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>120
,p_column_identifier=>'Z'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(87288209484687380833)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>130
,p_column_identifier=>'AA'
,p_column_label=>'Page Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(61456443255423416047)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4468960'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CREATED:CREATED_BY:FEEDBACK:ID:PAGE_ID:PAGE_NAME:RATING:RATING_ICON:RESPONSE:STATUS:UPDATED:UPDATED_BY:USER_AGENT:'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456444199712416048)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61456413572641416015)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456444493780416051)
,p_name=>'P10053_ATTACHMENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61456413572641416015)
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
 p_id=>wwv_flow_imp.id(61456413488402416015)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(61456413572641416015)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456445270990416052)
,p_event_id=>wwv_flow_imp.id(61456413488402416015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61456413572641416015)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456445752663416052)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Get File ID'
,p_attribute_02=>'APEX$TEAM_DEV_FILES'
,p_attribute_03=>'P10053_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2501008253685089885
);
end;
/
prompt --application/pages/page_10054
begin
wwv_flow_imp_page.create_page(
 p_id=>10054
,p_name=>'Feedback'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(61456301245420415796)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: #4caf50; }',
'.feedback-neutral { color: #eb9f41; }',
'.feedback-negative { color: #f44336; }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(61456299276325415787)
,p_required_patch=>wwv_flow_imp.id(61456296838543415780)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'n/a',
''))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456412848015416015)
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
 p_id=>wwv_flow_imp.id(61456413026400416015)
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
 p_id=>wwv_flow_imp.id(61456413130294416015)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61456413026400416015)
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
 p_id=>wwv_flow_imp.id(61456413175239416015)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61456413026400416015)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61456413261308416015)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(61456413026400416015)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P10054_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456428070743416031)
,p_name=>'P10054_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61456412848015416015)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456428468878416031)
,p_name=>'P10054_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(61456412848015416015)
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
 p_id=>wwv_flow_imp.id(61456428894134416031)
,p_name=>'P10054_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(61456412848015416015)
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
 p_id=>wwv_flow_imp.id(61456429249487416031)
,p_name=>'P10054_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(61456412848015416015)
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
 p_id=>wwv_flow_imp.id(61456429692862416032)
,p_name=>'P10054_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(61456412848015416015)
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
 p_id=>wwv_flow_imp.id(61456430101519416032)
,p_name=>'P10054_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(61456412848015416015)
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
 p_id=>wwv_flow_imp.id(61456430537424416032)
,p_name=>'P10054_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(61456412848015416015)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_lov=>'.'||wwv_flow_imp.id(61456430599934416032)||'.'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456432806218416033)
,p_name=>'P10054_ATTACHMENT_DISPLAY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(61456412848015416015)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Attachment'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''<a href="''||apex_util.get_blob_file_src(''P10053_ATTACHMENT'',id)||''">''||filename||''</a>''',
'  from apex$team_dev_files',
' where component_id = :P10054_ID',
'   and component_type = ''FEEDBACK'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when_type=>'NEVER'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'format', 'HTML_UNSAFE',
  'send_on_page_submit', 'N')).to_clob
,p_item_comment=>'select 1 from apex$team_dev_files where component_id = :P10054_ID and component_type = ''FEEDBACK'''
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456433198130416033)
,p_name=>'P10054_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(61456412848015416015)
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
 p_id=>wwv_flow_imp.id(61456413390488416015)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(61456413175239416015)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61456434009899416033)
,p_event_id=>wwv_flow_imp.id(61456413390488416015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456434457742416034)
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
'    where feedback_id = :P10054_ID',
') loop',
'   :P10054_PAGE_ID := c1.page_id||''. ''||c1.page_name;',
'   :P10054_FILED := c1.filed;',
'   :P10054_RATING_ICON := c1.rating_icon;',
'   :P10054_FEEDBACK := c1.feedback;',
'   :P10054_RESPONSE := c1.public_response;',
'   :P10054_FEEDBACK_STATUS := c1.feedback_status;',
'   :P10054_USER_AGENT := c1.http_user_agent;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2500996958764089867
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456434889816416034)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.reply_to_feedback (',
'    p_feedback_id        => :P10054_ID,',
'    p_status             => :P10054_FEEDBACK_STATUS,',
'    p_public_response    => :P10054_RESPONSE );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(61456413130294416015)
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>2500997390838089867
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456435267946416034)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.delete_feedback (',
'    p_feedback_id        => :P10054_ID );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(61456413261308416015)
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>2500997768968089867
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456435723800416035)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'E.PROPERTY.BUTTON_ACTION.LOV.RESET.D'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(61456413261308416015)
,p_internal_uid=>2500998224822089868
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61456436076453416036)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2500998577475089869
);
end;
/
prompt --application/pages/page_10060
begin
wwv_flow_imp_page.create_page(
 p_id=>10060
,p_name=>'About'
,p_alias=>'HELP'
,p_step_title=>'About'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(61456301245420415796)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(61456297249915415780)
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456446606940416053)
,p_plug_name=>'About Page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>'Text about this application can be placed here.'
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
,p_alias=>'PAGE_HELP'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(61456297249915415780)
,p_dialog_chained=>'N'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61456447314413416053)
,p_plug_name=>'Search Dialog'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in ',
'(',
'    select page_title, help_text ',
'      from apex_application_pages',
'     where page_id = :P10061_PAGE_ID ',
'       and application_id = :APP_ID',
')',
'loop',
'    if c1.help_text is null then',
'        sys.htp.p(''No help is available for this page.'');',
'    else',
'        if substr(c1.help_text, 1, 3) != ''<p>'' then',
'            sys.htp.p(''<p>'');',
'        end if;',
'',
'        sys.htp.p(apex_application.do_substitutions(c1.help_text));',
'',
'        if substr(trim(c1.help_text), -4) != ''</p>'' then',
'            sys.htp.p(''</p>'');',
'        end if;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61456447659131416053)
,p_name=>'P10061_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61456447314413416053)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(58993099508472181136)
,p_welcome_message=>'This application installer will guide you through the process of creating your database objects and seed data.'
,p_configuration_message=>'You can configure the following attributes of your application.'
,p_build_options_message=>'You can choose to include the following build options.'
,p_validation_message=>'The following validations will be performed to ensure your system is compatible with this application.'
,p_install_message=>'Please confirm that you would like to install this application''s supporting objects.'
,p_upgrade_message=>'The application installer has detected that this application''s supporting objects were previously installed.  This wizard will guide you through the process of upgrading these supporting objects.'
,p_upgrade_confirm_message=>'Please confirm that you would like to install this application''s supporting objects.'
,p_upgrade_success_message=>'Your application''s supporting objects have been installed.'
,p_upgrade_failure_message=>'Installation of database objects and seed data has failed.'
,p_deinstall_success_message=>'Deinstallation complete.'
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DROP PACKAGE APXSHR_LOV_PACKAGE;',
'',
'DROP SEQUENCE APXSHR_HISTORY_SEQ;',
'',
'DROP VIEW APXSHR_HISTORY_V;',
'',
'DROP TABLE APXSHR_HISTORY; ',
'  ',
'DROP VIEW APXSHR_LOV_VIEW; ',
'',
'DROP TABLE APXSHR_LOV_DETAILS;',
'',
'DROP TABLE APXSHR_LOV_NAME; ',
'',
'DELETE APXSHR_PGM_OPTIONS WHERE APP_ALIAS = ''SHARED_LOVS'';',
'/'))
,p_deinstall_message=>'This script will remove all the Tables and Packages required for this application to run.'
);
end;
/
prompt --application/deployment/install/install_install_db_objects
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(58993462712401161150)
,p_install_id=>wwv_flow_imp.id(58993099508472181136)
,p_name=>'Install DB Objects'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
';',
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
prompt --application/deployment/install/install_seed_shared_lov_name_data
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(103658452688673909410)
,p_install_id=>wwv_flow_imp.id(58993099508472181136)
,p_name=>'Seed SHARED LOV NAME Data'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- SEED DATA',
'begin',
'    begin',
'        INSERT INTO APXSHR_LOV_NAME (ID,APP_ALIAS,LOV_NA,LOV_DESC,SORT_ORDER_NO,ACTIVE_IND,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GLOBAL_LOV_IND,ALLOW_USER_DELETE_IND) VALUES (NULL,''@APXSHR_GLOBAL_LOVS'',''Global Test Domain'',''Demonstration'',10,''Y'',to_d'
||'ate(''25/06/2025 03:03:07'', ''dd/mm/rrrr hh:mi:ss''),''nobody'',to_date(''25/06/2025 03:03:07'', ''dd/mm/rrrr hh:mi:ss''),''nobody'',''Y'',''N'');',
'',
'        exception when DUP_VAL_ON_INDEX then NULL;',
'    end;',
'',
'    begin',
'        INSERT INTO APXSHR_LOV_NAME (ID,APP_ALIAS,LOV_NA,LOV_DESC,SORT_ORDER_NO,ACTIVE_IND,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GLOBAL_LOV_IND,ALLOW_USER_DELETE_IND) VALUES (NULL,''TEST'',''Test Domain'',''Demonstration'',10,''Y'',to_date(''25/06/2025 03:03:'
||'07'', ''dd/mm/rrrr hh:mi:ss''),''nobody'',to_date(''25/06/2025 03:03:07'', ''dd/mm/rrrr hh:mi:ss''),''nobody'',''N'',''Y'');',
'',
'        exception when DUP_VAL_ON_INDEX then NULL;',
'    end;',
'end;'))
);
end;
/
prompt --application/deployment/install/install_seed_shared_lov_details_data
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(103666375992748666973)
,p_install_id=>wwv_flow_imp.id(58993099508472181136)
,p_name=>'Seed SHARED LOV DETAILS Data'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- SEED DATA',
'declare',
'    l_id NUMBER;  -- used to hold the FK for the LOV_DETAILS table',
'begin',
'    begin',
'        -- get the FK for the Global Test Domain',
'        select ID into l_id from APXSHR_LOV_NAME where APP_ALIAS = ''@APXSHR_GLOBAL_LOVS'' and LOV_NA = ''Global Test Domain'';',
'',
'        INSERT INTO APXSHR_LOV_DETAILS (ID,LOV_NAME_ID,LOV_DISPLAY_VAL,LOV_DISPLAY_DESC,SORT_ORDER_NO,ACTIVE_IND,EFF_START_DA,EFF_END_DA,CREATED,CREATED_BY,UPDATED,UPDATED_BY,ALLOW_USER_DELETE_IND) VALUES (NULL,l_id,''Test Display Value 1'','''',10,''Y'',t'
||'o_date('''', ''dd/mm/rrrr hh:mi:ss''),to_date('''', ''dd/mm/rrrr hh:mi:ss''),to_date(''25/06/2025 03:03:30'', ''dd/mm/rrrr hh:mi:ss''),''nobody'',to_date(''25/06/2025 03:03:30'', ''dd/mm/rrrr hh:mi:ss''),''nobody'',''N'');',
'',
'        INSERT INTO APXSHR_LOV_DETAILS (ID,LOV_NAME_ID,LOV_DISPLAY_VAL,LOV_DISPLAY_DESC,SORT_ORDER_NO,ACTIVE_IND,EFF_START_DA,EFF_END_DA,CREATED,CREATED_BY,UPDATED,UPDATED_BY,ALLOW_USER_DELETE_IND) VALUES (NULL,l_id,''Test Display Value 2'','''',20,''Y'',t'
||'o_date('''', ''dd/mm/rrrr hh:mi:ss''),to_date('''', ''dd/mm/rrrr hh:mi:ss''),to_date(''25/06/2025 03:03:46'', ''dd/mm/rrrr hh:mi:ss''),''nobody'',to_date(''25/06/2025 03:03:46'', ''dd/mm/rrrr hh:mi:ss''),''nobody'',''N'');',
'    ',
'        exception when OTHERS then NULL;',
'',
'    end; -- global domains',
'',
'    begin',
'',
'        select ID into l_id from APXSHR_LOV_NAME where APP_ALIAS = ''TEST'' and LOV_NA = ''Test Domain'';',
'',
'        INSERT INTO APXSHR_LOV_DETAILS (ID,LOV_NAME_ID,LOV_DISPLAY_VAL,LOV_DISPLAY_DESC,SORT_ORDER_NO,ACTIVE_IND,EFF_START_DA,EFF_END_DA,CREATED,CREATED_BY,UPDATED,UPDATED_BY,ALLOW_USER_DELETE_IND) VALUES (NULL,l_id,''Test Display Value 1'','''',10,''Y'',t'
||'o_date('''', ''dd/mm/rrrr hh:mi:ss''),to_date('''', ''dd/mm/rrrr hh:mi:ss''),to_date(''25/06/2025 03:03:30'', ''dd/mm/rrrr hh:mi:ss''),''nobody'',to_date(''25/06/2025 03:03:30'', ''dd/mm/rrrr hh:mi:ss''),''nobody'',''Y'');',
'',
'        INSERT INTO APXSHR_LOV_DETAILS (ID,LOV_NAME_ID,LOV_DISPLAY_VAL,LOV_DISPLAY_DESC,SORT_ORDER_NO,ACTIVE_IND,EFF_START_DA,EFF_END_DA,CREATED,CREATED_BY,UPDATED,UPDATED_BY,ALLOW_USER_DELETE_IND) VALUES (NULL,l_id,''Test Display Value 2'','''',20,''Y'',t'
||'o_date('''', ''dd/mm/rrrr hh:mi:ss''),to_date('''', ''dd/mm/rrrr hh:mi:ss''),to_date(''25/06/2025 03:03:46'', ''dd/mm/rrrr hh:mi:ss''),''nobody'',to_date(''25/06/2025 03:03:46'', ''dd/mm/rrrr hh:mi:ss''),''nobody'',''Y'');',
'',
'        exception  when OTHERS then NULL;',
'    end; -- test domain',
'end; -- script'))
);
end;
/
prompt --application/deployment/install/install_load_apxshr_pgm_opts_for_alias
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(109415308791197573681)
,p_install_id=>wwv_flow_imp.id(58993099508472181136)
,p_name=>'Load APXSHR_PGM_OPTS for alias'
,p_sequence=>40
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    --APXSHR_PGM_OPTIONS: 5/10000 rows exported, APEX$DATA$PKG/APXSHR_PGM_OPTIONS$370288',
'    apex_data_install.load_supporting_object_data(p_table_name => ''APXSHR_PGM_OPTIONS'', p_delete_after_install => false );',
'end;'))
);
end;
/
prompt --application/deployment/install/install_create_rest_service
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(104639620205761787057)
,p_install_id=>wwv_flow_imp.id(58993099508472181136)
,p_name=>'Create REST Service'
,p_sequence=>50
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'    !!! NOTE:  You will need to change the p_url_mapping_pattern value to match your TARGET schema alias.  !!!',
'    See lines 18 & 19 below.  You MAY also have to disable RESTful Acces for the Target ORDS schema prior to running this (and then re-enable it).',
'*/',
'-- Generated by ORDS REST Data Services 25.2.0.r1651520',
'-- Schema: WKSP_SDVLOWCODE  Date: Sat Nov 01 10:57:28 2025 ',
'--',
'        ',
'DECLARE',
'  l_roles     OWA.VC_ARR;',
'  l_modules   OWA.VC_ARR;',
'  l_patterns  OWA.VC_ARR;',
'',
'BEGIN',
'  ORDS.ENABLE_SCHEMA(',
'      p_enabled             => TRUE,',
'      p_url_mapping_type    => ''BASE_PATH'',',
'      -- FOLLOWING LINE WILL NEED TO BE CHANGED TO MAP YOUR SCHEMA ALIAS!!!',
'      p_url_mapping_pattern => ''scott001'',',
'      p_auto_rest_auth      => FALSE);',
'',
'  ORDS.DEFINE_MODULE(',
'      p_module_name    => ''shared_lovs'',',
'      p_base_path      => ''/shared_lovs/name_and_details/'',',
'      p_items_per_page => 25,',
'      p_status         => ''PUBLISHED'',',
'      p_comments       => NULL);',
'',
'  ORDS.DEFINE_TEMPLATE(',
'      p_module_name    => ''shared_lovs'',',
'      p_pattern        => ''by_alias/:my_alias'',',
'      p_priority       => 0,',
'      p_etag_type      => ''HASH'',',
'      p_etag_query     => NULL,',
'      p_comments       => NULL);',
'',
'  ORDS.DEFINE_HANDLER(',
'      p_module_name    => ''shared_lovs'',',
'      p_pattern        => ''by_alias/:my_alias'',',
'      p_method         => ''GET'',',
'      p_source_type    => ''json/collection'',',
'      p_mimes_allowed  => NULL,',
'      p_comments       => NULL,',
'      p_source         => ',
'''select',
'     name.id as name_id',
'    ,name.app_alias',
'    ,name.lov_na',
'    ,name.lov_desc',
'    ,name.sort_order_no as name_sort_order_no',
'    ,name.global_lov_ind',
'    ,name.allow_user_delete_ind as name_allow_user_delete_ind',
'    ,name.created as name_created',
'    ,name.created_by as name_created_by',
'    ,name.updated as name_updated',
'    ,name.updated_by as name_updated_by',
'    ,name.active_ind as name_active_ind',
'    ,det.id as detail_id',
'    ,det.lov_display_val',
'    ,det.lov_display_desc',
'    ,det.sort_order_no as det_sort_order_no',
'    ,det.active_ind as det_active_ind',
'    ,det.allow_user_delete_ind as det_allow_user_delete_ind',
'    ,det.eff_start_da',
'    ,det.eff_end_da',
'    ,det.created as det_created',
'    ,det.created_by as det_created_by',
'    ,det.updated as det_updated',
'    ,det.updated_by as det_updated_by',
'from APXSHR_LOV_NAME name',
'join APXSHR_LOV_DETAILS det on det.LOV_NAME_ID = name.ID',
'where APP_ALIAS = :my_alias'');',
'',
'  ORDS.DEFINE_PARAMETER(',
'      p_module_name        => ''shared_lovs'',',
'      p_pattern            => ''by_alias/:my_alias'',',
'      p_method             => ''GET'',',
'      p_name               => ''MY_ALIAS'',',
'      p_bind_variable_name => ''my_alias'',',
'      p_source_type        => ''HEADER'',',
'      p_param_type         => ''STRING'',',
'      p_access_method      => ''IN'',',
'      p_comments           => NULL);',
'',
'',
'COMMIT;',
'',
'END;'))
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
