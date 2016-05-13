create table actualizacionLimiteCredito(
fecha datetime, CodigoCliente integer, incremento numeric(15,2))
engine=innodb;

delimiter //
create procedure IncrementaLimCredito(IN porcentaje integer)
begin
	declare totalpedidos, credito, incremento numeric(15,2);
    declare cliente, terminado integer default 0;
    declare curclientes cursor for 
		select LimiteCredito, CodigoCliente from clientes;
	declare continue handler for sqlstate '02000' set terminado = 1;
    declare exit handler for not found rollback;
    declare exit handler for sqlexception rollback;
    open curClientes;
    start transaction;
    fetch curClientes into credito, cliente;
    while not terminado do
		select sum(cantidad*PrecioUnidad) into totalpedidos
			from detallepedidos
				natural join pedidos where year(fechapedido)
				between 2008 and 2010 and pedidos.CodigoCliente=Cliente;
		if totalpedidos is not null then
			set incremento=totalpedidos*porcentaje/100;
            update clientes set LimiteCredito=limitecredito+incremento
				where CodigoCliente=cliente;
			insert into actualizacionLimiteCredito values(now(),Cliente, incremento);
		end if;
        fetch curclientes into credito, cliente;
	end while;
    commit;
    end;
    //
    delimiter ;
    call incrementaLimCredito(15);