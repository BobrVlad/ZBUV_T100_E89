@AbapCatalog.sqlViewName: 'ZBUVITASK'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BUV: T100 - Interface View based on ZBUV_D_TASK'

define view ZBUV_I_Task
  as select from zbuv_d_task as Task

  association [1] to ZBUV_I_Project as _Project on $projection.ProjectUUID = _Project.ProjectUUID

{
  key taskuuid       as TaskUUID,
      projectuuid    as ProjectUUID,
      taskid         as TaskID,
      taskname       as TaskName,
      taskestimation as TaskEstimation,      
      taskstatus     as TaskStatus,
      taskdate       as TaskDate,

      _Project
}
