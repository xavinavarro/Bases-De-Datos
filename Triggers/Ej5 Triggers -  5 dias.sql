delimiter $
create trigger bef_ins_fech before insert on pedidos
for each row
begin
	if datediff(new.FechaEntrega,new.FechaPedido)<5 or new.FechaEntrega is not null then
		set new.fechaentrega=null;
	end if;
end $