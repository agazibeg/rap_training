@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CoA: Data Definition for Employees'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_rap_employee 
    as select from zrap_db_empl as Employee
    
    association to parent zi_rap_depart as _Department on $projection.DepId = _Department.DepId
{
    key emp_id as EmpId,
    first_name as FirstName,
    last_name as LastName,
    salary as Salary,
    dep_id as DepId,
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
    _Department
}
