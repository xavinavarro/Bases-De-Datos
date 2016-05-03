delimiter /
CREATE function fac1(num int) returns int
begin 
	declare
			acum int default 1;
		if num>0 then
			while num>0 do
				set acum=acum*num;
                set num=num-1;
			end while;
		end if;
        return acum;
end/


create procedure fact2(num int, out acum int)
begin
	set acum=1;
	if num>0 then
		while num>0 do
			set acum=acum*num;
            set num=num-1;
		end while;
	end if;
end /

set @d=10/
call fact2(@d,@d)/
select @d/

create function wiliwonka (p varchar(50)) returns int
	begin 
		declare  done int default 0;
        declare a int(11);
        declare cont int default 0;
        declare cur1 cursor for select CodigoCliente from clientes where pais=p;
        declare continue handler for sqlstate '02000' set done =1;
        
        open cur1;
        
        while(done=0) do
			fetch cur1 into a;
			set cont=cont+1;	
        end while;
        return cont;
        close cur1;
end/



#La siguiente función debe construir una cadena con los nombres de los Productos de una determinada Gama,
#pasada como parámetro, y que no superen cierto PrecioVenta, también pasado como parámetro. 
#La cadena comenzará con “Productos de la gama X que no superan el precio X: 
#“ y seguirá con los nombres de los productos mediante comas.
#Una vez conseguido, realizad un procedimiento equivalente.

drop function ProdPrecio;
delimiter |
CREATE function ProdPrecio(g varchar(20), p int(10)) returns varchar(500)
begin
	declare done int default 0;
    declare cad varchar(500);
    declare n varchar(100);
    declare pr decimal(8,2);
    declare cur1 cursor for select PrecioVenta,nombre from productos where gama=g;
    declare continue handler for sqlstate '02000' set done =1;
	set cad = concat('Los productos de la gama ',g,'con un precio igual o menor que ',p, 'son los siguientes: ');
    open cur1;
    while done = 0 do 
		fetch cur1 into pr,n;
		if Pr <= p then
			 set cad=concat(cad,n,', '); 
		end if;
    end while;
    return cad;
end|
select ProdPrecio('Aromáticas', 20);