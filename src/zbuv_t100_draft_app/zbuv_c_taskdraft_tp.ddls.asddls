@AbapCatalog.sqlViewName: 'ZBUVCTASKDRFTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'BUV: T100 - Consumption View for Tasks with Draft'
@Metadata.allowExtensions: true

@VDM.viewType: #CONSUMPTION
@ObjectModel: { semanticKey  : ['TaskID'],
                createEnabled: true,
                deleteEnabled: 'EXTERNAL_CALCULATION',
                updateEnabled: 'EXTERNAL_CALCULATION' }
                
define view ZBUV_C_TaskDraft_TP 
    as select from ZBUV_I_TaskDraft_TP as Task_TP_D 
    
 association [1]  to ZBUV_C_ProjectDraft_TP as _Project_TPD on $projection.ProjectUUID = _Project_TPD.ProjectUUID     
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
      @ObjectModel.readOnly
      _Status.StatusName as StatusName,     
      
    /*  @UI.hidden: true
      @ObjectModel.readOnly
      case TaskStatus
        when 'NW' then 1
        when 'IN' then 2
        when 'DN' then 3
        else 0
      end as StatusCriticality, */
      @ObjectModel.readOnly: 'EXTERNAL_CALCULATION'
      TaskDate,
      
      @ObjectModel.association.type: [#TO_COMPOSITION_ROOT,#TO_COMPOSITION_PARENT]
      _Project_TPD       

}
