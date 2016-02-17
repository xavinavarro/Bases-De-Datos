select CodigoPedido, FechaPedido
from pedidos
where FechaPedido in (select FechaPago from pagos)