select clientes.NombreCliente, empleados.nombre, empleados.CodigoEmpleado, oficinas.ciudad
from clientes INNER JOIN empleados INNER JOIN oficinas
where (clientes.CodigoEmpleadoRepVentas=empleados.CodigoEmpleado) and oficinas.ciudad in ('Madrid', 'Barcelona');