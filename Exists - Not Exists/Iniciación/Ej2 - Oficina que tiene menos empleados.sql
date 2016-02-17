select CodigoOficina, count(CodigoEmpleado) Trabajadores
from empleados e
group by CodigoOficina
having not exists (select em.CodigoOficina from empleados em 
					group by em.CodigoOficina
                    having count(em.CodigoEmpleado)<count(e.CodigoEmpleado))