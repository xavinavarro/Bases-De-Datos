select Gama, count(*) Productos
from productos p
group by Gama
having not exists(select count(*) from productos pr group by pr.Gama having count(pr.CodigoProducto)>count(p.CodigoProducto))



/* having exists (select * from productos pr where pr.Gama<p.Gama) 
			and not exists(select * from productos pr where pr.Gama>p.Gama)*/ 
		
	
/*Este tambien esta bien*/