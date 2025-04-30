-- Insertar Categorías

INSERT INTO Categorias (nombre) VALUES
('Pantalones'),
('Camisas'),
('Zapatos'),
('Vestidos'),
('Chaquetas'),
('Faldas'),
('Accesorios'),
('Sudaderas'),
('Trajes'),
('Ropa deportiva');

-- Insertar Proveedores

INSERT INTO Proveedores (nombre, telefono, email, direccion) VALUES
('Cifuentes PLC', '6171-6928', 'ameliallano@hotmail.com', 'Cuba'),
('Oliver PLC', '7724-2081', 'constanzaburgos@yahoo.com', 'Paraguay'),
('Leal, Torre and Morell', '6958-4271', 'maximianomatas@canas.net', 'Honduras'),
('Puga PLC', '4354-8609', 'pedrazaeloy@yahoo.com', 'Nicaragua'),
('Palmer, Sanchez and Oliva', '2656-6678', 'oalamo@gmail.com', 'República Dominicana'),
('Roda LLC', '4248-4852', 'pagesmaximiliano@gmail.com', 'Paraguay'),
('Zapata, Dávila and Suárez', '4381-9214', 'chitaalmazan@yahoo.com', 'Bolivia'),
('Ureña Group', '3521-2556', 'veronica91@yahoo.com', 'Bolivia'),
('Doménech-Martí', '4725-8182', 'nferrando@gmail.com', 'México'),
('Escalona PLC', '2632-8791', 'benjamin92@hotmail.com', 'Chile'),
('Morán-Jordá', '4577-1108', 'sol49@gmail.com', 'Panamá'),
('Álvaro-Larrea', '5145-7676', 'febe80@hotmail.com', 'Ecuador'),
('Osuna Ltd', '2886-1839', 'rivasguadalupe@hotmail.com', 'Costa Rica'),
('Donoso and Sons', '4551-2757', 'oginer@hotmail.com', 'Uruguay'),
('Galvez, Boix and Moles', '4635-3137', 'herasalmudena@gmail.com', 'México'),
('Ferrando-Marcos', '8604-4013', 'marcelino35@ripoll.org', 'Perú'),
('Uría, Sanjuan and Viana', '8524-9193', 'teodoratorrijos@gmail.com', 'Puerto Rico'),
('Viña, Guzmán and Barco', '3191-8320', 'manuelalberto@gmail.com', 'Venezuela'),
('Marqués-Lago', '9474-5661', 'mramirez@yahoo.com', 'Chile'),
('Ferrera-Valbuena', '7220-9232', 'noemiquintanilla@gmail.com', 'Venezuela');

-- Insertar Clientes

INSERT INTO Clientes (nombre, telefono, email, direccion) VALUES
('Juan Pablo Lastra-Reig', '7274-6737', 'joseanaya@canals.org', 'Bolivia'),
('Martin Ponce Manzano', '5404-6727', 'agustisebastian@hotmail.com', 'Paraguay'),
('Marco Vizcaíno-Chaves', '5584-8604', 'natalioolmedo@yahoo.com', 'Honduras'),
('Gertrudis Valero', '6212-6295', 'rsales@gmail.com', 'Costa Rica'),
('Cornelio Sabater Vera', '9792-3071', 'martinjuana@hotmail.com', 'Honduras'),
('Asunción Armas', '6470-9297', 'ponciogaliano@gmail.com', 'Venezuela'),
('Manuelita Sanmiguel Benitez', '7839-7361', 'isaura@yahoo.com', 'Nicaragua'),
('Maxi Lidia Perea Ojeda', '2805-4092', 'maura87@andres-rocha.es', 'Paraguay'),
('Carolina Ferrero Guijarro', '2724-4165', 'hugo67@canton.es', 'El Salvador'),
('Nicodemo Guillen-Aguilera', '8093-5375', 'catalina27@diego-bas.es', 'Puerto Rico'),
('Vasco de Blazquez', '7338-2812', 'villalbaramona@yahoo.com', 'Bolivia'),
('Marcelino Ruano', '9177-3890', 'angelescornejo@yahoo.com', 'Perú'),
('Aureliano Nuñez', '5544-7934', 'hperera@sebastian.es', 'Honduras'),
('Mirta Téllez Meléndez', '3466-4422', 'eladio21@elorza.com', 'Guatemala'),
('Aureliano José Mari Alcolea Cuervo', '9434-4652', 'barberojafet@gmail.com', 'Panamá'),
('Víctor Jaume Mosquera', '4057-1683', 'palomajulia@hotmail.com', 'Colombia'),
('Omar Blanco Dávila', '6578-3050', 'jenny34@gmail.com', 'Puerto Rico'),
('Ruperta Dávila Elías', '5133-3731', 'fabraalejo@donaire.com', 'Costa Rica'),
('Margarita del Baró', '8373-3676', 'calisto27@yahoo.com', 'Uruguay'),
('Sarita Luz-Vicente', '2459-9996', 'hbenito@yahoo.com', 'República Dominicana'),
('Plinio Yuste Múgica', '7765-4241', 'concepcionluna@arranz-rivas.org', 'España'),
('Violeta Tomé', '2097-9269', 'darioblasco@grande.com', 'Uruguay'),
('Amalia del Hervia', '9207-3671', 'eprada@garcia.com', 'Ecuador'),
('Nazario Hoyos Peñas', '4878-3113', 'odalysnovoa@hotmail.com', 'Costa Rica'),
('Óscar Boada Barragán', '6330-2324', 'atilioayala@villalba.com', 'Cuba'),
('Dorita del Benavent', '9253-3154', 'valero13@hotmail.com', 'República Dominicana'),
('Benigna Tejera Torrens', '9555-4025', 'maitesalinas@arregui.com', 'Ecuador'),
('Ignacio Abascal Conesa', '6492-7115', 'pbelda@yahoo.com', 'México'),
('Candelas Carreño Sandoval', '3025-4241', 'casadocipriano@hotmail.com', 'Cuba'),
('Ricardo Ocaña Lago', '2854-1490', 'agapitorios@barbera-briones.com', 'Paraguay');

-- Insertar Empleados

INSERT INTO Empleados (nombre, fecha_contratacion, salario, email) VALUES
('Aristides del Domínguez', '2020-09-20', 8844.58, 'colladoangelino@gmail.com'),
('Esther Purificación Osuna Padilla', '2023-06-14', 9221.87, 'bnarvaez@nogueira-lamas.com'),
('María Benavent Carbonell', '2024-02-01', 7054.48, 'angel01@yahoo.com'),
('Ibán Cózar Cadenas', '2020-08-02', 4677.39, 'porfirioalsina@nieto-chico.org'),
('Jordán Suárez', '2021-07-08', 5283.68, 'teofilagomez@hotmail.com'),
('Lidia Luís Dominguez', '2021-10-23', 3782.96, 'sorayaguzman@puga.es'),
('Luis Roma Hierro', '2024-08-31', 6086.22, 'mbernal@gmail.com'),
('Flavia Pascual Salgado', '2022-10-10', 6224.57, 'berrocalmaria-manuela@vilalta.net'),
('Perlita de Llopis', '2020-10-20', 4102.6, 'almudena93@barros-priego.org'),
('Aitor del Cáceres', '2024-08-02', 7958.61, 'rmanuel@hotmail.com'),
('Pascual Elías Cardona', '2025-01-15', 9838.61, 'uvega@yahoo.com'),
('Timoteo Sebastián Palomo', '2021-04-29', 4948.24, 'dtorres@bernal.com'),
('Fidel del Gonzalo', '2020-09-04', 4204.37, 'osoriodanilo@gmail.com'),
('Edgardo Duque Baquero', '2022-11-28', 3386.31, 'gerardo99@rios.org'),
('Ale Ávila Espejo', '2022-03-04', 6685.51, 'agudoaurea@barbero-muniz.com'),
('Ani de Cortés', '2021-11-22', 4895.88, 'varelacalista@gmail.com'),
('Raúl Puente Arranz', '2021-07-05', 9593.56, 'ruben47@yahoo.com'),
('Baltasar Ugarte Barco', '2023-02-08', 3492.6, 'rivasainara@barral.net'),
('Perla Oller Arco', '2025-04-05', 9890.79, 'maximilianocantero@hotmail.com'),
('Juan Bautista Tenorio Palacios', '2025-03-30', 8446.22, 'uroig@marmol.org'),
('Estefanía Emma Bas Campoy', '2023-01-22', 3903.88, 'nicolaudolores@montero.es'),
('Clara Castellanos Buendía', '2020-09-30', 9323.86, 'lolaarranz@alfaro.es'),
('Esperanza Moraleda-Alberdi', '2020-12-24', 7992.41, 'dalila43@fonseca-rios.es'),
('Graciela Diego-Ayala', '2021-10-19', 7370.19, 'ximena93@penalver.es'),
('Primitiva Soraya Casanovas Vaquero', '2020-12-19', 6154.88, 'fmanuel@gmail.com');

-- Insertar Roles


INSERT INTO Roles (nombre, descripcion) VALUES
('Gerente', 'Otros asuntos relacionados con la gestión humana y académica.'),
('Vendedor', 'Atiende a los clientes y se encarga de las ventas en tienda.'),
('Supervisor', 'Supervisa el desempeño del equipo de ventas y operaciones.');


-- Insertar Productos

INSERT INTO Productos (nombre, descripcion, precio, stock, id_categoria) VALUES
('Pantalón cargo', 'Pantalón resistente con múltiples bolsillos, ideal para aventuras.', 120.50, 35, 1),
('Camisa de lino', 'Camisa fresca de lino natural para clima cálido.', 85.00, 40, 2),
('Zapato Oxford', 'Zapato elegante de cuero para ocasiones formales.', 150.00, 25, 3),
('Vestido de gala', 'Vestido largo y sofisticado para eventos de noche.', 300.00, 10, 4),
('Chaqueta biker', 'Chaqueta de cuero estilo motociclista.', 220.00, 15, 5),
('Falda midi', 'Falda a media pierna con estampado floral.', 95.00, 20, 6),
('Reloj de pulsera', 'Reloj elegante de acero inoxidable.', 250.00, 18, 7),
('Sudadera oversize', 'Sudadera amplia y cómoda para uso diario.', 90.00, 50, 8),
('Traje slim fit', 'Traje moderno de corte ajustado.', 450.00, 12, 9),
('Conjunto deportivo', 'Conjunto de camiseta y pants para entrenamiento.', 130.00, 30, 10),
('Pantalón de lino', 'Jeans clásicos de mezclilla azul.', 100.00, 45, 1),
('Camisa de cuadros', 'Camisa casual de algodón con patrón a cuadros.', 75.00, 40, 2),
('Zapato casual', 'Zapato cómodo para uso diario.', 120.00, 28, 3),
('Vestido corto', 'Vestido juvenil ideal para primavera.', 160.00, 15, 4),
('Chaqueta impermeable', 'Chaqueta ligera resistente al agua.', 140.00, 20, 5),
('Falda paletones', 'Falda ajustada de estilo profesional.', 110.00, 25, 6),
('Gafas de sol', 'Accesorio moderno con protección UV.', 60.00, 50, 7),
('Sudadera con cremallera', 'Sudadera deportiva con cierre completo.', 95.00, 40, 8),
('Traje clásico', 'Traje tradicional para eventos formales.', 420.00, 10, 9),
('Ropa deportiva de running', 'Conjunto técnico para correr.', 145.00, 30, 10),
('Pantalón chino', 'Pantalón de algodón con corte moderno y elegante.', 110.00, 30, 1),
('Camisa manga corta', 'Camisa ligera ideal para días calurosos.', 70.00, 35, 2),
('Zapato deportivo', 'Calzado deportivo diseñado para alto rendimiento.', 130.00, 40, 3),
('Vestido casual', 'Vestido cómodo para uso diario.', 140.00, 20, 4),
('Chaqueta de mezclilla', 'Clásica chaqueta de denim azul.', 160.00, 18, 5),
('Falda pantalon', 'Falda con pliegues elegantes para ocasiones casuales.', 90.00, 25, 6),
('Bolso de cuero', 'Bolso elegante hecho 100% en cuero.', 220.00, 15, 7),
('Sudadera estampada', 'Sudadera moderna con estampado gráfico.', 85.00, 40, 8),
('Traje de lino', 'Traje ligero ideal para clima cálido.', 470.00, 8, 9),
('Set de yoga', 'Conjunto deportivo flexible para yoga y pilates.', 125.00, 30, 10),
('Pantalón militar', 'Pantalón deportivo cómodo para uso diario.', 95.00, 50, 1),
('Camisa formal blanca', 'Camisa básica para eventos profesionales.', 80.00, 45, 2),
('Zapato mocasín', 'Zapato cómodo de diseño casual.', 140.00, 20, 3),
('Vestido corrugado', 'Vestido ligero con estilo bohemio.', 180.00, 12, 4),
('Chaqueta gastada', 'Chaqueta ligera y abrigadora para invierno.', 190.00, 20, 5),
('Falda flamenco', 'Falda moderna con corte desigual.', 105.00, 18, 6),
('Collar minimalista', 'Accesorio sencillo para complementar tu outfit.', 45.00, 50, 7),
('Sudadera deportiva', 'Sudadera técnica para entrenamiento.', 100.00, 35, 8),
('Traje de tres piezas', 'Traje elegante con chaleco incluido.', 520.00, 7, 9),
('Leggings deportivos', 'Mallas elásticas para entrenamiento.', 115.00, 40, 10),
('Pantalón Roto', 'Pantalón resistente con múltiples bolsillos.', 120.00, 28, 1),
('Camisa de seda', 'Camisa fresca y transpirable para climas cálidos.', 90.00, 32, 2),
('Zapato gama', 'Calzado clásico de cuero para eventos formales.', 200.00, 15, 3),
('Vestido de encaje', 'Vestido elegante con detalles de encaje.', 250.00, 10, 4),
('Chaqueta de cuero', 'Chaqueta robusta de cuero genuino.', 350.00, 12, 5),
('Falda de mezclilla', 'Falda casual de mezclilla azul.', 95.00, 20, 6),
('Pulsera de plata', 'Accesorio de plata esterlina.', 85.00, 25, 7),
('Sudadera con capucha', 'Sudadera cómoda con bolsillo frontal.', 105.00, 40, 8),
('Traje oxford', 'Traje ajustado para un look moderno.', 490.00, 9, 9),
('Conjunto deportivo oversized', 'Conjunto completo para actividades físicas.', 135.00, 30, 10),
('Pantalón de vestir', 'Pantalón elegante para oficina o eventos.', 140.00, 25, 1),
('Camisa a cuadros', 'Camisa casual de algodón a cuadros.', 75.00, 35, 2),
('Zapato de charol', 'Zapato versátil para uso diario.', 120.00, 22, 3),
('Vestido largo', 'Vestido de gala largo y elegante.', 300.00, 8, 4),
('Chaqueta ovejera', 'Chaqueta resistente al agua para lluvia.', 210.00, 18, 5),
('Falda tobillera', 'Falda ceñida ideal para ambientes formales.', 110.00, 17, 6),
('Anillo de acero', 'Anillo elegante de acero inoxidable.', 60.00, 40, 7),
('Sudadera oversized', 'Sudadera de gran tamaño para un look relajado.', 95.00, 38, 8),
('Traje clásico negro', 'Traje tradicional en color negro.', 510.00, 6, 9),
('Pantalón deportivo', 'Pantalón flexible para entrenamientos intensos.', 100.00, 45, 10),
('Pantalón de mezclilla', 'Pantalón de denim clásico y resistente.', 130.00, 30, 1),
('Camisa de manga larga', 'Camisa formal de manga larga.', 85.00, 40, 2),
('Zapato de gamuza', 'Zapato elegante de gamuza para ocasiones especiales.', 180.00, 18, 3),
('Vestido de verano', 'Vestido ligero ideal para días soleados.', 140.00, 20, 4),
('Chaqueta acolchada', 'Chaqueta cálida para climas fríos.', 250.00, 15, 5),
('Falda plisada', 'Falda con pliegues para un estilo clásico.', 120.00, 22, 6),
('Collar dorado', 'Collar elegante bañado en oro.', 150.00, 19, 7),
('Sudadera básica', 'Sudadera cómoda para uso diario.', 80.00, 35, 8),
('Traje de seda', 'Traje ligero y fresco de lino.', 460.00, 7, 9),
('Ropa deportiva térmica', 'Prenda deportiva para bajas temperaturas.', 140.00, 25, 10),
('Pantalón jogger', 'Pantalón cómodo tipo jogger para descanso.', 95.00, 33, 1),
('Camisa formal hueso', 'Camisa blanca para eventos de etiqueta.', 100.00, 28, 2),
('Zapato running', 'Zapato diseñado para alto rendimiento deportivo.', 160.00, 24, 3),
('Vestido de coctel', 'Vestido corto ideal para fiestas.', 220.00, 14, 4),
('Chaqueta vaquera', 'Chaqueta clásica de mezclilla.', 170.00, 20, 5),
('Falda seda', 'Falda de largo medio elegante.', 110.00, 26, 6),
('Pulsera de cuero', 'Pulsera casual de cuero genuino.', 70.00, 30, 7),
('Sudadera de entrenamiento', 'Sudadera ligera ideal para ejercicios.', 90.00, 29, 8),
('Traje azul marino', 'Traje de corte clásico en azul marino.', 520.00, 5, 9),
('Short deportivo', 'Short cómodo para actividades físicas.', 75.00, 40, 10),
('Pantalón Destilado', 'Pantalón casual con múltiples bolsillos.', 140.00, 25, 1),
('Camisa hawaiana', 'Camisa colorida ideal para verano.', 95.00, 30, 2),
('Zapato neofusion', 'Zapato formal de piel.', 210.00, 12, 3),
('Vestido bohemio', 'Vestido suelto con estilo boho.', 180.00, 18, 4),
('Chaqueta bomber', 'Chaqueta ligera estilo urbano.', 190.00, 16, 5),
('Falda lápiz', 'Falda ajustada para oficina.', 130.00, 20, 6),
('Anillo plateado', 'Anillo sencillo de plata.', 85.00, 28, 7),
('Sudadera ', 'Sudadera holgada para un look relajado.', 100.00, 32, 8),
('Traje gris claro', 'Traje de dos piezas gris claro.', 500.00, 6, 9),
('Leggings ajustados', 'Leggings elásticos de alta resistencia.', 110.00, 35, 10),
('Pantalón slim fit', 'Pantalón ajustado al cuerpo.', 125.00, 27, 1),
('Camisa de leñador', 'Camisa casual de cuadros.', 90.00, 25, 2),
('Zapato casual de lona', 'Zapato ligero de lona.', 100.00, 30, 3),
('Vestido formal largo', 'Vestido elegante para eventos.', 300.00, 10, 4),
('Chaqueta rasta', 'Chaqueta resistente al agua.', 220.00, 14, 5),
('Falda asimétrica', 'Falda de diseño moderno.', 115.00, 18, 6),
('Reloj mecanico', 'Accesorio de muñeca elegante.', 250.00, 10, 7),
('Sudadera sin mangas', 'Sudadera clásica con gorro.', 85.00, 40, 8),
('Traje de gala', 'Traje de alta costura para eventos especiales.', 700.00, 4, 9),
('Top deportivo', 'Top ajustado para entrenamientos.', 95.00, 36, 10);

-- Insertar Inventario

INSERT INTO Inventario (id_producto, id_proveedor, cantidad) VALUES
(1, 2, 78),
(2, 16, 30),
(3, 4, 156),
(4, 10, 185),
(5, 9, 141),
(6, 10, 87),
(7, 16, 110),
(8, 3, 19),
(9, 12, 171),
(10, 14, 187),
(11, 12, 41),
(12, 1, 156),
(13, 17, 85),
(14, 11, 169),
(15, 5, 192),
(16, 8, 118),
(17, 13, 114),
(18, 4, 130),
(19, 14, 135),
(20, 2, 141),
(21, 1, 66),
(22, 14, 87),
(23, 3, 103),
(24, 1, 87),
(25, 16, 142),
(26, 11, 108),
(27, 14, 178),
(28, 10, 47),
(29, 20, 61),
(30, 5, 25),
(31, 15, 78),
(32, 14, 129),
(33, 15, 44),
(34, 12, 40),
(35, 13, 196),
(36, 4, 73),
(37, 8, 124),
(38, 8, 166),
(39, 10, 195),
(40, 13, 120),
(41, 12, 45),
(42, 14, 11),
(43, 5, 92),
(44, 9, 191),
(45, 10, 181),
(46, 1, 88),
(47, 13, 153),
(48, 10, 160),
(49, 20, 127),
(50, 4, 70),
(51, 7, 96),
(52, 19, 139),
(53, 8, 132),
(54, 4, 90),
(55, 15, 200),
(56, 1, 95),
(57, 10, 183),
(58, 20, 104),
(59, 3, 106),
(60, 16, 36),
(61, 9, 86),
(62, 5, 140),
(63, 7, 120),
(64, 20, 165),
(65, 18, 184),
(66, 9, 199),
(67, 14, 196),
(68, 6, 98),
(69, 19, 29),
(70, 12, 38),
(71, 14, 193),
(72, 8, 175),
(73, 4, 166),
(74, 6, 134),
(75, 1, 165),
(76, 3, 152),
(77, 16, 105),
(78, 3, 176),
(79, 13, 72),
(80, 20, 98),
(81, 2, 131),
(82, 13, 14),
(83, 6, 74),
(84, 14, 98),
(85, 18, 157),
(86, 11, 109),
(87, 7, 133),
(88, 12, 171),
(89, 2, 153),
(90, 3, 171),
(91, 9, 79),
(92, 4, 154),
(93, 20, 62),
(94, 7, 143),
(95, 16, 60),
(96, 18, 141),
(97, 14, 19),
(98, 12, 150),
(99, 13, 136),
(100, 11, 189);

-- Insertar Ventas


DO $$
DECLARE
    i INT;
BEGIN
    FOR i IN 1..100 LOOP
        INSERT INTO Ventas (id_cliente, id_empleado, fecha_venta) VALUES (
            FLOOR(RANDOM() * 30 + 1),
            FLOOR(RANDOM() * 25 + 1),
            CURRENT_DATE - (TRUNC(RANDOM() * 730))::INT
        );
    END LOOP;
END$$;



-- Insertar DetalleVenta

DO $$
DECLARE
    i INT;
    prod_id INT;
    cantidad INT;
    precio NUMERIC(10,2);
BEGIN
    FOR i IN 1..100 LOOP
        prod_id := FLOOR(RANDOM() * 100 + 1);
        cantidad := FLOOR(RANDOM() * 5 + 1);
        precio := ROUND((RANDOM() * (200 - 10) + 10)::NUMERIC, 2); -- Aquí el fix
        INSERT INTO DetalleVenta (id_venta, id_producto, cantidad, precio_unitario)
        VALUES (i, prod_id, cantidad, precio);
    END LOOP;
END$$;

-- Insertar EmpleadoRol


DO $$
DECLARE
    i INT;
    rol1 INT;
    rol2 INT;
BEGIN
    FOR i IN 1..25 LOOP
        rol1 := FLOOR(RANDOM() * 3 + 1);
        INSERT INTO EmpleadoRol (id_empleado, id_rol) VALUES (i, rol1);
        
        IF RANDOM() < 0.5 THEN
            rol2 := FLOOR(RANDOM() * 3 + 1);
            IF rol2 <> rol1 THEN
                INSERT INTO EmpleadoRol (id_empleado, id_rol) VALUES (i, rol2);
            END IF;
        END IF;
    END LOOP;
END$$;

/*
-- Ver Categorías
SELECT * FROM Categorias;

-- Ver Productos
SELECT * FROM Productos;

-- Ver Proveedores
SELECT * FROM Proveedores;

-- Ver Inventario
SELECT * FROM Inventario;

-- Ver Clientes
SELECT * FROM Clientes;

-- Ver Empleados
SELECT * FROM Empleados;

-- Ver Roles
SELECT * FROM Roles;

-- Ver EmpleadoRol
SELECT * FROM EmpleadoRol;

-- Ver Ventas
SELECT * FROM Ventas;

-- Ver DetalleVenta
SELECT * FROM DetalleVenta;
*/

