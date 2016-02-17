select CodigoOficina, count(CodigoEmpleado) Trabajadores
from empleados
group by CodigoOficina
having count(*) <= all (select count(CodigoEmpleado) from empleados group by CodigoOficina)
