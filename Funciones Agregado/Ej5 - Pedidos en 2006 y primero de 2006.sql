select max(FechaPedido) ultimo, min(FechaPedido) primero, count(*)
from pedidos
where FechaEntrega like '2006%'