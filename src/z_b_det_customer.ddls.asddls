@AbapCatalog.sqlViewName: 'ZV_DET_CUST'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Detail Customers'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
@Metadata.allowExtensions: true
define view Z_b_det_customer
  as select from zrent_customers
{
  key doc_id    as DocId,
  key matricula as Matricula,
      nombres   as Nombres,
      apellidos as Apellidos,
      email     as Email,
      cntr_type as TipoContrato
}
