select *
from clientes
where not exists(select * from pedidos where clientes.CodigoCliente=pedidos.CodigoCliente)