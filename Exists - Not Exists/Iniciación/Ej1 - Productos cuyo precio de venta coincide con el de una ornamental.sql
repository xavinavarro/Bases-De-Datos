select *
from productos p
where p.Gama not like "Ornamentales" and exists(select * from productos p2 
												where p2.Gama LIKE "Ornamentales" and p2.PrecioVenta = p.PrecioVenta)