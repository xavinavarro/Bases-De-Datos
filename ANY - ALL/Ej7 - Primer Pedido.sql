select *
from pedidos
where FechaPedido <=all (select FechaPedido
						from pedidos)