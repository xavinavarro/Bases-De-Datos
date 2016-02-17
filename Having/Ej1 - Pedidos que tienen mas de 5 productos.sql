select codigopedido, count(*)
from detallepedidos
group by CodigoPedido
having count(*)>5