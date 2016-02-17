SELECT NombreCliente, NombreContacto,ApellidoContacto, Pais,Ciudad
FROM clientes
WHERE (Ciudad LIKE 'London' OR Ciudad LIKE 'Paris') AND NombreCliente NOT LIKE "A%";