select * 
from pedidos
where not exists(select * from detallepedidos dp inner join productos p on dp.CodigoProducto=p.CodigoProducto 
					where dp.CodigoPedido=pedidos.CodigoPedido and dp.Cantidad != 0)	