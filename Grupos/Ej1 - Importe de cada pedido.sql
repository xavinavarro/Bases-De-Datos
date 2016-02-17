select CodigoPedido, sum(Cantidad*PrecioUnidad)
from detallepedidos
group by CodigoPedido