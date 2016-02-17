SELECT *
from Clientes
WHERE (Ciudad like "London" or Ciudad like "París" or Ciudad like "Madrid" or Ciudad like "Barcelona" or Ciudad like "New York")
and NombreCliente like "%a%"
