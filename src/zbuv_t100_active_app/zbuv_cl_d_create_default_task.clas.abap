CLASS zbuv_cl_d_create_default_task DEFINITION
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



CLASS ZBUV_CL_D_CREATE_DEFAULT_TASK IMPLEMENTATION.


  METHOD /bobf/if_frw_determination~execute.

    DATA lt_projects TYPE ztbuv_i_projectactive_tp.

    io_read->retrieve(
      EXPORTING
        iv_node = is_ctx-node_key
        it_key  = it_key
      IMPORTING
        et_data = lt_projects ).

    LOOP AT lt_projects  ASSIGNING FIELD-SYMBOL(<ls_project>).

      DATA(ls_task) =
        VALUE zsbuv_i_taskactive_tp_d(
          taskid         = |{ <ls_project>-projectid }-DefaultTaskID |
          taskname       = 'Default Task Name'
          taskestimation = 3
          taskstatus     = 'NW'
          taskdate       = sy-datum ).

      io_modify->create(
        EXPORTING
          iv_node              = zif_buv_i_projectactive_tp_c=>sc_node-zbuv_i_taskactive_tp
          is_data              = REF #( ls_task )
            iv_assoc_key       = zif_buv_i_projectactive_tp_c=>sc_association-zbuv_i_projectactive_tp-_task_tp
            iv_source_node_key = zif_buv_i_projectactive_tp_c=>sc_node-zbuv_i_projectactive_tp
            iv_source_key      = <ls_project>-key
          IMPORTING
            ev_key             = DATA(lv_task_key) ).

    ENDLOOP.

*    io_modify->do_modify(
*      it_modification = REDUCE /bobf/t_frw_modification(
*        INIT lt_tab TYPE /bobf/t_frw_modification
*        FOR <ls_projects> IN lt_projects
*        LET ls_data_task = VALUE zsbuv_i_taskactive_tp_d(
*          taskid     = |{ <ls_projects>-projectid }-DefaultTask |
*          taskname   = 'Default Task'
*          taskstatus = 'NW'
*          taskdate   = sy-datum  ) IN
*        NEXT lt_tab = VALUE #( BASE lt_tab (
*          node        = zif_buv_i_projectactive_tp_c=>sc_node-zbuv_i_taskactive_tp
*          change_mode = /bobf/if_frw_c=>sc_modify_create
*          key         = /bobf/cl_frw_factory=>get_new_key( )
*          association = zif_buv_i_projectactive_tp_c=>sc_association-zbuv_i_projectactive_tp-_task_tp
*          source_node = zif_buv_i_projectactive_tp_c=>sc_node-zbuv_i_projectactive_tp
*          source_key  = <ls_projects>-key
*          data        = REF #( ls_data_task )
*          root_key    = <ls_projects>-key
*          ) ) ) ).
*
*    io_modify->end_modify(
*      IMPORTING
*        eo_message = eo_message ).

  ENDMETHOD.
ENDCLASS.
