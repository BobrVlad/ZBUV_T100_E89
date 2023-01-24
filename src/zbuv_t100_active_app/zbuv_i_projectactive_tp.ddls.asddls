@AbapCatalog.sqlViewName: 'ZBUVIPROJACTTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'BUV: T100 - Interface View for Projects'

@VDM.viewType: #TRANSACTIONAL
@ObjectModel: { modelCategory                 : #BUSINESS_OBJECT,
                compositionRoot               : true,
                transactionalProcessingEnabled: true,
                writeActivePersistence        : 'ZBUV_D_PROJECT',
                createEnabled                 : true,
                deleteEnabled                 : 'EXTERNAL_CALCULATION',
                updateEnabled                 : 'EXTERNAL_CALCULATION' }

define view ZBUV_I_ProjectActive_TP
  as select from zbuv_d_project as Project

  association [0..*] to ZBUV_I_TaskActive_TP as _Task_TP on $projection.ProjectUUID = _Task_TP.ProjectUUID

{
  key projectuuid       as ProjectUUID,
      projectid         as ProjectID,
      projectname       as ProjectName,
      projectestimation as ProjectEstimation,
      projectstatus     as ProjectStatus,

      @ObjectModel.association.type: [ #TO_COMPOSITION_CHILD ]
      _Task_TP

}
