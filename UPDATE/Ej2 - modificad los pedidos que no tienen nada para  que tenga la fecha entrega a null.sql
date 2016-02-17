update Pedidos
set FechaEntrega= NULL
where CodigoPedido not in (select CodigoPedido from detallepedidos)