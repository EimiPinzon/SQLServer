


/*

Informe ProductoV2:
--------

Seleccionar todos los productos de la tabla
Además de los campos de la propia tabla se debe añadir:
- La marca debe ir en mayusculas (UPPER)
- El pack debe indicar la cantidad + "Unid."  
- El nombre de columna de precio sera "PVP"
- Se debe indicar el precio total del pack
- Se debe indicar una oferta del 20% de descuento llamada "PVP Oferta"
- Dependiendo de la condicion de marca nueva columna "Oferta válida hasta:"
	(eso es la sentencia CASE WHEN <condicion1> THEN <resultado1>  --<-- '12/12/2019'
							  WHEN <condicion2> THEN <resultado2>  --<-- '24/12/2019'							  
							  ELSE <resultadoM>					   --<-- 'Fin de 2019'
						 END AS <NombreColumna>
- Ordenar por marca y nombre							 
*/

select nombre as Producto
	,variedad as Variedad
	, upper(marca) as Marca
	,CAST (cantidad as nvarchar) + ' unid.' as Pack
	,precio as PVP
	,cantidad*precio as "precio caja"
	,cast (precio*0.80 as numeric(18,2)) as "PVP Oferta"
	,case when marca like 'Eco%' then '12/12/2021'
			when marca like 'Trigolimpio' then '24/12/2021'
			else 'fin del 2021'
		end as "Oferta valida hasta"
from ProductoV2

order by marca, nombre



