--------------------------------------------REPORTES--------------------------------------------
CREATE OR REPLACE FUNCTION reporte_top_clientes(fecha_inicio DATE, fecha_fin DATE, cantidad_usuarios INTEGER, orden_usuarios TEXT)
RETURNS TABLE (nombre_usuario TEXT, total_comprado NUMERIC) AS
$$
BEGIN
	
END;
$$
LANGUAGE plpgsql;