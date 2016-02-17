select empleados.Nombre, /*empleados.CodigoOficina,*/ oficinas.CodigoOficina, oficinas.Pais ,oficinas.Ciudad
from empleados INNER JOIN oficinas
where empleados.CodigoOficina=oficinas.CodigoOficina and oficinas.Pais= 'España'
/*where empleados.CodigoOficina=oficinas.CodigoOficina and oficinas.Ciudad= 'Madrid' or oficinas.ciudad='Barcelona'*/