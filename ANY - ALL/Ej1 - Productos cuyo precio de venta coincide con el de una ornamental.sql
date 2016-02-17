select Nombre, PrecioVenta, Gama
from productos
where PrecioVenta = any (select PrecioVenta from productos where Gama = "Ornamentales")