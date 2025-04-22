@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CoA: Data Definition for Departments'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity zi_rap_depart 
    as select from zrap_db_depart as Department
    
    composition [0..*] of zi_rap_employee as _Employee
{
    key dep_id as DepId,
    dep_name as DepName,
    is_active as IsActive,
    
    case is_active when 'X' then 3 else 1 end as Criticality,
    
    @Semantics.user.createdBy: true
    created_by as CreatedBy,
    @Semantics.systemDateTime.createdAt: true
    created_at as CreatedAt,
    @Semantics.user.lastChangedBy: true
    last_changed_by as LastChangedBy,
    @Semantics.systemDateTime.lastChangedAt: true
    last_changed_at as LastChangedAt,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    local_last_changed_at as LocalLastChangedAt,
    
    /* associations */
    _Employee
}
