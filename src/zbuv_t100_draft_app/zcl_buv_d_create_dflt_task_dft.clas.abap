CLASS zcl_buv_d_create_dflt_task_dft DEFINITION
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



CLASS zcl_buv_d_create_dflt_task_dft IMPLEMENTATION.


  METHOD /bobf/if_frw_determination~execute.

    DATA lt_projects TYPE ztbuv_i_projectdraft_tp.

    io_read->retrieve(
      EXPORTING
        iv_node = is_ctx-node_key
        it_key  = it_key
      IMPORTING
        et_data = lt_projects ).

    LOOP AT lt_projects  ASSIGNING FIELD-SYMBOL(<ls_project>).

      CHECK <ls_project>-hasactiveentity = space
        AND <ls_project>-isactiveentity  = space.

      SELECT MAX( projectid )
        FROM zbuv_d_project
        INTO @DATA(lv_maxID).

      <ls_project>-projectid         = condense( val = CONV string( lv_maxID + 1 ) ).
      <ls_project>-projectname       = |Project { <ls_project>-projectid }|.
      <ls_project>-projectestimation = 3.
      <ls_project>-projectstatus     = 'NW'.

      io_modify->update(
        EXPORTING
          iv_node           = is_ctx-node_key
          iv_key            = <ls_project>-key
          is_data           = REF #( <ls_project> )
          it_changed_fields = VALUE #(
            ( zif_buv_i_projectdraft_tp_c=>sc_node_attribute-zbuv_i_projectdraft_tp-projectid )
            ( zif_buv_i_projectdraft_tp_c=>sc_node_attribute-zbuv_i_projectdraft_tp-projectname )
            ( zif_buv_i_projectdraft_tp_c=>sc_node_attribute-zbuv_i_projectdraft_tp-projectestimation )
            ( zif_buv_i_projectdraft_tp_c=>sc_node_attribute-zbuv_i_projectdraft_tp-projectstatus ) ) ).


      DATA(ls_task) =
        VALUE zsbuv_i_taskdraft_tp_d(
          taskid         = |{ <ls_project>-projectid }-DefaultTaskID |
          taskname       = 'Default Task Name'
          taskestimation = 3
          taskstatus     = 'NW'
          taskdate       = sy-datum ).

      io_modify->create(
        EXPORTING
          iv_node              = zif_buv_i_projectdraft_tp_c=>sc_node-zbuv_i_taskdraft_tp
          is_data              = REF #( ls_task )
            iv_assoc_key       = zif_buv_i_projectdraft_tp_c=>sc_association-zbuv_i_projectdraft_tp-_task_tpd
            iv_source_node_key = zif_buv_i_projectdraft_tp_c=>sc_node-zbuv_i_projectdraft_tp
            iv_source_key      = <ls_project>-key
          IMPORTING
            ev_key             = DATA(lv_task_key) ).

    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
