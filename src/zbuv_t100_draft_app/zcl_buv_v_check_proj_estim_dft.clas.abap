CLASS zcl_buv_v_check_proj_estim_dft DEFINITION
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



CLASS zcl_buv_v_check_proj_estim_dft IMPLEMENTATION.


  METHOD /bobf/if_frw_validation~execute.

    DATA lt_projects TYPE ztbuv_i_projectdraft_tp.

    io_read->retrieve(
      EXPORTING
        iv_node       = is_ctx-node_key
        it_key        = it_key
      IMPORTING
        et_data       = lt_projects ).

    DATA(ls_project) = lt_projects[ 1 ].

    CHECK ls_project-projectestimation NOT BETWEEN 0 AND 5.

    eo_message = /bobf/cl_frw_factory=>get_message( ).
    eo_message->add_message(
      EXPORTING is_msg       = VALUE #(
                                 msgid = '/BOBF/FRW'
                                 msgno = 2
                                 msgv1 = 'The Estimation should be between 0 and 5'
                                 msgty = /bobf/cm_frw=>co_severity_error )
                iv_node       = is_ctx-node_key
                iv_key        = ls_project-key
                iv_attribute  = zif_buv_i_projectdraft_tp_c=>sc_node_attribute-zbuv_i_projectdraft_tp-projectestimation
                iv_lifetime   = /bobf/cm_frw=>co_lifetime_transition ).

    APPEND VALUE #( key = ls_project-key ) TO et_failed_key.

  ENDMETHOD.
ENDCLASS.
