select j.nombre Jefe, count(*) "Empleados a su cargo"
from empleados e inner join empleados j on e.CodigoJefe=j.CodigoEmpleado
group by j.CodigoEmpleado, j.Nombre