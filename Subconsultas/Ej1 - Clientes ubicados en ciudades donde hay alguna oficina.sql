select *
from clientes
where Ciudad in (select Ciudad from Oficinas)