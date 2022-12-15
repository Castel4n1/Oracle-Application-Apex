prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run the script connected to SQL*Plus as the owner (parsing schema)
-- of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>26023280745202423227
,p_default_application_id=>983398823
,p_default_id_offset=>0
,p_default_owner=>'WKSP_ESTUDO2022'
);
end;
/
 
prompt APPLICATION 983398823 - Cobrança
--
-- Application Export:
--   Application:     983398823
--   Name:            Cobrança
--   Date and Time:   00:35 Thursday December 15, 2022
--   Exported By:     KAUE1BOMFIM@GMAIL.COM
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 1
--   Manifest End
--   Version:         22.2.0
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00001
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>1);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>unistr('Cobran\00E7a')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_last_updated_by=>'KAUE1BOMFIM@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20221215001146'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28736908244249779403)
,p_plug_name=>'BTN REDIRECT'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(26231438671301061279)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_HELP_TEXT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>unistr('Aqui voc\00EA \00E9 redirecionado para qual acesso quer ter')
,p_plug_footer=>'Seja bem vindo ao programa!'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28736908772468779408)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(28736908244249779403)
,p_button_name=>'BTN_PREF'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--warning:t-Button--stretch:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(26231511536401061312)
,p_button_image_alt=>'<b>Redirecionado para Tabela de Prefeituras</b>'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28736908836064779409)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(28736908244249779403)
,p_button_name=>'BTN_FUNC'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--stretch:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(26231511536401061312)
,p_button_image_alt=>unistr('<b>Redirecionado para Tabela de Funcion\00E1rios</b>')
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
