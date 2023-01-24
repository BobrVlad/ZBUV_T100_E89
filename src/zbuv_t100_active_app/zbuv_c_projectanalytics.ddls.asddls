@AbapCatalog.sqlViewName: 'ZBUVCPROJANL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BUV: T100 - Project Analitics'
@VDM.viewType: #CONSUMPTION
@Metadata.allowExtensions: true
@ObjectModel: { semanticKey: ['ProjectID'] }

--@Analytics: { query: true }

@OData.publish: true 

define view ZBUV_C_ProjectAnalytics 
  as select from ZBUV_P_Union_Data 
{
  key    ProjectUUID,
  key    TaskUUID,
         @ObjectModel.text.element: [ 'ProjectName' ] 
         ProjectID,
         ProjectName,
         ProjectStatus,
         ProjectEstimation,
         
         @ObjectModel.text.element: [ 'TaskName' ]
         TaskID,
         TaskName, 
         TaskStatus,
         @DefaultAggregation: #MAX      
         TaskDate, 
         @DefaultAggregation: #SUM    
         TaskEstimation
}
