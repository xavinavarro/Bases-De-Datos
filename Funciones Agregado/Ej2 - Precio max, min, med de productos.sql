select max(PrecioVenta) "Precio maximo", min(Precioventa) "Precio minimo", avg(PrecioVenta) "Precio Medio", count(PrecioVenta) "Productos"
from productos;