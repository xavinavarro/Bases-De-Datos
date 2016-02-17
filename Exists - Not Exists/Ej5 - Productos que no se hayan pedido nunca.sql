select *
from productos
where not exists(select * from detallepedidos where productos.codigoproducto = detallepedidos.codigoproducto)






/*select * from pedidos p where CodigoProducto = 0)
				and exists(select * from pedidos where CodigoProducto != 0)*/