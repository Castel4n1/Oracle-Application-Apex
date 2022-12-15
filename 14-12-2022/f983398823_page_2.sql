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
--   Date and Time:   00:36 Thursday December 15, 2022
--   Exported By:     KAUE1BOMFIM@GMAIL.COM
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 2
--   Manifest End
--   Version:         22.2.0
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00002
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>2);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Prefeituras'
,p_alias=>'PREFEITURAS'
,p_step_title=>'Prefeituras'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'KAUE1BOMFIM@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20221215003254'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26575054190015461651)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(26231451076194061284)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26231335931506061234)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(26231513164922061313)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26575054750799461651)
,p_plug_name=>'Prefeituras'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(26231428877073061275)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'SELECT * FROM PREFEITURA'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Prefeituras'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(26575054816676461651)
,p_name=>'Prefeituras'
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
,p_owner=>'KAUE1BOMFIM@GMAIL.COM'
,p_internal_uid=>26575054816676461651
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26575055270664461655)
,p_db_column_name=>'ID_PREFEITURA'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id Prefeitura'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26575055635045461656)
,p_db_column_name=>'STRPREFEITURA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Prefeitura'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26575056030664461656)
,p_db_column_name=>'STRLOCALPREFEITURA'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Local Prefeitura'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26575083732630462510)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'265750838'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_PREFEITURA:STRPREFEITURA:STRLOCALPREFEITURA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18462369091396622444)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26575054750799461651)
,p_button_name=>'NOVO_REGISTRO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(26231511699430061312)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Novo Registro'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-notebook'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28736909136115779412)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26575054750799461651)
,p_button_name=>'Volta_Menu'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_imp.id(26231511536401061312)
,p_button_image_alt=>'Volta Menu'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
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
