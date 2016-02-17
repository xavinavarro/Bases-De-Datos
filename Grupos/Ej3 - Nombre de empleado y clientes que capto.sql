select Nombre "Nombre empleado", CodigoEmpleadoRepVentas "Codigo empleado", count(codigocliente) "Clientes captados" 
from clientes c inner join empleados e on c.CodigoEmpleadoRepVentas=e.CodigoEmpleado
group by CodigoEmpleadoRepVentas