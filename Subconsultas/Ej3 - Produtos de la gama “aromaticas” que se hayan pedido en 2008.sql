select Nombre, Gama
from productos
where Gama LIKE "Aromáticas" and CodigoProducto in (select d.CodigoProducto 

from detallepedidos d inner join pedidos p on d.CodigoPedido=p.CodigoPedido 
where FechaPedido LIKE '2008%')