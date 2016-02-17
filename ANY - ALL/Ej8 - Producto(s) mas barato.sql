select *
from productos
where PrecioVenta <=all (select PrecioVenta from productos)