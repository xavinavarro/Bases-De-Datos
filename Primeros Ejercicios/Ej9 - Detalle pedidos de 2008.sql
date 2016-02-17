SELECT Detallepedidos.CodigoPedido, Detallepedidos.CodigoProducto, pedidos.CodigoPedido, Detallepedidos.PrecioUnidad, pedidos.FechaPedido
FROM Pedidos INNER JOIN DetallePedidos
WHERE (pedidos.CodigoPedido=DetallePedidos.CodigoPedido) and (pedidos.FechaPedido like "%2008%")