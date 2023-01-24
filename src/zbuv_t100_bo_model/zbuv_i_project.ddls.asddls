@AbapCatalog.sqlViewName: 'ZBUVIPROJ'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BUV: T100 - Interface View based on ZBUV_D_PROJECT'

define view ZBUV_I_Project
  as select from zbuv_d_project as Project

  association [0..*] to ZBUV_I_Task as _Task on $projection.ProjectUUID = _Task.ProjectUUID

{
  key projectuuid       as ProjectUUID,
      projectid         as ProjectID,
      projectname       as ProjectName,
      projectestimation as ProjectEstimation,
      projectstatus     as ProjectStatus,

      _Task
}
