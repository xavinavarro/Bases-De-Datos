select  nombrecliente "Nombre del Cliente", sum(cantidad) "Importe total", count(*) "Numero de pagos"
from Pagos inner join Clientes on Pagos.CodigoCliente=Clientes.CodigoCliente
where nombrecliente like 'Gerudo Valley'