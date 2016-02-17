SELECT clientes.CodigoCliente, clientes.nombrecliente, empleados.CodigoEmpleado, /*clientes.CodigoEmpleadoRepVentas,*/ empleados.Nombre
FROM clientes INNER JOIN empleados
where clientes.CodigoEmpleadoRepVentas=empleados.CodigoEmpleado;