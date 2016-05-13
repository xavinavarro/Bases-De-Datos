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

#Ejercicio 1. FUNCIONES Y PROCEDIMIENTOS 
drop function ProdPrecio;#By FerPerez13 | https://github.com/FerPerez13/ 
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

#2) La siguiente función debe construir una cadena con las fechas de pedido separada por comas, 
#de los pedidos realizados en un año determinado pasado como parámetro. 
#La cadena comenzará con “Pedidos del año X: “.  
#Una vez conseguido, realizad un procedimiento equivalente.
delimiter $
create function Hype( a int) returns text
begin
	declare done int default 0;
    declare cad text;
    declare cod int (11);
    declare f date;
    declare cur1 cursor for select fechapedido, codigopedido from pedidos;
    declare continue handler for sqlstate '02000' set done =1;
    
    set cad=concat('Los productos del año ',a,' son: ');
    open cur1;
    repeat 
		fetch cur1 into f, cod;
		if year(f)=a then
			set cad=concat(cad,", ",f);
		end if;
    until done=1 end repeat;
    return cad;
    
    
end $

select hype(2007)$

<<<<<<< HEAD
#1)	Crea una tabla PedidosAnulados donde se guardaran los Pedidos que se anulen antes de su entrega.
#Es decir, si la fecha de entrega es nula o es posterior a la fecha actual, el pedido se podrá borrar 
#y en ese caso se incluirá una fila en PedidosAnulados donde conste: 
#CodigoPedido, FechaPedido, FechaAnulación, CodigoCliente, ImporteTotal y Comentarios.
#Implementa estos requisitos con triggers 

#2)	Procedimiento que dado un CodigoPedido borre el Pedido y, por su puesto, 
#las tuplas relacionadas en DetallePedido.
#El procemiento debe tener en cuenta que el CodigoPedido puede no existir.
#Se deben gestionar los posibles errores con handlers.
#¿Crees necesaria una transacción para ello? ¿Por qué?

create table PedidosAnulados (
CodigoPed int (11),
FechaPed date,
CodigoClient int(11),
Comentar text,
ImporteTotal decimal,
FechaAnulacion date,
primary key pedidosanulados(CodigoPed)
)$
create procedure  anular(codig int(11))
begin
	declare c int(11);
    declare fp date;
    declare fe date;
    declare impo decimal;
    declare fanul date;
    declare exit handler for sqlstate '23000' rollback;
    
	start transaction;
	select CodigoPedido, FechaPedido, FechaEntrega into c, fp,fe from Pedidos where CodigoPedido=Codig;
	if c is not null and (fe is null or fe > curdate()) then

        insert into pedidosanulados(codigoped, fechaped, codigoclient, comentar) select CodigoPedido, FechaPedido, CodigoCliente, Comentarios from pedidos where codigopedido=codig;
        select sum(PrecioUnidad*Cantidad) into impo from detallepedidos where CodigoPedido=codig;
        set fanul=curdate();
        update pedidosanulados set ImporteTotal=impo, FechaAnulacion=fanul;
        
        delete from detallepedidos where detallepedidos.codigopedido=codig;
        delete from pedidos where codigopedido=codig;
       
    end if;
	commit ;
end$
delimiter ;
call anular(4);
drop procedure anular;
select * from pedidosanulados;
=======
#PROCEDIMIENTOSWANAL
create procedure entrada_Pedidos (idcli int, idpro varchar, cant int)
begin
>>>>>>> 7b91673acd2c4a3254ffc7a01f8e88cf6edadb2b