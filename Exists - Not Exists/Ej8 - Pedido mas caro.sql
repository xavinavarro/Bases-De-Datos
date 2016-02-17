select CodigoPedido , sum(Cantidad*PrecioUnidad) Importe
from detallepedidos dp
group by CodigoPedido
having not exists(select CodigoPedido from detallepedidos dps group by dps.CodigoPedido
					having sum(dps.Cantidad*dps.PrecioUnidad)>sum(dp.Cantidad*dp.PrecioUnidad))