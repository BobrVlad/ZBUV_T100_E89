@AbapCatalog.sqlViewName: 'ZBUVCPROJACTTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'BUV: T100 - Consumpsion View for Projects'
@Metadata.allowExtensions: true

@VDM.viewType: #CONSUMPTION
@ObjectModel: { semanticKey                     : ['ProjectID'],
                compositionRoot                 : true,
                transactionalProcessingDelegated: true,
                createEnabled                   : true,
                deleteEnabled                   : 'EXTERNAL_CALCULATION',
                updateEnabled                   : 'EXTERNAL_CALCULATION' }

@OData.publish: true     

define view ZBUV_C_ProjectActive_TP 
   as select from ZBUV_I_ProjectActive_TP as Project_TP
   
  association [0..*]  to ZBUV_C_TaskActive_TP as _Task_TP on $projection.ProjectUUID = _Task_TP.ProjectUUID 
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
      
      @UI.hidden: true 
      @ObjectModel.readOnly     
      _Status.StatusName as StatusName,
      
      @UI.hidden: true
      @ObjectModel.readOnly
      case ProjectStatus
        when 'NW' then 1
        when 'IN' then 2
        when 'DN' then 3
        else 0
      end as StatusCriticality,
      
      @ObjectModel.association.type: [#TO_COMPOSITION_CHILD]
      _Task_TP
    
}
