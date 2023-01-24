interface ZIF_BUV_I_PROJECTDRAFT_TP_C
  public .


  interfaces /BOBF/IF_LIB_CONSTANTS .

  constants:
    BEGIN OF SC_ACTION,
      BEGIN OF ZBUV_I_PROJECTDRAFT_TP,
 ACTIVATION                     TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE9BE58',
 COMPLETE_PROJECT               TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBEA618CAAB4A2859',
 CREATE_ZBUV_I_PROJECTDRAFT_TP  TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE5FE58',
 DELETE_ZBUV_I_PROJECTDRAFT_TP  TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE67E58',
 EDIT                           TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE99E58',
 LOCK_ZBUV_I_PROJECTDRAFT_TP    TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE53E58',
 PREPARATION                    TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE9FE58',
 SAVE_ZBUV_I_PROJECTDRAFT_TP    TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE6FE58',
 UNLOCK_ZBUV_I_PROJECTDRAFT_TP  TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE57E58',
 UPDATE_ZBUV_I_PROJECTDRAFT_TP  TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE63E58',
 VALIDATE_ZBUV_I_PROJECTDRAFT_T TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE6BE58',
 VALIDATION                     TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE9DE58',
      END OF ZBUV_I_PROJECTDRAFT_TP,
      BEGIN OF ZBUV_I_TASKDRAFT_TP,
 COMPLETE_TASK                  TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBEA5B64FAAB8C7F1',
 CREATE_ZBUV_I_TASKDRAFT_TP     TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBE874B34BDFABE58',
 DELETE_ZBUV_I_TASKDRAFT_TP     TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBE874B34BDFB3E58',
 PREPARATION                    TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBE874B34BDEB9E58',
 SAVE_ZBUV_I_TASKDRAFT_TP       TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBE874B34BDFBBE58',
 UPDATE_ZBUV_I_TASKDRAFT_TP     TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBE874B34BDFAFE58',
 VALIDATE_ZBUV_I_TASKDRAFT_TP   TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBE874B34BDFB7E58',
 VALIDATION                     TYPE /BOBF/ACT_KEY VALUE 'FA163E6E92A51EDBBE874B34BDEB7E58',
      END OF ZBUV_I_TASKDRAFT_TP,
    END OF SC_ACTION .
  constants:
    BEGIN OF SC_ACTION_ATTRIBUTE,
        BEGIN OF ZBUV_I_PROJECTDRAFT_TP,
        BEGIN OF EDIT,
 PRESERVE_CHANGES               TYPE STRING VALUE 'PRESERVE_CHANGES',
        END OF EDIT,
        BEGIN OF LOCK_ZBUV_I_PROJECTDRAFT_TP,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
 LEGACY_DAC_KEY                 TYPE STRING VALUE 'LEGACY_DAC_KEY',
        END OF LOCK_ZBUV_I_PROJECTDRAFT_TP,
        BEGIN OF PREPARATION,
 SIDEEFFECTSQUALIFIER           TYPE STRING VALUE 'SIDEEFFECTSQUALIFIER',
        END OF PREPARATION,
        BEGIN OF UNLOCK_ZBUV_I_PROJECTDRAFT_TP,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
 LEGACY_DAC_KEY                 TYPE STRING VALUE 'LEGACY_DAC_KEY',
        END OF UNLOCK_ZBUV_I_PROJECTDRAFT_TP,
        BEGIN OF VALIDATION,
 SIDEEFFECTSQUALIFIER           TYPE STRING VALUE 'SIDEEFFECTSQUALIFIER',
        END OF VALIDATION,
      END OF ZBUV_I_PROJECTDRAFT_TP,
        BEGIN OF ZBUV_I_TASKDRAFT_TP,
        BEGIN OF PREPARATION,
 SIDEEFFECTSQUALIFIER           TYPE STRING VALUE 'SIDEEFFECTSQUALIFIER',
        END OF PREPARATION,
        BEGIN OF VALIDATION,
 SIDEEFFECTSQUALIFIER           TYPE STRING VALUE 'SIDEEFFECTSQUALIFIER',
        END OF VALIDATION,
      END OF ZBUV_I_TASKDRAFT_TP,
    END OF SC_ACTION_ATTRIBUTE .
  constants:
    BEGIN OF SC_ALTERNATIVE_KEY,
      BEGIN OF ZBUV_I_PROJECTDRAFT_TP,
 ACTIVE_ENTITY_KEY              TYPE /BOBF/OBM_ALTKEY_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE97E58',
      END OF ZBUV_I_PROJECTDRAFT_TP,
      BEGIN OF ZBUV_I_TASKDRAFT_TP,
 ACTIVE_ENTITY_KEY              TYPE /BOBF/OBM_ALTKEY_KEY VALUE 'FA163E6E92A51EDBBE874B34BDEB5E58',
      END OF ZBUV_I_TASKDRAFT_TP,
    END OF SC_ALTERNATIVE_KEY .
  constants:
    BEGIN OF SC_ASSOCIATION,
      BEGIN OF ZBUV_I_PROJECTDRAFT_TP,
 LOCK                           TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE51E58',
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE4DE58',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE5DE58',
 _TASK_TPD                      TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBE874B34BDF93E58',
      END OF ZBUV_I_PROJECTDRAFT_TP,
      BEGIN OF ZBUV_I_PROJECTDRAFT_TP_LOCK,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE75E58',
      END OF ZBUV_I_PROJECTDRAFT_TP_LOCK,
      BEGIN OF ZBUV_I_PROJECTDRAFT_TP_MESSAGE,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE73E58',
      END OF ZBUV_I_PROJECTDRAFT_TP_MESSAGE,
      BEGIN OF ZBUV_I_PROJECTDRAFT_TP_PROPERT,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE77E58',
      END OF ZBUV_I_PROJECTDRAFT_TP_PROPERT,
      BEGIN OF ZBUV_I_TASKDRAFT_TP,
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBE874B34BDFA5E58',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBE874B34BDFA9E58',
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBE874B34BDFBFE58',
 TO_ROOT                        TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBE874B34BDFC1E58',
      END OF ZBUV_I_TASKDRAFT_TP,
      BEGIN OF ZBUV_I_TASKDRAFT_TP_MESSAGE,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBE874B34BDFC3E58',
      END OF ZBUV_I_TASKDRAFT_TP_MESSAGE,
      BEGIN OF ZBUV_I_TASKDRAFT_TP_PROPERTY,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE 'FA163E6E92A51EDBBE874B34BDFC5E58',
      END OF ZBUV_I_TASKDRAFT_TP_PROPERTY,
    END OF SC_ASSOCIATION .
  constants:
    BEGIN OF SC_ASSOCIATION_ATTRIBUTE,
      BEGIN OF ZBUV_I_PROJECTDRAFT_TP,
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
      END OF ZBUV_I_PROJECTDRAFT_TP,
      BEGIN OF ZBUV_I_TASKDRAFT_TP,
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
      END OF ZBUV_I_TASKDRAFT_TP,
    END OF SC_ASSOCIATION_ATTRIBUTE .
  constants:
    SC_BO_KEY  TYPE /BOBF/OBM_BO_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE43E58' .
  constants:
    SC_BO_NAME TYPE /BOBF/OBM_NAME VALUE 'ZBUV_I_PROJECTDRAFT_TP' .
  constants:
    BEGIN OF SC_DETERMINATION,
      BEGIN OF ZBUV_I_PROJECTDRAFT_TP,
 ACTION_AND_FIELD_CONTROL       TYPE /BOBF/DET_KEY VALUE 'FA163E6E92A51EDBBE874B34BDEA1E58',
 CENTRAL_ADMIN_DATA             TYPE /BOBF/DET_KEY VALUE 'FA163E6E92A51EDBBE874B34BDEA3E58',
 CREATE_DEFAULT_TASK            TYPE /BOBF/DET_KEY VALUE 'FA163E6E92A51EDBBEA593244ADBC7B7',
 DELETE_DRAFT_WHN_ACTIVE_DELETE TYPE /BOBF/DET_KEY VALUE 'FA163E6E92A51EDBBE874B34BDEB1E58',
 DRAFT_ACTION_CONTROL           TYPE /BOBF/DET_KEY VALUE 'FA163E6E92A51EDBBE874B34BDEAFE58',
 DRAFT_SYS_ADMIN_DATA           TYPE /BOBF/DET_KEY VALUE 'FA163E6E92A51EDBBE874B34BDEADE58',
 DURABLE_LOCK_CLEANUP_CLEANUP   TYPE /BOBF/DET_KEY VALUE 'FA163E6E92A51EDBBE874B34BDEABE58',
 DURABLE_LOCK_CLEANUP_DELETE    TYPE /BOBF/DET_KEY VALUE 'FA163E6E92A51EDBBE874B34BDEA5E58',
 DURABLE_LOCK_CLEANUP_FAIL_SAVE TYPE /BOBF/DET_KEY VALUE 'FA163E6E92A51EDBBE874B34BDEA9E58',
 DURABLE_LOCK_CLEANUP_SUCC_SAVE TYPE /BOBF/DET_KEY VALUE 'FA163E6E92A51EDBBE874B34BDEA7E58',
      END OF ZBUV_I_PROJECTDRAFT_TP,
      BEGIN OF ZBUV_I_TASKDRAFT_TP,
 ACTION_AND_FIELD_CONTROL       TYPE /BOBF/DET_KEY VALUE 'FA163E6E92A51EDBBE874B34BDEBBE58',
 CREATE_NEW_TASK                TYPE /BOBF/DET_KEY VALUE 'FA163E6E92A51EDBBEA57AF9A755A79E',
 DRAFT_ACTION_CONTROL           TYPE /BOBF/DET_KEY VALUE 'FA163E6E92A51EDBBE874B34BDEBFE58',
 DRAFT_SYS_ADMIN_DATA           TYPE /BOBF/DET_KEY VALUE 'FA163E6E92A51EDBBE874B34BDEBDE58',
      END OF ZBUV_I_TASKDRAFT_TP,
    END OF SC_DETERMINATION .
  constants:
    BEGIN OF SC_GROUP,
 DRAFT_CONSISTENCY              TYPE /BOBF/OBM_GROUP_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE7BE58',
 ZBUV_I_PROJECTDRAFT_TP         TYPE /BOBF/OBM_GROUP_KEY VALUE 'FA163E6E92A51EDBBEA5427902C74757',
    END OF SC_GROUP .
  constants:
    SC_MODEL_VERSION TYPE /BOBF/CONF_VERSION VALUE '00000' .
  constants:
    BEGIN OF SC_NODE,
 ZBUV_I_PROJECTDRAFT_TP         TYPE /BOBF/OBM_NODE_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE47E58',
 ZBUV_I_PROJECTDRAFT_TP_LOCK    TYPE /BOBF/OBM_NODE_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE4FE58',
 ZBUV_I_PROJECTDRAFT_TP_MESSAGE TYPE /BOBF/OBM_NODE_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE4BE58',
 ZBUV_I_PROJECTDRAFT_TP_PROPERT TYPE /BOBF/OBM_NODE_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE5BE58',
 ZBUV_I_TASKDRAFT_TP            TYPE /BOBF/OBM_NODE_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE81E58',
 ZBUV_I_TASKDRAFT_TP_MESSAGE    TYPE /BOBF/OBM_NODE_KEY VALUE 'FA163E6E92A51EDBBE874B34BDFA3E58',
 ZBUV_I_TASKDRAFT_TP_PROPERTY   TYPE /BOBF/OBM_NODE_KEY VALUE 'FA163E6E92A51EDBBE874B34BDFA7E58',
    END OF SC_NODE .
  constants:
    BEGIN OF SC_NODE_ATTRIBUTE,
      BEGIN OF ZBUV_I_PROJECTDRAFT_TP,
  NODE_DATA                      TYPE STRING VALUE 'NODE_DATA',
  PROJECTID                      TYPE STRING VALUE 'PROJECTID',
  PROJECTNAME                    TYPE STRING VALUE 'PROJECTNAME',
  PROJECTESTIMATION              TYPE STRING VALUE 'PROJECTESTIMATION',
  PROJECTSTATUS                  TYPE STRING VALUE 'PROJECTSTATUS',
  ACTIVEUUID                     TYPE STRING VALUE 'ACTIVEUUID',
  HASACTIVEENTITY                TYPE STRING VALUE 'HASACTIVEENTITY',
  DRAFTENTITYCREATIONDATETIME    TYPE STRING VALUE 'DRAFTENTITYCREATIONDATETIME',
  DRAFTENTITYLASTCHANGEDATETIME  TYPE STRING VALUE 'DRAFTENTITYLASTCHANGEDATETIME',
  DRAFTADMINISTRATIVEDATAUUID    TYPE STRING VALUE 'DRAFTADMINISTRATIVEDATAUUID',
  DRAFTENTITYCONSISTENCYSTATUS   TYPE STRING VALUE 'DRAFTENTITYCONSISTENCYSTATUS',
  DRAFTENTITYOPERATIONCODE       TYPE STRING VALUE 'DRAFTENTITYOPERATIONCODE',
  ISACTIVEENTITY                 TYPE STRING VALUE 'ISACTIVEENTITY',
      END OF ZBUV_I_PROJECTDRAFT_TP,
      BEGIN OF ZBUV_I_TASKDRAFT_TP,
  NODE_DATA                      TYPE STRING VALUE 'NODE_DATA',
  TASKID                         TYPE STRING VALUE 'TASKID',
  TASKNAME                       TYPE STRING VALUE 'TASKNAME',
  TASKESTIMATION                 TYPE STRING VALUE 'TASKESTIMATION',
  TASKSTATUS                     TYPE STRING VALUE 'TASKSTATUS',
  TASKDATE                       TYPE STRING VALUE 'TASKDATE',
  ACTIVEUUID                     TYPE STRING VALUE 'ACTIVEUUID',
  HASACTIVEENTITY                TYPE STRING VALUE 'HASACTIVEENTITY',
  DRAFTENTITYCREATIONDATETIME    TYPE STRING VALUE 'DRAFTENTITYCREATIONDATETIME',
  DRAFTENTITYLASTCHANGEDATETIME  TYPE STRING VALUE 'DRAFTENTITYLASTCHANGEDATETIME',
  DRAFTADMINISTRATIVEDATAUUID    TYPE STRING VALUE 'DRAFTADMINISTRATIVEDATAUUID',
  DRAFTENTITYCONSISTENCYSTATUS   TYPE STRING VALUE 'DRAFTENTITYCONSISTENCYSTATUS',
  DRAFTENTITYOPERATIONCODE       TYPE STRING VALUE 'DRAFTENTITYOPERATIONCODE',
  ISACTIVEENTITY                 TYPE STRING VALUE 'ISACTIVEENTITY',
      END OF ZBUV_I_TASKDRAFT_TP,
    END OF SC_NODE_ATTRIBUTE .
  constants:
    BEGIN OF SC_NODE_CATEGORY,
      BEGIN OF ZBUV_I_PROJECTDRAFT_TP,
 ROOT                           TYPE /BOBF/OBM_NODE_CAT_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE49E58',
      END OF ZBUV_I_PROJECTDRAFT_TP,
      BEGIN OF ZBUV_I_TASKDRAFT_TP,
 ZBUV_I_TASKDRAFT_TP            TYPE /BOBF/OBM_NODE_CAT_KEY VALUE 'FA163E6E92A51EDBBE874B34BDF91E58',
      END OF ZBUV_I_TASKDRAFT_TP,
    END OF SC_NODE_CATEGORY .
  constants:
    BEGIN OF SC_STATUS_VARIABLE,
      BEGIN OF ZBUV_I_PROJECTDRAFT_TP,
 DRAFT_CONSISTENCY_STATUS       TYPE /BOBF/STA_VAR_KEY VALUE 'FA163E6E92A51EDBBE874B34BDE79E58',
      END OF ZBUV_I_PROJECTDRAFT_TP,
    END OF SC_STATUS_VARIABLE .
  constants:
    BEGIN OF SC_VALIDATION,
      BEGIN OF ZBUV_I_PROJECTDRAFT_TP,
 CHECK_DUPLICATE_NAME           TYPE /BOBF/VAL_KEY VALUE 'FA163E6E92A51EDBBEA55A222AA38779',
 CHECK_PROJECT_ESTIMATION       TYPE /BOBF/VAL_KEY VALUE 'FA163E6E92A51EDBBEA55A222AA36779',
 DURABLE_LOCK_CREATE_FOR_NEW    TYPE /BOBF/VAL_KEY VALUE 'FA163E6E92A51EDBBE874B34BDEB3E58',
      END OF ZBUV_I_PROJECTDRAFT_TP,
      BEGIN OF ZBUV_I_TASKDRAFT_TP,
 CHECK_TASK_ESTIMATION          TYPE /BOBF/VAL_KEY VALUE 'FA163E6E92A51EDBBEA5427902C6E757',
      END OF ZBUV_I_TASKDRAFT_TP,
    END OF SC_VALIDATION .
endinterface.
