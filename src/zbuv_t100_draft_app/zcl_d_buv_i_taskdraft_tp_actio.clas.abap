CLASS zcl_d_buv_i_taskdraft_tp_actio DEFINITION
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



CLASS zcl_d_buv_i_taskdraft_tp_actio IMPLEMENTATION.


  METHOD /bobf/if_frw_determination~execute.

    CONSTANTS status_done TYPE zbuv_status VALUE 'DN'.

    DATA lt_tasks TYPE ztbuv_i_taskdraft_tp.

    io_read->retrieve(
      EXPORTING
        iv_node  = is_ctx-node_key
        it_key   = it_key
      IMPORTING
        et_data  = lt_tasks ).

    DATA(lo_property_helper) =
      NEW /bobf/cl_lib_h_set_property( io_modify  = io_modify
                                       is_context = is_ctx ).

    LOOP AT lt_tasks ASSIGNING FIELD-SYMBOL(<ls_task>).

      DATA(lv_value) = COND #( WHEN <ls_task>-taskstatus = status_done THEN abap_true
                               ELSE abap_false ).
      DATA(lv_opposite_value) = CONV abap_bool( boolc( lv_value = abap_false ) ).

      lo_property_helper->set_attribute_read_only(
        iv_attribute_name = zif_buv_i_projectdraft_tp_c=>sc_node_attribute-zbuv_i_taskdraft_tp-taskid
        iv_key            = <ls_task>-key
        iv_value          = lv_value ).

      lo_property_helper->set_attribute_read_only(
        iv_attribute_name = zif_buv_i_projectdraft_tp_c=>sc_node_attribute-zbuv_i_taskdraft_tp-taskname
        iv_key            = <ls_task>-key
        iv_value          = lv_value ).

      lo_property_helper->set_attribute_read_only(
        iv_attribute_name = zif_buv_i_projectactive_tp_c=>sc_node_attribute-zbuv_i_taskactive_tp-taskestimation
        iv_key            = <ls_task>-key
        iv_value          = lv_value ).

      lo_property_helper->set_attribute_read_only(
        iv_attribute_name = zif_buv_i_projectdraft_tp_c=>sc_node_attribute-zbuv_i_taskdraft_tp-taskdate
        iv_key            = <ls_task>-key
        iv_value          = lv_value ).

      lo_property_helper->set_node_delete_enabled(
        iv_key            = <ls_task>-key
        iv_value          =  lv_opposite_value ).

      lo_property_helper->set_action_enabled(
        iv_action_key = zif_buv_i_projectdraft_tp_c=>sc_action-zbuv_i_taskdraft_tp-complete_task
        iv_key             = <ls_task>-key
        iv_value           = lv_opposite_value ).

    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
