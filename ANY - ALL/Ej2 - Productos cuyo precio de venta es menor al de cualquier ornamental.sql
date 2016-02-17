select Nombre, PrecioVenta, Gama
from productos
where PrecioVenta < all (select PrecioVenta from productos where Gama = "Ornamentales")