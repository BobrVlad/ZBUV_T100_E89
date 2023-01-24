CLASS zcl_buv_a_complete_task DEFINITION
  PUBLIC
  INHERITING FROM /bobf/cl_lib_a_supercl_simple
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS /bobf/if_frw_action~execute
        REDEFINITION .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_buv_a_complete_task IMPLEMENTATION.


  METHOD /bobf/if_frw_action~execute.

    CONSTANTS status_done TYPE zbuv_status VALUE 'DN'.
    DATA lr_task TYPE REF TO zsbuv_i_taskdraft_tp.
    CREATE DATA lr_task.

    CHECK lr_task->taskstatus <> status_done.
    lr_task->taskstatus = status_done.

    LOOP AT it_key ASSIGNING FIELD-SYMBOL(<ls_key>).

      io_modify->update(
        EXPORTING
          iv_node           = is_ctx-node_key
          iv_key            = <ls_key>-key
          is_data           = lr_task
          it_changed_fields = VALUE #(
            ( zif_buv_i_projectdraft_tp_c=>sc_node_attribute-zbuv_i_taskdraft_tp-taskstatus ) ) ).

      io_modify->end_modify(
        EXPORTING
          iv_process_immediately = abap_true ).

    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
