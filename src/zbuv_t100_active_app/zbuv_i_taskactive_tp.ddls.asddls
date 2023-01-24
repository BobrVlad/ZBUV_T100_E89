@AbapCatalog.sqlViewName: 'ZBUVITASKACTTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'BUV: T100 - Interface View for Tasks'

@VDM.viewType: #TRANSACTIONAL
@ObjectModel: { writeActivePersistence: 'ZBUV_D_TASK',
                createEnabled         : true,
                updateEnabled         : 'EXTERNAL_CALCULATION',
                deleteEnabled         : 'EXTERNAL_CALCULATION' }

define view ZBUV_I_TaskActive_TP
  as select from zbuv_d_task as Task

  association [1] to ZBUV_I_ProjectActive_TP as _Project_TP on $projection.ProjectUUID = _Project_TP.ProjectUUID

{
  key taskuuid       as TaskUUID,
      projectuuid    as ProjectUUID,
      taskid         as TaskID,
      taskname       as TaskName,
      taskestimation as TaskEstimation,
      taskstatus     as TaskStatus,
      taskdate       as TaskDate,

      @ObjectModel.association.type: [ #TO_COMPOSITION_ROOT, #TO_COMPOSITION_PARENT ]
      _Project_TP

}
