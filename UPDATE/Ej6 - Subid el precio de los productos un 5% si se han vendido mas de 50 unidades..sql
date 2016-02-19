/* 6- Subid el precio de los productos un 5% si se han vendido mas de 100 unidades.*/
update productos set PrecioVenta= round(PrecioVenta*1.05,2)
where CodigoProducto in (select CodigoProducto from detallepedidos
						group by CodigoProducto having sum(Cantidad)>=50)