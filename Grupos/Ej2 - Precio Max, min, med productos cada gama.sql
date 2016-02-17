select gama, max(PrecioVenta), min(PrecioVenta), avg(PrecioVenta)
from productos
group by Gama