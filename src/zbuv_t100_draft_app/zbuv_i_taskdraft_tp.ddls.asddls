@AbapCatalog.sqlViewName: 'ZBUVITASKDRFTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'BUV: T100 - Interface View for Tasks with Draft Capabilities'

@VDM.viewType: #TRANSACTIONAL
@ObjectModel: { writeActivePersistence: 'ZBUV_D_TASK',
                createEnabled         : true,
                updateEnabled         : 'EXTERNAL_CALCULATION',
                deleteEnabled         : 'EXTERNAL_CALCULATION', 
                -- Additional annotations for draft enablement    
                writeDraftPersistence : 'ZBUV_D_TASK_DRF' }

define view ZBUV_I_TaskDraft_TP
   as select from zbuv_d_task as Task
   
 association [1] to ZBUV_I_ProjectDraft_TP as _Project_TPD on $projection.ProjectUUID = _Project_TPD.ProjectUUID

{
  key taskuuid       as TaskUUID,
      projectuuid    as ProjectUUID,
      taskid         as TaskID,
      taskname       as TaskName,
      taskestimation as TaskEstimation,
      taskstatus     as TaskStatus,
      taskdate       as TaskDate,

      @ObjectModel.association.type: [ #TO_COMPOSITION_ROOT, #TO_COMPOSITION_PARENT ]
      _Project_TPD

}
    
