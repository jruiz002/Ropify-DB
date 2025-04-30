--------------------------1. Reporte Muestra los empleados que han vendido más en un período determinado--------------------------
CREATE OR REPLACE FUNCTION top_ventas_por_empleado(
    fecha_inicio TIMESTAMP,
    fecha_fin TIMESTAMP,
    p_id_rol INT,
    top_n INT
)
RETURNS TABLE (
    id_empleado INT,
    nombre_empleado VARCHAR,
    total_vendido NUMERIC
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        e.id_empleado,
        e.nombre,
        SUM(v.total) AS total_vendido
    FROM 
        Ventas v
        INNER JOIN Empleados e ON v.id_empleado = e.id_empleado
        INNER JOIN EmpleadoRol er ON e.id_empleado = er.id_empleado
    WHERE 
        v.fecha_venta BETWEEN fecha_inicio AND fecha_fin
        AND (p_id_rol IS NULL OR er.id_rol = p_id_rol)
    GROUP BY 
        e.id_empleado, e.nombre
    ORDER BY 
        total_vendido DESC
    LIMIT top_n;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM top_ventas_por_empleado(
    '2025-01-01 00:00:00', 
    '2025-12-31 23:59:59', 
    1,     
    5        
);

--------------------------2. Reporte Muestra los Productos más vendidos--------------------------
CREATE OR REPLACE FUNCTION productos_mas_vendidos(
    fecha_inicio TIMESTAMP,
    fecha_fin TIMESTAMP,
    p_id_categoria INT,
    top_n INT
)
RETURNS TABLE (
    id_producto INT,
    nombre_producto VARCHAR(100),
    cantidad_total NUMERIC(10,2)
)
AS $$
BEGIN
    RETURN QUERY
    SELECT 
        p.id_producto,
        p.nombre,
        SUM(dv.cantidad)::NUMERIC(10,2) AS cantidad_total
    FROM DetalleVenta dv
    JOIN Ventas v ON dv.id_venta = v.id_venta
    JOIN Productos p ON dv.id_producto = p.id_producto
    WHERE v.fecha_venta BETWEEN fecha_inicio AND fecha_fin
      AND (p_id_categoria IS NULL OR p.id_categoria = p_id_categoria)
    GROUP BY p.id_producto, p.nombre
    ORDER BY cantidad_total DESC
    LIMIT top_n;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM productos_mas_vendidos(
    '2005-01-01 00:00:00', 
    '2025-12-31 23:59:59', 
    5,     
    10       
);


--------------------------3. Lista los proveedores que más han ingresado productos al inventario--------------------------
CREATE OR REPLACE FUNCTION top_proveedores(
    fecha_inicio DATE,
    fecha_fin DATE,
    orden_por TEXT,
    top_n INT
)
RETURNS TABLE (
    id_proveedor INT,
    nombre_proveedor VARCHAR(100),
    valor NUMERIC(10,2)
)
AS $$
BEGIN
    IF orden_por = 'total_ingresado' THEN
        RETURN QUERY
        SELECT 
            pr.id_proveedor,
            pr.nombre,
            SUM(i.cantidad)::NUMERIC(10,2) AS valor
        FROM Inventario i
        JOIN Proveedores pr ON i.id_proveedor = pr.id_proveedor
        WHERE i.fecha_ingreso BETWEEN fecha_inicio AND fecha_fin
        GROUP BY pr.id_proveedor, pr.nombre
        ORDER BY valor DESC
        LIMIT top_n;
        
    ELSIF orden_por = 'cantidad_productos' THEN
        RETURN QUERY
        SELECT 
            pr.id_proveedor,
            pr.nombre,
            COUNT(DISTINCT i.id_producto)::NUMERIC AS valor
        FROM Inventario i
        JOIN Proveedores pr ON i.id_proveedor = pr.id_proveedor
        WHERE i.fecha_ingreso BETWEEN fecha_inicio AND fecha_fin
        GROUP BY pr.id_proveedor, pr.nombre
        ORDER BY valor DESC
        LIMIT top_n;
        
    ELSE
        RAISE EXCEPTION 'Parámetro orden_por inválido: %, debe ser total_ingresado o cantidad_productos', orden_por;
    END IF;
END;
$$ LANGUAGE plpgsql;

-- Ordenados por cantidad total ingresada:
SELECT * FROM top_proveedores(
    '2025-01-01',
    '2025-12-31',
    'total_ingresado',
    5
);

-- Ordenados por cantidad de productos distintos:
SELECT * FROM top_proveedores(
    '2025-01-01',
    '2025-12-31',
    'cantidad_productos',
    5
);



--------------------------4. Listar el top compras por cliente--------------------------
CREATE OR REPLACE FUNCTION reporte_top_clientes(fecha_inicio DATE, fecha_fin DATE, cantidad_usuarios INTEGER, orden_usuarios TEXT)
RETURNS TABLE (nombre_usuario TEXT, total_comprado NUMERIC) AS
$$
BEGIN
	IF orden_usuarios ILIKE 'ASC' THEN 
		RETURN QUERY
		SELECT c.nombre::TEXT, SUM(dv.cantidad*dv.precio_unitario) as total_comprado
		FROM Clientes c
		JOIN Ventas v ON v.id_cliente = c.id_cliente
		JOIN DetalleVenta dv ON dv.id_venta = v.id_venta
		WHERE v.fecha_venta BETWEEN fecha_inicio AND fecha_fin
		GROUP BY c.nombre 
		ORDER BY SUM(dv.cantidad*dv.precio_unitario) ASC
		LIMIT cantidad_usuarios;
	ELSIF orden_usuarios ILIKE 'DESC' THEN 
		RETURN QUERY
		SELECT c.nombre::TEXT, SUM(dv.cantidad*dv.precio_unitario) as total_comprado
		FROM Clientes c
		JOIN Ventas v ON v.id_cliente = c.id_cliente
		JOIN DetalleVenta dv ON dv.id_venta = v.id_venta
		WHERE v.fecha_venta BETWEEN fecha_inicio AND fecha_fin
		GROUP BY c.nombre 
		ORDER BY SUM(dv.cantidad*dv.precio_unitario) DESC
		LIMIT cantidad_usuarios;
	ELSE
		RAISE EXCEPTION 'Valor inválido para orden_usuarios: debe ser ''ASC'' o ''DESC''';
	END IF;
END;
$$
LANGUAGE plpgsql;

SELECT * FROM reporte_top_clientes('2022-01-01', '2025-05-01', 15, 'ASC');


--------------------------5. Listar ventas generales en un rango de tiempo por emleado--------------------------
CREATE OR REPLACE FUNCTION reporte_ventas_empleado(fecha_inicio DATE, fecha_fin DATE, id_empleado_p INTEGER, moneda TEXT)
RETURNS TABLE (nombre_empleado TEXT, total_vendido NUMERIC, moneda_p TEXT) AS
$$
BEGIN
	RETURN QUERY
	SELECT e.nombre::TEXT, SUM(v.total) AS total_vendido, moneda
	FROM Empleados e
	JOIN Ventas v ON v.id_empleado = e.id_empleado
	WHERE v.fecha_venta BETWEEN fecha_inicio AND fecha_fin
		AND e.id_empleado = id_empleado_p
	GROUP BY e.nombre;
END;
$$
LANGUAGE plpgsql;

SELECT * FROM reporte_ventas_empleado('2022-01-01', '2026-05-01', 1, 'USD');

