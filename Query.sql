
--crear la base de datos
create database Tienda

--poner en uso la base de datos
use Tienda

--crear la tabla
create table Producto

--insertar productos
insert into Producto
(codigo, nombre, variedad, marca, cantidad, precio
)

--insertar los valores de los productos
values
('cod1', 'leche', 'entera', 'colanta', 6, 1.20
)

--ver productos especificos
select nombre from Producto

--ver todos los productos
select * from Producto

--ver varios varios campos especificos
select nombre, marca, precio from Producto

--concatenar campos
select 'marca: '+ marca, codigo, nombre from Producto

--cast -> cambia el tipo de dato del campo
select 'producto: '+ nombre, 'marca: '+ marca, 'precio: '+ cast(precio as nvarchar) 
from Producto

--nombrar las columnas de campos concatenados
select 'productos: '+nombre as Productos, 'marca: '+marca as Marcas, 'precio: '+ cast (precio as nvarchar)as Ofertas 
from Producto 

--otro ejemplo de concatenación
select nombre + ' - ' + marca+ ' en packs de: '+ cast(cantidad as nvarchar)as lista from Producto

--crear una lista
select codigo as Referencia, nombre as Producto, marca as Marcas, variedad as Tipo, cast(precio as nvarchar) as PVP 
from Producto

--ordenar por columna
select * from Producto
order by nombre

--poner por orden ascendente (asc)
select * from Producto
order by precio asc

--poner por orden descendente (desc)
select * from Producto
order by precio desc

--mostrar un número especifico de campos
select top 4 codigo as Referencia, nombre as Producto from Producto

--filtrar por registros (where)
select * from Producto
where nombre= 'leche'

--para filtrar registros con la palabra o letra especifica en el inicio
select * from producto
where nombre like 'aceite%'

select * from producto
where nombre like 'c%'

--para filtrar registros con la palabra o una letra especifica sin importar su ubicación
select * from producto
where nombre like '%virgen%'

--para filtrar registros con mayor que (>)
select * from Producto
where cantidad>4

--para filtrar registros con igual que (<)
select * from Producto
where cantidad<6

--para filtrar registros con menor que (=)
select * from Producto
where cantidad=6

--para filtrar registros con menor o igual que (<=)
select * from Producto
where cantidad<=6

--para filtrar registros con mayor o igual que (>=)
select * from Producto
where cantidad>=6


--para imponer una nueva condición (and)
select * from Producto
where nombre like 'c%' and precio<6

--imponer una nueva condición (or). El and debe ir en parentesis.
select * from Producto
where (nombre like 'aceite%' and variedad like 'extra%')
	or nombre like 'Tomate%'

--imponer una nueva condición (or). El and tiene más prioridad que el or
select * from Producto
where nombre like 'aceite%' or nombre like 'Tomate%' and variedad like 'extra%'




--UPDATE Y DELETE


--Update de una tabla, primero se verifica cual va a ser el campo que será actualizado
select * from Producto
where codigo like 'cod2%'

--luego se procede a realizar el update
update Producto
set precio=1.25
where codigo like 'cod2%'

--también se pueden cambiar varios campos a la vez
update Producto
set precio=1.35, variedad='normal'
where codigo like 'cod2%'

--Delete de una tabla, primero se verifica cual va a ser el campo que será eliminado
select * from Producto
where nombre like 'leche%' and variedad like 'desnatada%'

--luego se procede a realizar el delete
delete from Producto
where nombre like 'leche%' and variedad like 'desnatada%'



--crear una tabla nueva con ID autoincrementable


--Insertar nuevo producto
use Tienda

select * from Producto

insert into Producto
(codigo, nombre, variedad, marca)

values
('cod10', 'leche', 'Entera', 'Ecovaca')


insert into ProductoV2
(nombre, variedad, marca, cantidad, precio)

values
('Jamon', 'Serrano', 'Patamarron',1,3.99)

select * from ProductoV2

insert into ProductoV2
(nombre, variedad, marca, cantidad, precio)

values
('Jamon', 'Ibérico', 'Patamarron',1,6.99)

insert into ProductoV2
(nombre, variedad, marca, cantidad, precio)

values
('Jamon', 'York', 'Patamarron',1,3.99)

select * from Producto
where codigo like 'cod10%'

delete from Producto
where codigo like 'cod10%'

insert into ProductoV2
select nombre, variedad, marca, cantidad, precio 
from Producto
