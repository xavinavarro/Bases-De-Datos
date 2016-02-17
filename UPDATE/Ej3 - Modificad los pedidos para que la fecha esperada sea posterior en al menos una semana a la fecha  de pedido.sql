update Pedidos
set FechaEsperada = adddate(FechaEsperada, 7)
where FechaEsperada-FechaPedido<7 or FechaEsperada=null