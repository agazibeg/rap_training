@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CoA: Projection view for Employee'
@Search.searchable: true
@Metadata.allowExtensions: true
define view entity zc_rap_employee 
    as projection on zi_rap_employee as Employee
{
    key EmpId,
    @Search.defaultSearchElement: true
    FirstName,
    LastName,
    Salary,
    DepId,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    LocalLastChangedAt,
    /* Associations */
    _Department : redirected to parent zc_rap_depart
}
