CLASS zcl_buv_v_check__task_estimati DEFINITION
  PUBLIC
  INHERITING FROM /bobf/cl_lib_v_supercl_simple
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS /bobf/if_frw_validation~execute
        REDEFINITION .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_buv_v_check__task_estimati IMPLEMENTATION.


  METHOD /bobf/if_frw_validation~execute.

    DATA lt_tasks TYPE ztbuv_i_taskactive_tp.

    io_read->retrieve(
      EXPORTING
        iv_node       = is_ctx-node_key
        it_key        = it_key
      IMPORTING
        et_data       = lt_tasks ).

    DATA(ls_task) = lt_tasks[ 1 ].

    CHECK ls_task-taskestimation NOT BETWEEN 0 AND 5.

    eo_message = /bobf/cl_frw_factory=>get_message( ).
    eo_message->add_message(
      EXPORTING is_msg       = VALUE #(
                                 msgid = '/BOBF/FRW'
                                 msgno = 2
                                 msgv1 = 'The Estimation should be between 0 and 5'
                                 msgty = /bobf/cm_frw=>co_severity_error )
                iv_node       = is_ctx-node_key
                iv_key        = ls_task-key
                iv_attribute  = zif_buv_i_projectactive_tp_c=>sc_node_attribute-zbuv_i_taskactive_tp-taskestimation
                iv_lifetime   = /bobf/cm_frw=>co_lifetime_transition ).

    APPEND VALUE #( key = ls_task-key ) TO et_failed_key.

  ENDMETHOD.

ENDCLASS.
