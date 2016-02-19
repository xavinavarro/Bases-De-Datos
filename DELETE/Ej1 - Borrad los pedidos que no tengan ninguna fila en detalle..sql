/* Ej1 - Borrad los pedidos que no tengan ninguna fila en detalle.*/
delete from pedidos
where CodigoPedido not in(select CodigoPedido from detallepedidos)
					/*and CodigoPedido in(select CodigoPedido from detallepedidos where Codigopedido= null)*/