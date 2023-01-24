CLASS zcl_buv_d_create_new_task DEFINITION
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



CLASS zcl_buv_d_create_new_task IMPLEMENTATION.


  METHOD /bobf/if_frw_determination~execute.

    DATA lt_tasks    TYPE ztbuv_i_taskactive_tp.
    DATA lt_projects TYPE ztbuv_i_projectactive_tp.

    io_read->retrieve(
      EXPORTING
        iv_node = is_ctx-node_key
        it_key  = it_key
      IMPORTING
        et_data = lt_tasks ).

    io_read->retrieve_by_association(
      EXPORTING
        iv_node        = is_ctx-node_key
        it_key         = it_key
        iv_association = zif_buv_i_projectactive_tp_c=>sc_association-zbuv_i_taskactive_tp-to_parent
        iv_fill_data   = abap_true
     IMPORTING
        et_data = lt_projects ).

    LOOP AT lt_tasks REFERENCE INTO DATA(lr_task).

      CHECK lr_task->taskid IS INITIAL.

      lr_task->taskid         = |{ VALUE #( lt_projects[ 1 ]-projectid OPTIONAL )  }-DefaultTaskID |.
      lr_task->taskname       = 'Default Task Name'.
      lr_task->taskestimation = 3.
      lr_task->taskstatus     = 'NW'.
      lr_task->taskdate       = sy-datum.

      io_modify->update(
        EXPORTING
          iv_node           = is_ctx-node_key
          iv_key            = lr_task->key
          is_data           = lr_task
          it_changed_fields = VALUE #(
            ( zif_buv_i_projectactive_tp_c=>sc_node_attribute-zbuv_i_taskactive_tp-taskid )
            ( zif_buv_i_projectactive_tp_c=>sc_node_attribute-zbuv_i_taskactive_tp-taskname )
            ( zif_buv_i_projectactive_tp_c=>sc_node_attribute-zbuv_i_taskactive_tp-taskestimation )
            ( zif_buv_i_projectactive_tp_c=>sc_node_attribute-zbuv_i_taskactive_tp-taskstatus )
            ( zif_buv_i_projectactive_tp_c=>sc_node_attribute-zbuv_i_taskactive_tp-taskdate ) ) ).

    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
