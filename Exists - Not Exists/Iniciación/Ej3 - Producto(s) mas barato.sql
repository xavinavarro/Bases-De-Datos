select *
from productos p 
where not exists (select p2.PrecioVenta from productos p2 where p2.PrecioVenta < p.Precioventa)