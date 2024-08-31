@AbapCatalog.sqlViewName: 'ZV_DET_CUSTOMER'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Details Customers'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
@Metadata.allowExtensions: true
define view z_b_det_customer
  as select from zrent_customers
{
  key doc_id    as ID,
  key placa     as Placa,
      nombres   as Nombre,
      apellidos as Apellidos,
      email     as Correo,
      cntr_type as TipoContrato
}
