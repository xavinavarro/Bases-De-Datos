update productos set PrecioVenta= PrecioVenta*0.8 
where  CodigoProducto not in ( select CodigoProducto from detallepedidos dp inner join pedidos p on dp.CodigoPedido=p.CodigoPedido 
								where year(FechaPedido) in (select max(year(FechaPedido)) from pedidos))