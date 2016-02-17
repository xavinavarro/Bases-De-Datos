
SELECT Nombre,Gama,	PrecioVenta
FROM productos
WHERE (PrecioVenta >= '10' AND PrecioVenta <= '20') AND (Gama LIKE 'Ornamentales' OR Gama LIKE 'Herramientas');