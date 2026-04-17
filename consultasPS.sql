-- 4. Precio promedio de las habitaciones más reservadas
-- Muestra el precio promedio de las habitaciones que han tenido al menos una reserva.
SELECT 
    AVG(h.precio_noche) AS precio_promedio_reservadas
FROM habitacion h
INNER JOIN reserva AS r 
ON h.id_habitacion = r.id_habitacion;


-- 5. Suma de precios de habitaciones por cliente
-- Calcula la suma de los precios de las habitaciones que ha reservado cada cliente.
SELECT 
    c.nombre,
    SUM(h.precio_noche) AS suma_precios_reservados
FROM cliente c
INNER JOIN reserva AS r
ON c.id_cliente = r.id_cliente
INNER JOIN habitacion AS h
 ON r.id_habitacion = h.id_habitacion
GROUP BY c.id_cliente, c.nombre
ORDER BY suma_precios_reservados DESC;



