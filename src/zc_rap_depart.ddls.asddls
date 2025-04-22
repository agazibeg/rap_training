@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CoA: Projection view for Department'
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity zc_rap_depart 
    as projection on zi_rap_depart as Department
{
    key DepId,
    @Search.defaultSearchElement: true
    DepName,
    @Search.defaultSearchElement: true
    IsActive,
    Criticality,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    LocalLastChangedAt,
    /* Associations */
    _Employee : redirected to composition child zc_rap_employee
}
