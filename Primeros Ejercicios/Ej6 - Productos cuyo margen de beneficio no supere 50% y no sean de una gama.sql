SELECT PrecioVenta, PrecioProveedor, Nombre, CodigoProducto
from Productos
where (Precioventa-PrecioProveedor)/PrecioVenta < 0.5 and Gama not like 'Ornamentales'