@AbapCatalog.sqlViewName: 'ZV_REM_DAYS'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Remaining days'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
define view z_b_rem_days
  as select from zrent_cars
{
  key matricula                                                                                                                          as Matricula,
      marca                                                                                                                              as Marca,
      case when alq_desde < $session.system_date and alq_hasta < $session.system_date then 0
           when alq_desde < $session.system_date and alq_hasta > $session.system_date then dats_days_between( cast( $session.system_date as abap.dats ), alq_hasta )
           when alq_desde > $session.system_date and alq_hasta > $session.system_date then dats_days_between( alq_desde, alq_hasta ) end as Dias
}
