@AbapCatalog.sqlViewName: 'ZV_REM_DAYS'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Remaining days'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
@Metadata.allowExtensions: true
define view z_b_rem_days
  as select from zrent_cars
{
  key placa                                                                    as Placa,
      marca                                                                    as Marca,
      dats_days_between( cast( $session.system_date as abap.dats), alq_hasta ) as Dias
      //      case when alq_hasta <> ''
      //           then dats_days_between( cast( $session.system_date as abap.dats), alq_hasta )
      //           else dats_days_between( alq_desde, alq_hasta )
      //           end as Dias
}
