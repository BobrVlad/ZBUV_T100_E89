@AbapCatalog.sqlViewName: 'ZBUVCTASKACTTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'BUV: T100 - Consumpsion View for Tasks'
@Metadata.allowExtensions: true

@VDM.viewType: #CONSUMPTION
@ObjectModel: { semanticKey  : ['TaskID'],
                createEnabled: true,
                deleteEnabled: 'EXTERNAL_CALCULATION',
                updateEnabled: 'EXTERNAL_CALCULATION' }

define view ZBUV_C_TaskActive_TP 
    as select from ZBUV_I_TaskActive_TP as Task_TP 
    
 association [1]  to ZBUV_C_ProjectActive_TP as _Project_TP on $projection.ProjectUUID = _Project_TP.ProjectUUID     
 association [1]  to ZBUV_I_STATUS as _Status on $projection.TaskStatus = _Status.StatusID
      
{     
  key TaskUUID,
  
      @UI.hidden: true
      ProjectUUID, 
      
      @ObjectModel.readOnly: 'EXTERNAL_CALCULATION'                  
      TaskID, 
      @ObjectModel.readOnly: 'EXTERNAL_CALCULATION'
      TaskName,
      @ObjectModel.readOnly: 'EXTERNAL_CALCULATION' 
      TaskEstimation,
      
      @ObjectModel.text.element: [ 'StatusName' ]       
      TaskStatus, 
      @UI.hidden: true
      @ObjectModel.readOnly
      _Status.StatusName as StatusName,     
      
      @UI.hidden: true
      @ObjectModel.readOnly
      case TaskStatus
        when 'NW' then 1
        when 'IN' then 2
        when 'DN' then 3
        else 0
      end as StatusCriticality,
      
      @ObjectModel.readOnly: 'EXTERNAL_CALCULATION'
      TaskDate,
      
      @ObjectModel.association.type: [#TO_COMPOSITION_ROOT,#TO_COMPOSITION_PARENT]
      _Project_TP  
      

}
