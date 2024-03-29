interface ZIF_BUV_I_PROJECTACTIVE_TP_C
  public .


  interfaces /BOBF/IF_LIB_CONSTANTS .

  constants:
    BEGIN OF SC_ACTION,
      BEGIN OF ZBUV_I_PROJECTACTIVE_TP,
 COMPLETE_PROJECT               TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EEBBBF0ABBBAC645EEA',
 CREATE_ZBUV_I_PROJECTACTIVE_TP TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBAFC0098632BC75F',
 DELETE_ZBUV_I_PROJECTACTIVE_TP TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBAFC0098632C475F',
 LOCK_ZBUV_I_PROJECTACTIVE_TP   TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBAFC0098632B075F',
 SAVE_ZBUV_I_PROJECTACTIVE_TP   TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBAFC0098632CC75F',
 UNLOCK_ZBUV_I_PROJECTACTIVE_TP TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBAFC0098632B475F',
 UPDATE_ZBUV_I_PROJECTACTIVE_TP TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBAFC0098632C075F',
 VALIDATE_ZBUV_I_PROJECTACTIVE_ TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBAFC0098632C875F',
      END OF ZBUV_I_PROJECTACTIVE_TP,
      BEGIN OF ZBUV_I_TASKACTIVE_TP,
 COMPLETE_TASK                  TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EEBBBEDE20CDF055ACC',
 CREATE_ZBUV_I_TASKACTIVE_TP    TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBAFC06EDCFAD676A',
 DELETE_ZBUV_I_TASKACTIVE_TP    TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBAFC06EDCFADE76A',
 SAVE_ZBUV_I_TASKACTIVE_TP      TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBAFC06EDCFAE676A',
 UPDATE_ZBUV_I_TASKACTIVE_TP    TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBAFC06EDCFADA76A',
 VALIDATE_ZBUV_I_TASKACTIVE_TP  TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBAFC06EDCFAE276A',
      END OF ZBUV_I_TASKACTIVE_TP,
    END OF SC_ACTION .
  constants:
    BEGIN OF SC_ACTION_ATTRIBUTE,
        BEGIN OF ZBUV_I_PROJECTACTIVE_TP,
        BEGIN OF LOCK_ZBUV_I_PROJECTACTIVE_TP,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
 LEGACY_DAC_KEY                 TYPE STRING VALUE 'LEGACY_DAC_KEY',
        END OF LOCK_ZBUV_I_PROJECTACTIVE_TP,
        BEGIN OF UNLOCK_ZBUV_I_PROJECTACTIVE_TP,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
 LEGACY_DAC_KEY                 TYPE STRING VALUE 'LEGACY_DAC_KEY',
        END OF UNLOCK_ZBUV_I_PROJECTACTIVE_TP,
      END OF ZBUV_I_PROJECTACTIVE_TP,
    END OF SC_ACTION_ATTRIBUTE .
  constants:
    BEGIN OF SC_ASSOCIATION,
      BEGIN OF ZBUV_I_PROJECTACTIVE_TP,
 LOCK                           TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBAFC0098632AE75F',
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBAFC0098632AA75F',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBAFC0098632BA75F',
 _TASK_TP                       TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBAFC06EDCFACA76A',
      END OF ZBUV_I_PROJECTACTIVE_TP,
      BEGIN OF ZBUV_I_PROJECTACTIVE_TP_LOCK,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBAFC0098632D275F',
      END OF ZBUV_I_PROJECTACTIVE_TP_LOCK,
      BEGIN OF ZBUV_I_PROJECTACTIVE_TP_MESSAG,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBAFC0098632D075F',
      END OF ZBUV_I_PROJECTACTIVE_TP_MESSAG,
      BEGIN OF ZBUV_I_PROJECTACTIVE_TP_PROPER,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBAFC0098632D475F',
      END OF ZBUV_I_PROJECTACTIVE_TP_PROPER,
      BEGIN OF ZBUV_I_TASKACTIVE_TP,
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBAFC06EDCFAD076A',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBAFC06EDCFAD476A',
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBAFC06EDCFAEA76A',
 TO_ROOT                        TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBAFC06EDCFAEC76A',
      END OF ZBUV_I_TASKACTIVE_TP,
      BEGIN OF ZBUV_I_TASKACTIVE_TP_MESSAGE,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBAFC06EDCFAEE76A',
      END OF ZBUV_I_TASKACTIVE_TP_MESSAGE,
      BEGIN OF ZBUV_I_TASKACTIVE_TP_PROPERTY,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBAFC06EDCFAF076A',
      END OF ZBUV_I_TASKACTIVE_TP_PROPERTY,
    END OF SC_ASSOCIATION .
  constants:
    BEGIN OF SC_ASSOCIATION_ATTRIBUTE,
      BEGIN OF ZBUV_I_PROJECTACTIVE_TP,
        BEGIN OF PROPERTY,
 ALL_NODE_PROPERTY              TYPE STRING VALUE 'ALL_NODE_PROPERTY',
 ALL_NODE_ATTRIBUTE_PROPERTY    TYPE STRING VALUE 'ALL_NODE_ATTRIBUTE_PROPERTY',
 ALL_ASSOCIATION_PROPERTY       TYPE STRING VALUE 'ALL_ASSOCIATION_PROPERTY',
 ALL_ASSOCIATION_ATTRIBUTE_PROP TYPE STRING VALUE 'ALL_ASSOCIATION_ATTRIBUTE_PROP',
 ALL_ACTION_PROPERTY            TYPE STRING VALUE 'ALL_ACTION_PROPERTY',
 ALL_ACTION_ATTRIBUTE_PROPERTY  TYPE STRING VALUE 'ALL_ACTION_ATTRIBUTE_PROPERTY',
 ALL_QUERY_PROPERTY             TYPE STRING VALUE 'ALL_QUERY_PROPERTY',
 ALL_QUERY_ATTRIBUTE_PROPERTY   TYPE STRING VALUE 'ALL_QUERY_ATTRIBUTE_PROPERTY',
 ALL_SUBTREE_PROPERTY           TYPE STRING VALUE 'ALL_SUBTREE_PROPERTY',
        END OF PROPERTY,
      END OF ZBUV_I_PROJECTACTIVE_TP,
      BEGIN OF ZBUV_I_TASKACTIVE_TP,
        BEGIN OF PROPERTY,
 ALL_NODE_PROPERTY              TYPE STRING VALUE 'ALL_NODE_PROPERTY',
 ALL_NODE_ATTRIBUTE_PROPERTY    TYPE STRING VALUE 'ALL_NODE_ATTRIBUTE_PROPERTY',
 ALL_ASSOCIATION_PROPERTY       TYPE STRING VALUE 'ALL_ASSOCIATION_PROPERTY',
 ALL_ASSOCIATION_ATTRIBUTE_PROP TYPE STRING VALUE 'ALL_ASSOCIATION_ATTRIBUTE_PROP',
 ALL_ACTION_PROPERTY            TYPE STRING VALUE 'ALL_ACTION_PROPERTY',
 ALL_ACTION_ATTRIBUTE_PROPERTY  TYPE STRING VALUE 'ALL_ACTION_ATTRIBUTE_PROPERTY',
 ALL_QUERY_PROPERTY             TYPE STRING VALUE 'ALL_QUERY_PROPERTY',
 ALL_QUERY_ATTRIBUTE_PROPERTY   TYPE STRING VALUE 'ALL_QUERY_ATTRIBUTE_PROPERTY',
 ALL_SUBTREE_PROPERTY           TYPE STRING VALUE 'ALL_SUBTREE_PROPERTY',
        END OF PROPERTY,
      END OF ZBUV_I_TASKACTIVE_TP,
    END OF SC_ASSOCIATION_ATTRIBUTE .
  constants:
    SC_BO_KEY  TYPE /BOBF/OBM_BO_KEY VALUE 'FA163E6E92A51EDBBAFC0098632A075F' .
  constants:
    SC_BO_NAME TYPE /BOBF/OBM_NAME VALUE 'ZBUV_I_PROJECTACTIVE_TP' .
  constants:
    BEGIN OF SC_DETERMINATION,
      BEGIN OF ZBUV_I_PROJECTACTIVE_TP,
 ACTION_AND_FIELD_CONTROL       TYPE /BOBF/DET_KEY VALUE 'FA163E6E92A51EDBBAFC0098632DA75F',
 CREATE_DEFAULT_TASK            TYPE /BOBF/DET_KEY VALUE 'FA163E6E92A51EDBBBC9CDECC77C4099',
      END OF ZBUV_I_PROJECTACTIVE_TP,
      BEGIN OF ZBUV_I_TASKACTIVE_TP,
 ACTION_AND_FIELD_CONTROL       TYPE /BOBF/DET_KEY VALUE 'FA163E6E92A51EDBBAFC06EDCFAA676A',
 CREATE_NEW_TASK                TYPE /BOBF/DET_KEY VALUE 'FA163E6E92A51EDBBBFAA35B8D3F4DF6',
      END OF ZBUV_I_TASKACTIVE_TP,
    END OF SC_DETERMINATION .
  constants:
    BEGIN OF SC_GROUP,
 ZBUV_I_PROJECTACTIVE_TP        TYPE /BOBF/OBM_GROUP_KEY VALUE 'FA163E6E92A51EDBBBF1DA8E95C280AB',
    END OF SC_GROUP .
  constants:
    SC_MODEL_VERSION TYPE /BOBF/CONF_VERSION VALUE '00000' .
  constants:
    BEGIN OF SC_NODE,
 ZBUV_I_PROJECTACTIVE_TP        TYPE /BOBF/OBM_NODE_KEY VALUE 'FA163E6E92A51EDBBAFC0098632A475F',
 ZBUV_I_PROJECTACTIVE_TP_LOCK   TYPE /BOBF/OBM_NODE_KEY VALUE 'FA163E6E92A51EDBBAFC0098632AC75F',
 ZBUV_I_PROJECTACTIVE_TP_MESSAG TYPE /BOBF/OBM_NODE_KEY VALUE 'FA163E6E92A51EDBBAFC0098632A875F',
 ZBUV_I_PROJECTACTIVE_TP_PROPER TYPE /BOBF/OBM_NODE_KEY VALUE 'FA163E6E92A51EDBBAFC0098632B875F',
 ZBUV_I_TASKACTIVE_TP           TYPE /BOBF/OBM_NODE_KEY VALUE 'FA163E6E92A51EDBBAFC06C9AA6DE76A',
 ZBUV_I_TASKACTIVE_TP_MESSAGE   TYPE /BOBF/OBM_NODE_KEY VALUE 'FA163E6E92A51EDBBAFC06EDCFACE76A',
 ZBUV_I_TASKACTIVE_TP_PROPERTY  TYPE /BOBF/OBM_NODE_KEY VALUE 'FA163E6E92A51EDBBAFC06EDCFAD276A',
    END OF SC_NODE .
  constants:
    BEGIN OF SC_NODE_ATTRIBUTE,
      BEGIN OF ZBUV_I_PROJECTACTIVE_TP,
  NODE_DATA                      TYPE STRING VALUE 'NODE_DATA',
  PROJECTID                      TYPE STRING VALUE 'PROJECTID',
  PROJECTNAME                    TYPE STRING VALUE 'PROJECTNAME',
  PROJECTESTIMATION              TYPE STRING VALUE 'PROJECTESTIMATION',
  PROJECTSTATUS                  TYPE STRING VALUE 'PROJECTSTATUS',
      END OF ZBUV_I_PROJECTACTIVE_TP,
      BEGIN OF ZBUV_I_TASKACTIVE_TP,
  NODE_DATA                      TYPE STRING VALUE 'NODE_DATA',
  TASKID                         TYPE STRING VALUE 'TASKID',
  TASKNAME                       TYPE STRING VALUE 'TASKNAME',
  TASKESTIMATION                 TYPE STRING VALUE 'TASKESTIMATION',
  TASKSTATUS                     TYPE STRING VALUE 'TASKSTATUS',
  TASKDATE                       TYPE STRING VALUE 'TASKDATE',
      END OF ZBUV_I_TASKACTIVE_TP,
    END OF SC_NODE_ATTRIBUTE .
  constants:
    BEGIN OF SC_NODE_CATEGORY,
      BEGIN OF ZBUV_I_PROJECTACTIVE_TP,
 ROOT                           TYPE /BOBF/OBM_NODE_CAT_KEY VALUE 'FA163E6E92A51EDBBAFC0098632A675F',
      END OF ZBUV_I_PROJECTACTIVE_TP,
      BEGIN OF ZBUV_I_TASKACTIVE_TP,
 ZBUV_I_TASKACTIVE_TP           TYPE /BOBF/OBM_NODE_CAT_KEY VALUE 'FA163E6E92A51EDBBAFC06EDCFAC876A',
      END OF ZBUV_I_TASKACTIVE_TP,
    END OF SC_NODE_CATEGORY .
  constants:
    BEGIN OF SC_VALIDATION,
      BEGIN OF ZBUV_I_PROJECTACTIVE_TP,
 CHECK_DUPLICATE_NAME           TYPE /BOBF/VAL_KEY VALUE 'FA163E6E92A51EDBBBF1DA8E95C220AB',
 CHECK_PROJECT_ESTIMATION       TYPE /BOBF/VAL_KEY VALUE 'FA163E6E92A51EDBBDD7EBD0EAD39D4A',
      END OF ZBUV_I_PROJECTACTIVE_TP,
      BEGIN OF ZBUV_I_TASKACTIVE_TP,
 CHECK__TASK_ESTIMATION         TYPE /BOBF/VAL_KEY VALUE 'FA163E6E92A51EDBBDD7FAD54E9D1D57',
      END OF ZBUV_I_TASKACTIVE_TP,
    END OF SC_VALIDATION .
endinterface.
