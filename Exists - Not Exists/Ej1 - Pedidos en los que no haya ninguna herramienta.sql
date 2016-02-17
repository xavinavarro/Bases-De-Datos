select CodigoPedido, Gama
from detallepedidos dp inner join productos pr on dp.CodigoProducto=pr.CodigoProducto
where Gama not like "Herramientas" and exists (select Gama from productos where Gama not like "Herramientas")
group by CodigoPedido