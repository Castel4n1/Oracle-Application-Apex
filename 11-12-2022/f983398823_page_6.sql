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
--   Date and Time:   13:50 Domingo Dezembro 11, 2022
--   Exported By:     KAUE1BOMFIM@GMAIL.COM
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 6
--   Manifest End
--   Version:         22.2.0
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00006
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>6);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>unistr('Funcion\00E1rio')
,p_alias=>unistr('FUNCION\00C1RIO')
,p_step_title=>unistr('Funcion\00E1rio')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KAUE1BOMFIM@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20221211134743'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27000275028390209682)
,p_plug_name=>unistr('Funcion\00E1rio')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(26231428877073061275)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'FUNCIONARIO'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>unistr('Funcion\00E1rio')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(27000275182808209682)
,p_name=>unistr('Funcion\00E1rio')
,p_max_row_count_message=>unistr('A contagem m\00E1xima de linhas deste relat\00F3rio \00E9 #MAX_ROW_COUNT# linhas. Aplique um filtro para reduzir o n\00FAmero de registros em sua consulta.')
,p_no_data_found_message=>unistr('Dados n\00E3o encontrados.')
,p_base_pk1=>'ID_FUNCIONARIO'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:RP:P7_ID_FUNCIONARIO:\#ID_FUNCIONARIO#\'
,p_detail_link_text=>'<span aria-label="Editar"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'KAUE1BOMFIM@GMAIL.COM'
,p_internal_uid=>27000275182808209682
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27000275564903209685)
,p_db_column_name=>'ID_FUNCIONARIO'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'Id Funcionario'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27000275982768209685)
,p_db_column_name=>'STRFUNCIONARIO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Strfuncionario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27000276341731209686)
,p_db_column_name=>'DTMATUALIZACAO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Dtmatualizacao'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(27000284389951210624)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'270002844'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_FUNCIONARIO:STRFUNCIONARIO:DTMATUALIZACAO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27000278516476209688)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27000276814923209686)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27000275028390209682)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(26231511536401061312)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Criar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:7::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27000277184135209686)
,p_name=>unistr('Editar Relat\00F3rio - Caixa de Di\00E1logo Fechada')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(27000275028390209682)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27000277687087209687)
,p_event_id=>wwv_flow_imp.id(27000277184135209686)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27000275028390209682)
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
