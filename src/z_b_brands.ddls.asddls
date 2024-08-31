@AbapCatalog.sqlViewName: 'ZV_BRANDS'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
define view Z_B_BRANDS
  as select from zrent_brands
{
  key marca as Marca,
      @UI.hidden: true
      url   as Imagen
}
