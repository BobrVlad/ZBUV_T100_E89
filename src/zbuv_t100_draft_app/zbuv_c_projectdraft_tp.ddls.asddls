@AbapCatalog.sqlViewName: 'ZBUVCPROJDRFTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'BUV: T100 - Consumption View for Projects with Draft'
@Metadata.allowExtensions: true

@VDM.viewType: #CONSUMPTION
@ObjectModel: { semanticKey                     : ['ProjectID'],
                compositionRoot                 : true,
                transactionalProcessingDelegated: true,
                createEnabled                   : true,
                deleteEnabled                   : 'EXTERNAL_CALCULATION',
                updateEnabled                   : 'EXTERNAL_CALCULATION',
                draftEnabled                    : true }

@OData.publish: true  
   
define view ZBUV_C_ProjectDraft_TP 
   as select from ZBUV_I_ProjectDraft_TP as Project_TP
   
  association [0..*]  to ZBUV_C_TaskDraft_TP as _Task_TPD on $projection.ProjectUUID = _Task_TPD.ProjectUUID 
  association [1]     to ZBUV_I_STATUS as _Status on $projection.ProjectStatus = _Status.StatusID   
   
{     
  key ProjectUUID, 
      @ObjectModel.readOnly: 'EXTERNAL_CALCULATION'
      ProjectID, 
      @ObjectModel.readOnly: 'EXTERNAL_CALCULATION'    
      ProjectName,
      @ObjectModel.readOnly: 'EXTERNAL_CALCULATION'
      ProjectEstimation,
      
      @ObjectModel.text.element: [ 'StatusName' ]
      ProjectStatus, 
      @ObjectModel.readOnly     
      _Status.StatusName as StatusName,
      
     /* @UI.hidden: true
      @ObjectModel.readOnly
      case ProjectStatus
        when 'NW' then 1
        when 'IN' then 2
        when 'DN' then 3
        else 0
      end as StatusCriticality, */
      
      @ObjectModel.association.type: [#TO_COMPOSITION_CHILD]
      _Task_TPD
    
}
