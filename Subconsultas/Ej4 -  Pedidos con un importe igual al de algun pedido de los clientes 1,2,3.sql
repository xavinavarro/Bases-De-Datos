select CodigoCliente, dp.CodigoPedido , sum(Cantidad*PrecioUnidad) Importe
from detallepedidos dp inner join pedidos p on dp.CodigoPedido=p.CodigoPedido
where p.CodigoCliente  =any (select CodigoCliente
							from pedidos 
							where codigocliente LIKE 1 OR CodigoCliente LIKE 2 OR CodigoCliente LIKE 3)
group by CodigoPedido