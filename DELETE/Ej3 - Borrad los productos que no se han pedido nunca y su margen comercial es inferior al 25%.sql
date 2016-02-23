/* Borrad los productos que no se han pedido nunca y su margen comercial es inferior al 25% */
delete from productos
where CodigoProducto not in(select CodigoProducto from DetallePedidos) and (PrecioVenta-PrecioProveedor)/PrecioProveedor<0.25