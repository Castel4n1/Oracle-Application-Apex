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
--     PAGE: 7
--   Manifest End
--   Version:         22.2.0
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00007
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>7);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>unistr('Funcion\00E1rio Form')
,p_alias=>unistr('FUNCION\00C1RIO-FORM')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Funcion\00E1rio Form')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(26231336789466061234)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'KAUE1BOMFIM@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20221211134733'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27000267476056209672)
,p_plug_name=>unistr('Funcion\00E1rio Form')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(26231372693897061251)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'FUNCIONARIO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27000270223756209678)
,p_plug_name=>unistr('Bot\00F5es')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(26231375472953061252)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27000270665455209678)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27000270223756209678)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(26231511536401061312)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27000272097471209679)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27000270223756209678)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(26231511536401061312)
,p_button_image_alt=>'Excluir'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P7_ID_FUNCIONARIO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27000272435197209680)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(27000270223756209678)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(26231511536401061312)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Aplicar Altera\00E7\00F5es')
,p_button_position=>'NEXT'
,p_button_condition=>'P7_ID_FUNCIONARIO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27000272889318209680)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(27000270223756209678)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(26231511536401061312)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Criar'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_ID_FUNCIONARIO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27000267753548209673)
,p_name=>'P7_ID_FUNCIONARIO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27000267476056209672)
,p_item_source_plug_id=>wwv_flow_imp.id(27000267476056209672)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Funcionario'
,p_source=>'ID_FUNCIONARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(26231509021331061311)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27000268155795209674)
,p_name=>'P7_STRFUNCIONARIO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27000267476056209672)
,p_item_source_plug_id=>wwv_flow_imp.id(27000267476056209672)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Strfuncionario'
,p_source=>'STRFUNCIONARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(26231510343368061312)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27000268565251209675)
,p_name=>'P7_DTMATUALIZACAO'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27000267476056209672)
,p_item_source_plug_id=>wwv_flow_imp.id(27000267476056209672)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dtmatualizacao'
,p_source=>'DTMATUALIZACAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(26231509021331061311)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
,p_attribute_15=>'FOCUS'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27000269058594209677)
,p_validation_name=>'P7_DTMATUALIZACAO must be timestamp'
,p_validation_sequence=>20
,p_validation=>'P7_DTMATUALIZACAO'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>unistr('#LABEL# deve ser um timestamp v\00E1lido.')
,p_associated_item=>wwv_flow_imp.id(27000268565251209675)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27000270720875209678)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27000270665455209678)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27000271597264209679)
,p_event_id=>wwv_flow_imp.id(27000270720875209678)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27000273621989209680)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(27000267476056209672)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('Processar o form Funcion\00E1rio Form')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27000274068155209681)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('Fechar Caixa de Di\00E1logo')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27000273265935209680)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(27000267476056209672)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Inicializar o form Funcion\00E1rio Form')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
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
