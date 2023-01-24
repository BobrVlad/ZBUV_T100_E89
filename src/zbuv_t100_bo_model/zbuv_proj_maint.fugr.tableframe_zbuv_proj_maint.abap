*---------------------------------------------------------------------*
*    program for:   TABLEFRAME_ZBUV_PROJ_MAINT
*   generation date: 25.07.2021 at 19:13:51
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
FUNCTION TABLEFRAME_ZBUV_PROJ_MAINT    .

  PERFORM TABLEFRAME TABLES X_HEADER X_NAMTAB DBA_SELLIST DPL_SELLIST
                            EXCL_CUA_FUNCT
                     USING  CORR_NUMBER VIEW_ACTION VIEW_NAME.

ENDFUNCTION.
