delimiter ~
create trigger bef_ins_clientes before insert on Clientes
for each row
	if new.Pais like "España" then 
		if new.LimiteCredito < 50 then
			set new.LimiteCredito=50;
		end if;
	elseif new.Limitecredito > 100 then
		set new.LimiteCredito = 100;
	end if;
~