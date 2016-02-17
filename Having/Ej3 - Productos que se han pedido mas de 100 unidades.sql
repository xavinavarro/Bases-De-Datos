select p.Nombre, p.CodigoProducto , sum(Cantidad) Cantidad
from detallepedidos d inner join productos p on d.CodigoProducto=p.CodigoProducto
group by Cantidad
having sum(Cantidad)>100