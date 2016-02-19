/*Borrad los clientes que no han hecho ningun pedido*/
delete from Clientes
where CodigoCliente not in (select CodigoCliente from pedidos)