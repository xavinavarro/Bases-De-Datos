select Codigopedido, codigoproducto, preciounidad, Cantidad, sum(PrecioUnidad*Cantidad) "Precio total del pedido"
from detallepedidos
where CodigoPedido = 1
order by 1