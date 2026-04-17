-- ─────────────────────────────────────────────
-- CONSULTA 3 (JOIN)
-- Ver todas las reservas: quién reservó qué habitación y cuándo
-- ─────────────────────────────────────────────
SELECT
    c.nombre            AS cliente,
    h.numero_habitacion AS habitacion,
    r.fecha_entrada,
    r.fecha_salida
FROM reserva r
JOIN cliente    c ON r.id_cliente    = c.id_cliente
JOIN habitacion h ON r.id_habitacion = h.id_habitacion;

