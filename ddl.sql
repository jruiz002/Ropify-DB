DROP TABLE IF EXISTS DetalleVenta CASCADE;
DROP TABLE IF EXISTS Ventas CASCADE;
DROP TABLE IF EXISTS EmpleadoRol CASCADE;
DROP TABLE IF EXISTS Roles CASCADE;
DROP TABLE IF EXISTS Empleados CASCADE;
DROP TABLE IF EXISTS Clientes CASCADE;
DROP TABLE IF EXISTS Inventario CASCADE;
DROP TABLE IF EXISTS Proveedores CASCADE;
DROP TABLE IF EXISTS Productos CASCADE;
DROP TABLE IF EXISTS Categorias CASCADE;

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
    fecha_venta DATE,
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