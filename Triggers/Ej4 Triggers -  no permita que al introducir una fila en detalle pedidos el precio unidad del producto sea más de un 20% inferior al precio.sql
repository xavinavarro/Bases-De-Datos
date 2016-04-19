delimiter $
create trigger bef_ins_dp before insert on detallepedidos
for each row
begin
	select precioventa into @dinero from productos
    where CodigoProducto=new.CodigoProducto;
    if new.PrecioUnidad < @dinero * 0.8 or new.PrecioUnidad > @dinero then
		set new.PrecioUnidad = @dinero;
	end if;
end $

insert into detallepedidos values (1, 'FR-4',3,10,6)$
select * from detallepedidos$