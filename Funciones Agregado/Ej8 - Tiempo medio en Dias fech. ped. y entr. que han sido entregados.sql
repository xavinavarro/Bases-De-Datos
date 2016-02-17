select avg(datediff(Fechaentrega, fechapedido))
from pedidos
where Fechaentrega