select max(PrecioVenta) "Precio maximo", min(Precioventa) "Precio minimo", avg(PrecioVenta) "Precio Medio", count(PrecioVenta) Productos, FechaPedido

from productos pr INNER JOIN detallepedidos dp on pr.codigoproducto=dp.codigoproducto INNER JOIN pedidos p on p.codigopedido=dp.codigopedido

where FechaPedido like '2008%'
