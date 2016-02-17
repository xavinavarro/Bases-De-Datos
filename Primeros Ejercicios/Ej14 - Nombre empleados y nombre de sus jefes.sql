select e.nombre, j.Nombre
from empleados e INNER JOIN empleados j on e.CodigoJefe=j.CodigoEmpleado