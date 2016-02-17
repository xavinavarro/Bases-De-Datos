select *
from pedidos
where FechaPedido >all (select FechaPedido 
						from pedidos p inner join clientes c on p.CodigoCliente=c.CodigoCliente
                        where Ciudad like "Barcelona")                        