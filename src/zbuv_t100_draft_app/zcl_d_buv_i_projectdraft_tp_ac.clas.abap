CLASS zcl_d_buv_i_projectdraft_tp_ac DEFINITION
  PUBLIC
  INHERITING FROM /bobf/cl_lib_d_supercl_simple
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS /bobf/if_frw_determination~execute
        REDEFINITION .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_d_buv_i_projectdraft_tp_ac IMPLEMENTATION.


  METHOD /bobf/if_frw_determination~execute.

    CONSTANTS status_done TYPE zbuv_status VALUE 'DN'.

    DATA lt_projects TYPE ztbuv_i_projectdraft_tp.

    io_read->retrieve(
      EXPORTING
        iv_node  = is_ctx-node_key
        it_key   = it_key
      IMPORTING
        et_data  = lt_projects ).

    DATA(lo_property_helper) =
      NEW /bobf/cl_lib_h_set_property( io_modify  = io_modify
                                       is_context = is_ctx ).

    LOOP AT lt_projects ASSIGNING FIELD-SYMBOL(<ls_project>).

      DATA(lv_value) = COND #( WHEN <ls_project>-projectstatus = status_done THEN abap_true
                               ELSE abap_false ).
      DATA(lv_opposite_value) = CONV abap_bool( boolc( lv_value = abap_false ) ).

      lo_property_helper->set_attribute_read_only(
        iv_attribute_name = zif_buv_i_projectdraft_tp_c=>sc_node_attribute-zbuv_i_projectdraft_tp-projectid
        iv_key            = <ls_project>-key
        iv_value          = lv_value ).

      lo_property_helper->set_attribute_read_only(
        iv_attribute_name = zif_buv_i_projectdraft_tp_c=>sc_node_attribute-zbuv_i_projectdraft_tp-projectname
        iv_key            = <ls_project>-key
        iv_value          = lv_value ).

      lo_property_helper->set_attribute_read_only(
        iv_attribute_name = zif_buv_i_projectdraft_tp_c=>sc_node_attribute-zbuv_i_projectdraft_tp-projectestimation
        iv_key            = <ls_project>-key
        iv_value          = lv_value ).

      lo_property_helper->set_node_delete_enabled(
        iv_key            = <ls_project>-key
        iv_value          = lv_opposite_value ).

      lo_property_helper->set_action_enabled(
        iv_action_key = zif_buv_i_projectdraft_tp_c=>sc_action-zbuv_i_projectdraft_tp-complete_project
        iv_key             = <ls_project>-key
        iv_value           = lv_opposite_value ).

      lo_property_helper->set_association_create_enabled(
        iv_association_key = zif_buv_i_projectdraft_tp_c=>sc_association-zbuv_i_projectdraft_tp-_task_tpd
        iv_key             = <ls_project>-key
        iv_value           = lv_opposite_value ).

    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
