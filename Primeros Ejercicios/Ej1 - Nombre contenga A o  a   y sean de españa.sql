SELECT NombreCliente,Pais,Ciudad
FROM clientes
WHERE (Pais LIKE 'España' OR Pais LIKE'Spain') AND (NombreCliente LIKE "%a%" OR NombreCliente LIKE "%A%");