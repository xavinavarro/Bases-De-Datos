SELECT FechaPedido, FechaEsperada, FechaEntrega, CodigoPedido
from pedidos
where FechaEntrega is not null and FechaEntrega-FechaPedido<=7