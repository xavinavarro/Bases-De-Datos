select *
from pedidos
where not exists(select * from detallepedidos dp inner join productos p on dp.CodigoProducto=p.CodigoProducto 
					where dp.CodigoPedido=pedidos.CodigoPedido and gama like "Herramientas")
					and exists (select * from productos p inner join detallepedidos dp on dp.CodigoProducto=p.CodigoProducto
                    where dp.CodigoPedido=pedidos.CodigoPedido and gama like "Aromáticas")