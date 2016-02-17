select p.Nombre "Nombre Producto" , count(CodigoPedido) "Nº Pedidos"
from detallepedidos d inner join productos p on d.codigoproducto=p.codigoproducto
group by CodigoPedido
having count(*)>5