select o.CodigoOficina, count(*)
from oficinas o inner join empleados e on o.CodigoOficina=e.CodigoOficina
group by o.CodigoOficina
having count(*)<3