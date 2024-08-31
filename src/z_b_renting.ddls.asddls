@AbapCatalog.sqlViewName: 'ZV_RENTING'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Renting'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
@Metadata.allowExtensions: true
define view Z_B_renting
  as select from z_b_cars as Cars
  association [1]    to z_b_rem_days     as _RemDays     on Cars.Placa = _RemDays.Placa
  association [1..*] to Z_B_BRANDS       as _Brands      on Cars.Marca = _Brands.Marca
  association [1..*] to z_b_det_customer as _DetCustomer on Cars.Placa = _DetCustomer.Placa
{
  key Cars.Placa,
      Cars.Marca,
      Cars.Modelo,
      Cars.Color,
      Cars.Motor,
      Cars.Potencia,
      Cars.UndPotencia,
      Cars.Combustible,
      Cars.Consumo,
      Cars.FechaFabr,
      Cars.Puertas,
      Cars.Precio,
      Cars.Moneda,
      Cars.Alquilado,
      Cars.AlqDesde,
      Cars.AlqHasta,

      //      0     Neutral     Grey
      //      1     Negative    Red
      //      2     Critical    Yellow
      //      3     Positive    Green
      case when _RemDays.Dias <= 0 then 0
           when _RemDays.Dias between 1 and 30 then 1
           when _RemDays.Dias between 31 and 100 then 2
           when _RemDays.Dias >= 100 then 3
           else 0
      end as TiempoRenta,
      ''  as Estado,
      _Brands.Imagen,
      _DetCustomer
}
