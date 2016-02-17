SELECT *
from productos
where (PrecioVenta = '1' OR PrecioVenta = '5' OR PrecioVenta = '10') AND (Gama LIKE 'Aromaticas')