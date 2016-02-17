select CodigoPedido, sum(PrecioUnidad*Cantidad) Importe
from detallepedidos
group by CodigoPedido
having sum(PrecioUnidad*Cantidad) <= all (select sum(PrecioUnidad*Cantidad) from detallepedidos group by CodigoPedido)