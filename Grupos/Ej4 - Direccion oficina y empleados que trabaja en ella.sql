select e.CodigoOficina Oficina, LineaDireccion1 Dirección,count(CodigoEmpleado) "Numero de empleados"
from oficinas o inner join empleados e on o.codigooficina=e.codigooficina
group by LineaDireccion1