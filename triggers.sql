--------------------------------------------TRIGGERS--------------------------------------------
-- TRIGGER Disminuir stock
CREATE OR REPLACE FUNCTION 	disminuir_stock()
RETURNS TRIGGER AS $$
BEGIN
 UPDATE Productos
 SET stock = stock - NEW.stock 
 WHERE id_producto = NEW.id_producto;
 
 RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_disminuir_stock
AFTER INSERT On DetalleVenta
FOR EACH ROW
EXECUTE FUNCTION disminuir_stock();

-- TRIGGER Aumento de stock
CREATE OR REPLACE FUNCTION aumentar_stock()
RETURNS TRIGGER AS $$
BEGIN
	UPDATE Productos
	SET stock = stock + NEW.cantidad
	WHERE id_producto = id_producto;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_aumentar_stock
AFTER INSERT ON Inventario
FOR EACH ROW
EXECUTE FUNCTION aumentar_stock();

-- TRIGGER update total ventas
CREATE OR REPLACE FUNCTION actualizar_total()
RETURNS TRIGGER AS $$
BEGIN
	UPDATE Ventas
	SET total = total + NEW.subtotal
	WHERE id_venta = NEW.id_venta;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_insertar_venta
AFTER INSERT ON DetalleVenta
FOR EACH ROW
EXECUTE FUNCTION actualizar_total();

