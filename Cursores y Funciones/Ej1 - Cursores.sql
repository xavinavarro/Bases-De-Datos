delimiter $
create function potato (p varchar(50)) returns int
begin
	declare hecho int default 0;
    declare a varchar(50);
    declare cont1 int default 0;
    declare cur1 cursor for select CodigoCLiente from clientes where pais=p;
    declare continue handler for sqlstate '02000' set hecho=1;
    
    open cur1;
    
    while hecho=0 do 
		fetch cur1 into a;
        set cont=cont+1;
	end while;
    return cont1;
    close cur1;
end$