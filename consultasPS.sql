-- 4. Suma de números de habitación por tipo
-- Suma los números de habitación agrupados por tipo.
SELECT 
    tipo,
    SUM(num_habitacion) AS suma_numeros_habitacion
FROM habitacion
GROUP BY tipo
ORDER BY suma_numeros_habitacion DESC;


-- 5. Total de reservas por tipo de habitación
-- Cuenta cuántas reservas ha tenido cada tipo de habitación.
SELECT 
    h.tipo,
    COUNT(r.id_reserva) AS total_reservas
FROM habitacion h
JOIN reserva r ON h.id_habitacion = r.id_habitacion
GROUP BY h.tipo
ORDER BY total_reservas DESC;


