class ZCL_D_BUV_I_TASKACTIVE_TP_ACTI definition
  public
  inheriting from /BOBF/CL_LIB_D_SUPERCL_SIMPLE
  final
  create public .

public section.

  methods /BOBF/IF_FRW_DETERMINATION~EXECUTE
    redefinition .
protected section.
private section.
ENDCLASS.



CLASS ZCL_D_BUV_I_TASKACTIVE_TP_ACTI IMPLEMENTATION.


  METHOD /bobf/if_frw_determination~execute.

    CONSTANTS status_done TYPE zbuv_status VALUE 'DN'.

    DATA lt_tasks TYPE ztbuv_i_taskactive_tp.

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
        iv_attribute_name = zif_buv_i_projectactive_tp_c=>sc_node_attribute-zbuv_i_taskactive_tp-taskid
        iv_key            = <ls_task>-key
        iv_value          = lv_value ).

      lo_property_helper->set_attribute_read_only(
        iv_attribute_name = zif_buv_i_projectactive_tp_c=>sc_node_attribute-zbuv_i_taskactive_tp-taskname
        iv_key            = <ls_task>-key
        iv_value          = lv_value ).

      lo_property_helper->set_attribute_read_only(
        iv_attribute_name = zif_buv_i_projectactive_tp_c=>sc_node_attribute-zbuv_i_taskactive_tp-taskestimation
        iv_key            = <ls_task>-key
        iv_value          = lv_value ).

      lo_property_helper->set_attribute_read_only(
        iv_attribute_name = zif_buv_i_projectactive_tp_c=>sc_node_attribute-zbuv_i_taskactive_tp-taskdate
        iv_key            = <ls_task>-key
        iv_value          = lv_value ).

      lo_property_helper->set_node_delete_enabled(
        iv_key            = <ls_task>-key
        iv_value          =  lv_opposite_value ).

      lo_property_helper->set_action_enabled(
        iv_action_key = zif_buv_i_projectactive_tp_c=>sc_action-zbuv_i_taskactive_tp-complete_task
        iv_key             = <ls_task>-key
        iv_value           = lv_opposite_value ).

    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
