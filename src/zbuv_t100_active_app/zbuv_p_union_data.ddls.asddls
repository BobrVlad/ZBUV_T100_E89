@AbapCatalog.sqlViewName: 'ZBUVPUNION'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BUV: T100 - Union Data'
@Analytics.dataCategory: #CUBE

define view ZBUV_P_Union_Data 
  as select from ZBUV_I_Project as _Project
    inner join   ZBUV_I_Task    as _Task on _Project.ProjectUUID = _Task.ProjectUUID
//      inner join ZBUV_I_STATUS as _ProjectStatus on _Project.ProjectStatus = _ProjectStatus.StatusID
//      inner join ZBUV_I_STATUS as _TaskStatus    on _Task.TaskStatus = _TaskStatus.StatusID

  association [1]     to ZBUV_I_STATUS as _ProjectStatus on _Project.ProjectStatus = _ProjectStatus.StatusID 
  association [1]     to ZBUV_I_STATUS as _TaskStatus    on _Task.TaskStatus = _TaskStatus.StatusID    
    
{
  key _Project.ProjectUUID,
  key _Task.TaskUUID,
      _Project.ProjectID,
      _Project.ProjectName,
      _ProjectStatus.StatusName as ProjectStatus,   
      _Project.ProjectEstimation, 
       
      _Task.TaskID,
      _Task.TaskName,
      _TaskStatus.StatusName as TaskStatus,     
      _Task.TaskDate,
      _Task.TaskEstimation      
}
