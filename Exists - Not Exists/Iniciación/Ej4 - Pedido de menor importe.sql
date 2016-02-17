select CodigoPedido, sum(PrecioUnidad*Cantidad) Importe
from detallepedidos d
group by CodigoPedido
having not exists (select * from detallepedidos dp group by dp.CodigoPedido
											having sum(dp.PrecioUnidad*dp.Cantidad)<sum(d.PrecioUnidad*d.Cantidad))