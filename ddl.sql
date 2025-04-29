-- Tabla: Categorías
CREATE TABLE Categorias (
    id_categoria SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE
);

-- Tabla: Productos
CREATE TABLE Productos (
    id_producto SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio NUMERIC(10,2) NOT NULL CHECK (precio >= 0),
    stock INT DEFAULT 0 CHECK (stock >= 0),
    id_categoria INT NOT NULL REFERENCES Categorias(id_categoria),
    UNIQUE(nombre, id_categoria)
);

-- Tabla: Proveedores
CREATE TABLE Proveedores (
    id_proveedor SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(15),
    email VARCHAR(100) UNIQUE,
    direccion TEXT NOT NULL
);

-- Tabla: Inventario (asociación Producto-Proveedor)
CREATE TABLE Inventario (
    id_inventario SERIAL PRIMARY KEY,
    id_producto INT NOT NULL REFERENCES Productos(id_producto),
    id_proveedor INT NOT NULL REFERENCES Proveedores(id_proveedor),
    cantidad INT NOT NULL CHECK (cantidad >= 0),
    fecha_ingreso DATE DEFAULT CURRENT_DATE,
    UNIQUE(id_producto, id_proveedor)
);

-- Tabla: Clientes
CREATE TABLE Clientes (
    id_cliente SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(15),
    email VARCHAR(100) UNIQUE,
    direccion TEXT,
    fecha_registro DATE DEFAULT CURRENT_DATE
);

-- Tabla: Empleados
CREATE TABLE Empleados (
    id_empleado SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fecha_contratacion DATE NOT NULL,
    salario NUMERIC(10,2) CHECK (salario >= 0),
    email VARCHAR(100) UNIQUE
);

-- Tabla: Roles
CREATE TABLE Roles (
    id_rol SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    descripcion TEXT
);

-- Tabla: EmpleadoRol (relación N:M entre Empleados y Roles)
CREATE TABLE EmpleadoRol (
    id_empleado INT REFERENCES Empleados(id_empleado),
    id_rol INT REFERENCES Roles(id_rol),
    PRIMARY KEY (id_empleado, id_rol)
);

-- Tabla: Ventas
CREATE TABLE Ventas (
    id_venta SERIAL PRIMARY KEY,
    id_cliente INT REFERENCES Clientes(id_cliente),
    id_empleado INT REFERENCES Empleados(id_empleado),
    fecha_venta TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total NUMERIC(10,2) DEFAULT 0 CHECK (total >= 0)
);

-- Tabla: DetalleVenta (cruce N:M entre Ventas y Productos)
CREATE TABLE DetalleVenta (
    id_detalle SERIAL PRIMARY KEY,
    id_venta INT REFERENCES Ventas(id_venta),
    id_producto INT REFERENCES Productos(id_producto),
    cantidad INT NOT NULL CHECK (cantidad > 0),
    precio_unitario NUMERIC(10,2) NOT NULL CHECK (precio_unitario >= 0),
    subtotal NUMERIC(10,2) GENERATED ALWAYS AS (cantidad * precio_unitario) STORED
);

--------------------------------------------TRIGGERS--------------------------------------------
-- TRIGGER Disminuir stock
CREATE OR REPLACE FUNCTION 	disminuir_stock()
RETURNS TRIGGER AS $$
BEGIN
 UPDATE Productos
 SET stock = stock - NEW.stock 
 WHERE id_producto = NEW.id_producto;
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


--------------------------------------------REPORTES--------------------------------------------
