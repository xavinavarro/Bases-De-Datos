select year(Fechapedido) Año, count(distinct p.CodigoPedido) "Total pedidos", sum(cantidad*PrecioUnidad) "Importe total"
from pedidos p inner join detallepedidos dp on dp.codigopedido=p.codigopedido
group by year(FechaPedido)