-- ─────────────────────────────────────────────
-- RESERVAS
-- ─────────────────────────────────────────────
-- Juan Sastre reserva la habitación 101
INSERT INTO reserva (id_cliente, id_habitacion, fecha_entrada, fecha_salida)
    SELECT c.id_cliente, h.id_habitacion, '2025-06-01', '2025-06-05'
    FROM cliente c, habitacion h
    WHERE c.nombre = 'Juan Sastre' AND h.numero_habitacion = '101';

-- María López reserva la 201 (doble)
INSERT INTO reserva (id_cliente, id_habitacion, fecha_entrada, fecha_salida)
    SELECT c.id_cliente, h.id_habitacion, '2025-06-03', '2025-06-07'
    FROM cliente c, habitacion h
    WHERE c.nombre = 'María López' AND h.numero_habitacion = '201';

-- Carlos Fernández reserva la suite 301
INSERT INTO reserva (id_cliente, id_habitacion, fecha_entrada, fecha_salida)
    SELECT c.id_cliente, h.id_habitacion, '2025-06-10', '2025-06-15'
    FROM cliente c, habitacion h
    WHERE c.nombre = 'Carlos Fernández' AND h.numero_habitacion = '301';

-- Ana García reserva la 102 (mismas fechas que Juan en la 101 → otra habitación, correcto)
INSERT INTO reserva (id_cliente, id_habitacion, fecha_entrada, fecha_salida)
    SELECT c.id_cliente, h.id_habitacion, '2025-06-01', '2025-06-03'
    FROM cliente c, habitacion h
    WHERE c.nombre = 'Ana García' AND h.numero_habitacion = '102';

-- Pedro Martínez hace una segunda reserva de Juan Sastre (en el futuro)
INSERT INTO reserva (id_cliente, id_habitacion, fecha_entrada, fecha_salida)
    SELECT c.id_cliente, h.id_habitacion, '2025-07-20', '2025-07-25'
    FROM cliente c, habitacion h
    WHERE c.nombre = 'Pedro Martínez' AND h.numero_habitacion = '202';
