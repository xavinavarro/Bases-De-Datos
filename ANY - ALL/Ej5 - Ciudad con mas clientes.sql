select Ciudad, count(CodigoCliente) Clientes
from clientes
group by Ciudad
having count(*) >= all (select count(CodigoCliente) from clientes group by Ciudad)