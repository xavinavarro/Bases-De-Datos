select *
from pedidos
where not exists(select * from detallepedidos dp inner join productos p on dp.CodigoProducto=p.CodigoProducto 
					where dp.CodigoPedido=pedidos.CodigoPedido and gama not like "Aromáticas")
                    and exists (select * from detallepedidos dp inner join productos p on dp.CodigoProducto=p.CodigoProducto 
					where dp.CodigoPedido=pedidos.CodigoPedido and gama like "Aromáticas")