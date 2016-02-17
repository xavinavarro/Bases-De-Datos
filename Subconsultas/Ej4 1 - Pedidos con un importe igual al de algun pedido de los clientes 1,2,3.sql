select CodigoCliente, sum(Cantidad*PrecioUnidad) Importe
from detallepedidos dp inner join pedidos p on dp.CodigoPedido=p.CodigoPedido
where CodigoCliente in (1,2,3)
group by dp.CodigoPedido