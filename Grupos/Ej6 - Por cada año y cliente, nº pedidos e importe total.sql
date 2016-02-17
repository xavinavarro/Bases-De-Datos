select c.NombreCliente "Nombre Cliente", c.codigocliente "Codigo Cliente", year(Fechapedido) Año, count(p.CodigoPedido) "Pedidos realizados", sum(cantidad*PrecioUnidad) "Importe total"
from pedidos p inner join detallepedidos dp on dp.codigopedido=p.codigopedido inner join clientes c on c.codigocliente=p.CodigoCliente
group by year(FechaPedido), c.CodigoCliente