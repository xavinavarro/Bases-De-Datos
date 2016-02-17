/* ENUNCIADO:
11-Detalle de los pedidos en los que se proyecte el nombre de los productos su gama y el precio por línea.  */

select productos.Nombre, productos.Gama, detallepedidos.CodigoProducto, productos.PrecioVenta, detallepedidos.NumeroLinea
FROM productos INNER JOIN detallepedidos
where productos.nombre or (productos.codigoproducto=detallepedidos.CodigoProducto) or productos.gama;