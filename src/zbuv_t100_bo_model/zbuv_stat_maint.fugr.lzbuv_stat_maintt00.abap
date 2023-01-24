*---------------------------------------------------------------------*
*    view related data declarations
*   generation date: 26.07.2021 at 00:15:43
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
*...processing: ZBUV_D_STATUS...................................*
DATA:  BEGIN OF STATUS_ZBUV_D_STATUS                 .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZBUV_D_STATUS                 .
CONTROLS: TCTRL_ZBUV_D_STATUS
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZBUV_D_STATUS                 .
TABLES: ZBUV_D_STATUS                  .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
