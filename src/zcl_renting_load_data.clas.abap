CLASS zcl_renting_load_data DEFINITION
PUBLIC
FINAL
CREATE PUBLIC .
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_renting_load_data IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA: lt_brands    TYPE TABLE OF zrent_brands,
          lt_cars      TYPE TABLE OF zrent_cars,
          lt_customers TYPE TABLE OF
                         zrent_customers.
** BRANDS **
    lt_brands = VALUE #(
    ( marca = 'ASTON MARTIN' url = 'https://www.autobild.es/sites/autobild.es/public/styles/main_element/public/dc/fotos/Aston_Martin-DB9_2013_01.jpg?itok=bGlXq8UF' )
    ( marca = 'AUDI'         url = 'https://acroadtrip.blob.core.windows.net/catalogo-imagenes/xl/RT_V_8ca58632abf44d0db6f1b476fd54eec2.jpg' )
    ( marca = 'BENTLEY'      url = 'https://www.autobild.es/sites/autobild.es/public/styles/main_element/public/dc/fotos/Bentley-Continental_GT-2018-C01.jpg?itok=_kP_edH4' )
    ( marca = 'BUGATTI'      url = 'https://wtfonline.mx/wp-content/uploads/2018/12/buggatti.jpg' )
    ( marca = 'FERRARI'      url = 'https://api.ferrarinetwork.ferrari.com/v2/network-content/medias/resize/5dd552852cdb32285a785d2e-line-up-ferrari-sf90-stradale?apikey=9QscUiwr5n0NhOuQb463QEKghPrVlpaF&width=800&height=600' )
    ( marca = 'FORD'         url = 'https://www.elsoldemexico.com.mx/deportes/automotriz/1i0d6x-02_2019.png/ALTERNATES/LANDSCAPE_400/02_2019.png' )
    ( marca = 'HONDA'        url = 'https://cdn.autobild.es/sites/navi.axelspringer.es/public/styles/480/public/media/image/2017/06/643677-honda-civic-type-r-2017.jpg?itok=pmaP2b_K' )
    ( marca = 'JEEP'         url = 'https://s.aolcdn.com/commerce/autodata/images/USC80JES162A021001.jpg' )
    ( marca = 'KIA'          url = 'https://www.kia.com/content/dam/kwcms/mx/es/images/vehicles/thumnails_2020/menu_showrooms/Perfil-Home-Stinger.png' )
    ( marca = 'MERCEDES'     url = 'https://www.me.mercedes-benz.com.mx/es/passengercars/_jcr_content/image.MQ6.2.2x.20190815083805.png' )
    ( marca = 'MINI'         url = 'https://s.aolcdn.com/commerce/autodata/images/USC70MNC091B021001.jpg' )
    ( marca = 'SEAT'         url = 'https://www.seat.mx/content/countries/mx/seat-website/es/modelos/ibiza/_jcr_content.resizedViewPort.noscale.rangeMiniature.png' )
    ( marca = 'VW'           url = 'https://www.vwimg.com/iris/iris?bkgnd=transparent&fabric=BC&paint=0Q0Q&pov=E06,CGN&quality=100&vehicle=2020_BU32MS_2019_10_27&Resp=png&width=510&crop=20,90,450,232' )
    ( marca = 'BMW'          url = 'https://www.bmw.com.mx/content/dam/bmw/common/all-models/3-series/sedan/2018/navigation/bmw-3-series-modellfinder.png' ) ).

    DELETE FROM zrent_brands.
    INSERT zrent_brands FROM TABLE @lt_brands.
    SELECT * FROM zrent_brands INTO TABLE
    @lt_brands.
    out->write( sy-dbcnt ).
    out->write( 'zrent_brands data inserted successfully!' ).
** CARS**
    lt_cars = VALUE #(
    ( matricula = '1246GSA' marca = 'BMW'        modelo = 'SERIE 4'        color = 'BLANCO'   motor = '2.5' potencia = '210' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '7.00'  fecha_fabr = '20200418' puertas = '5' precio = '210' moneda =
'USD' alquilado = 'X' alq_desde = '20251201' alq_hasta = '20251231' )
    ( matricula = '2174FHF' marca = 'KIA'        modelo = 'CARENS'         color = 'AZUL'     motor = '4.2' potencia = '340' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '10.00' fecha_fabr = '20200617' puertas = '5' precio = '160' moneda =
'USD' alquilado = 'X' alq_desde = '20250801' alq_hasta = '20250831' )
    ( matricula = '2356FSF' marca = 'AUDI'       modelo = 'A8'             color = 'BLANCO'   motor = '3.9' potencia = '140' und_potencia = 'CV' combustible = 'ELECTRIC' consumo = '00.00' fecha_fabr = '20200304' puertas = '3' precio = '140' moneda =
'USD' alquilado = 'X' alq_desde = '20250701' alq_hasta = '20250708' )
    ( matricula = '2392JFH' marca = 'JEEP'       modelo = 'GRAND CHEROKEE' color = 'BLANCO'   motor = '3.6' potencia = '176' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '12.00' fecha_fabr = '20200924' puertas = '5' precio = '160' moneda =
'USD' alquilado = 'X' alq_desde = '20250601' alq_hasta = '20251001' )
    ( matricula = '2837KFF' marca = 'MERCEDES'   modelo = 'CLASE B'        color = 'NEGRO'    motor = '2.0' potencia = '200' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '7.00'  fecha_fabr = '20200726' puertas = '5' precio = '160' moneda =
'USD' alquilado = 'X' alq_desde = '20250301' alq_hasta = '20250301' )
    ( matricula = '2837SUF' marca = 'MERCEDES'   modelo = 'CLASE C'        color = 'AMARILLO' motor = '3.0' potencia = '220' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '6.00'  fecha_fabr = '20200614' puertas = '5' precio = '180' moneda =
'USD' alquilado = 'X' alq_desde = '20251201' alq_hasta = '20251206' )
    ( matricula = '2847JGH' marca = 'HONDA'      modelo = 'CARENS'         color = 'NEGRO'    motor = '1.9' potencia = '180' und_potencia = 'CV' combustible = 'DIESEL'   consumo = '5.00'  fecha_fabr = '20250716' puertas = '5' precio = '180' moneda =
'USD' alquilado = 'X' alq_desde = '20251201' alq_hasta = '20251206' )
    ( matricula = '29348KJ' marca = 'MINI'       modelo = 'CABRIO'         color = 'AMARILLO' motor = '2.0' potencia = '240' und_potencia = 'CV' combustible = 'ELECTRIC' consumo = '0.00'  fecha_fabr = '20200812' puertas = '3' precio = '150' moneda =
'USD' alquilado = 'X' alq_desde = '20251106' alq_hasta = '20251206' )
    ( matricula = '3123PLM' marca = 'TOYOTA'     modelo = 'COROLLA'        color = 'GRIS'     motor = '1.8' potencia = '140' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '6.80'  fecha_fabr = '20210415' puertas = '5' precio = '120' moneda =
'USD' alquilado = 'X' alq_desde = '20251115' alq_hasta = '20251215' )
    ( matricula = '4490TXR' marca = 'TESLA'      modelo = 'MODEL 3'        color = 'BLANCO'   motor = '0.0' potencia = '283' und_potencia = 'CV' combustible = 'ELECTRIC' consumo = '0.00'  fecha_fabr = '20210309' puertas = '5' precio = '200' moneda =
'USD' alquilado = 'X' alq_desde = '20251205' alq_hasta = '20251220' )
    ( matricula = '5201MNA' marca = 'VOLKSWAGEN' modelo = 'GOLF'           color = 'AZUL'     motor = '2.0' potencia = '170' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '7.50'  fecha_fabr = '20200220' puertas = '5' precio = '130' moneda =
'USD' alquilado = 'X' alq_desde = '20251210' alq_hasta = '20251220' )
    ( matricula = '6384QWE' marca = 'NISSAN'     modelo = 'QASHQAI'        color = 'NEGRO'    motor = '1.6' potencia = '150' und_potencia = 'CV' combustible = 'DIESEL'   consumo = '5.40'  fecha_fabr = '20210130' puertas = '5' precio = '125' moneda =
'USD' alquilado = 'X' alq_desde = '20250901' alq_hasta = '20250930' )
    ( matricula = '7412RAC' marca = 'PEUGEOT'    modelo = '3008'           color = 'ROJO'     motor = '1.6' potencia = '165' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '6.20'  fecha_fabr = '20201111' puertas = '5' precio = '135' moneda =
'USD' alquilado = 'X' alq_desde = '20250705' alq_hasta = '20250725' )
    ( matricula = '8055LNV' marca = 'CHEVROLET'  modelo = 'CAMARO'         color = 'AMARILLO' motor = '6.2' potencia = '455' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '12.50' fecha_fabr = '20200322' puertas = '3' precio = '220' moneda =
'USD' alquilado = 'X' alq_desde = '20251220' alq_hasta = '20251231' )
    ( matricula = '9123HJK' marca = 'RENAULT'    modelo = 'CLIO'           color = 'BLANCO'   motor = '1.2' potencia = '90'  und_potencia = 'CV' combustible = 'GASOLINA' consumo = '5.80'  fecha_fabr = '20210519' puertas = '5' precio = '95'  moneda =
'USD' alquilado = 'X' alq_desde = '20251010' alq_hasta = '20251020' )
    ( matricula = '9777SDF' marca = 'FORD'       modelo = 'RANGER'         color = 'GRIS'     motor = '3.2' potencia = '200' und_potencia = 'CV' combustible = 'DIESEL'   consumo = '9.80'  fecha_fabr = '20200909' puertas = '5' precio = '170' moneda =
'USD' alquilado = 'X' alq_desde = '20251101' alq_hasta = '20251130' ) ).

    DELETE FROM zrent_cars.
    INSERT zrent_cars FROM TABLE @lt_cars.
    SELECT * FROM zrent_cars INTO TABLE @lt_cars.
    out->write( sy-dbcnt ).
    out->write( 'zrent_cars data inserted successfully!' ).
** CUSTOMERS**
    lt_customers = VALUE #(
    ( doc_id = '005638984K' matricula =
    '8764FGH' nombres = 'Olivia' apellidos = 'Allan'
    email = 'olivia.allan@email.com' cntr_type = 'C1'
    )
    ( doc_id = '982356739N' matricula =
    '8764FGH' nombres = 'Matt' apellidos = 'Slater'
    email = 'matt.slater@email.com' cntr_type = 'C3'
    )
    ( doc_id = '453532543O' matricula =
    '8764FGH' nombres = 'Vanessa' apellidos = 'Wilson'
    email = 'vanessa.wilson@email.com' cntr_type = 'C1'
    )
    ( doc_id = '005632984R' matricula =
    '1246GSA' nombres = 'John' apellidos = 'Allan'
    email = 'john.allan@email.com' cntr_type = 'C3'
    )
    ( doc_id = '982367739N' matricula =
    '1246GSA' nombres = 'Clark' apellidos = 'Allan'
    email = 'clark.slater@email.com' cntr_type = 'C2'
    )
    ( doc_id = '340958439D' matricula =
    '29348KJ' nombres = 'Michael' apellidos = 'Short'
    email = 'michael.short@email.com' cntr_type = 'C1'
    )
    ( doc_id = '964356739N' matricula =
    '29348KJ' nombres = 'Robert' apellidos = 'Allan'
    email = 'robert.slater@email.com' cntr_type = 'C1'
    )
    ( doc_id = '340458439D' matricula =
    '2847JGH' nombres = 'Cole' apellidos = 'Short'
    email = 'cole.short@email.com' cntr_type = 'C2'
    )
    ( doc_id = '340958438D' matricula =
    '2827SAF' nombres = 'George' apellidos = 'Short'
    email = 'george.short@email.com' cntr_type = 'C3'
    )
    ( doc_id = '859675368G' matricula =
    '2827SAF' nombres = 'Sonny' apellidos = 'Wright'
    email = 'sonny.wright@email.com' cntr_type = 'C2'
    )
    ( doc_id = '859675388V' matricula =
    '2827SAF' nombres = 'Evelyn' apellidos = 'Wright'
    email = 'evelyn.wright@email.com' cntr_type = 'C2'
    )
    ( doc_id = '340952439D' matricula =
    '2837KFF' nombres = 'Avery' apellidos = 'Short'
    email = 'avery.short@email.com' cntr_type = 'C4'
    )
    ( doc_id = '859675388G' matricula =
    '2837KFF' nombres = 'Madison' apellidos = 'Wright'
    email = 'madison.wright@email.com' cntr_type =
    'C1' )
    ( doc_id = '982656739N' matricula =
    '2837SUF' nombres = 'Matt' apellidos = 'Slater'
    email = 'matt.slater@email.com' cntr_type = 'C3' )
    ( doc_id = '345093450E' matricula =
    '2425SFA' nombres = 'Sue' apellidos =
    'Sanderson' email = 'sue.sanderson@email.com'
    cntr_type = 'C1' )
    ( doc_id = '852367586F' matricula =
    '2425SFA' nombres = 'Eric' apellidos = 'Berry'
    email = 'eric.berry@email.com' cntr_type = 'C4'
    )
    ( doc_id = '345093850A' matricula =
    '2392JFH' nombres = 'Lily' apellidos =
    'Sanderson' email = 'lily.sanderson@email.com'
    cntr_type = 'C3' )
    ( doc_id = '489632862G' matricula =
    '2329HFS' nombres = 'Neil' apellidos = 'Welch'
    email = 'neil.welch@email.com' cntr_type = 'C2'
    )
    ( doc_id = '345234534M' matricula =
    '2329HFS' nombres = 'Lily' apellidos = 'Langdon'
    email = 'lily.langdon@email.com' cntr_type = 'C1' )
    ( doc_id = '453572543O' matricula =
    '2329HFS' nombres = 'Vanessa' apellidos = 'Wilson'
    email = 'vanessa.wilson@email.com' cntr_type = 'C4'
    )
    ( doc_id = '345839534R' matricula =
    '2356FSF' nombres = 'Andrew' apellidos =
    'Langdon' email = 'andrew.langdon@email.com'
    cntr_type = 'C2' )
    ( doc_id = '852327586F' matricula =
    '2392JFH' nombres = 'Addison' apellidos = 'Berry'
    email = 'addison.berry@email.com' cntr_type =
    'C2' )
    ( doc_id = '345831534R' matricula =
    '2174FHF' nombres = 'Lucy' apellidos = 'Langdon'
    email = 'lucy.langdon@email.com' cntr_type = 'C0' )
    ( doc_id = '489612882D' matricula =
    '2174FHF' nombres = 'Julian' apellidos = 'Welch'
    email = 'julian.welch@email.com' cntr_type =
    'C1' )
    ( doc_id = '348941597P' matricula =
    '2188SJS' nombres = 'Cooper' apellidos = 'Davies'
    email = 'cooper.davies@email.com' cntr_type = 'C1'
    )
    ( doc_id = '348947997P' matricula =
    '1246GSA' nombres = 'Lillian' apellidos = 'Davies'
    email = 'lillian.davies@email.com' cntr_type = 'C2'
    )
    ( doc_id = '430958233A' matricula =
    '2174FHF' nombres = 'Wendy' apellidos = 'Short'
    email = 'wendy.short@email.com' cntr_type = 'C4'
    )
    ( doc_id = '453832543O' matricula =
    '4545ABC' nombres = 'Vanessa' apellidos = 'Wilson'
    email = 'vanessa.wilson@email.com' cntr_type = 'C1'
    )
    ( doc_id = '982124739N' matricula =
    '2148AFS' nombres = 'Tyler' apellidos = 'Slater'
    email = 'tyler.slater@email.com' cntr_type = 'C3'
    )
    ( doc_id = '982356839W' matricula =
    '5235HER' nombres = 'Parker' apellidos = 'Slater'
    email = 'parker.slater@email.com' cntr_type = 'C3'
    )
    ).
    DELETE FROM zrent_customers.
    INSERT zrent_customers FROM TABLE @lt_customers.
    SELECT * FROM zrent_customers INTO TABLE
    @lt_customers.
    out->write( sy-dbcnt ).
    out->write( 'zrent_customers data inserted successfully!' ).
  ENDMETHOD.
ENDCLASS.
