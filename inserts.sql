
INSERT INTO TalentoHumano (CodigoT, Identificacion, Nombre, Experiencia, Licencia, thType)
VALUES
	('12345CAPE', 12345, 'Carlos Perez', 10, 'C1', 'Conductor'),
	('67890MAGO', 67890, 'Maria Gomez', 8, 'C2', 'Conductor'),
	('11223JUSA', 11223, 'Juan Sanchez', 5, 'C3', 'Conductor'),
	('44556ANMA', 44556, 'Ana Martinez', 12, NULL, 'Operario'),
	('77889LUTO', 77889, 'Luis Torres', 7, NULL, 'Operario'),
	('99000DIRU', 99000, 'Diana Ruiz', 9, NULL, 'Operario');

INSERT INTO Vehiculo (vID, Modelo, Tipo, Capacidad, Estado, fechaCompra)
VALUES
	(101, 'Volvo 7700', 'Bus', 80, 'Activo', '2021-01-15'),
	(102, 'Mercedes-Benz Sprinter', 'Camioneta', 32, 'Activo', '2020-07-10'),
	(103, 'Toyota Coaster', 'Bus', 80, 'Activo', '2019-03-20'),
	(104, 'Hyundai Universe', 'Bus', 80, 'Activo', '2022-05-05'),
	(105, 'Ford Transit', 'Camioneta', 20, 'Desactivado', '2018-11-30');

INSERT INTO Estacion (eID, Ubicacion, Nombre, Capacidad)
VALUES
	(201, '3.4534274330663384, -76.53160874096878', 'La Ermita', 200),
	(202, '3.478837405048709, -76.5170220633401', 'Vipasa', 250),
	(203, '3.3712297318014417, -76.53664349032336', 'Univalle', 180),
	(204, '3.4186236672547663, -76.48688854531368', 'Nuevo Latir', 200),
	(205, '3.43982874301907, -76.53701080336938', 'Santa Librada', 250);

INSERT INTO VisitaVehiculo (CodigoT, vID, Fecha, Descripcion)
VALUES
	('44556ANMA', 101, '2023-11-20', 'Cambio de aceite'),
	('77889LUTO', 102, '2023-11-22', 'Revisión de frenos'),
	('99000DIRU', 103, '2023-11-25', 'Mantenimiento general');

INSERT INTO VisitaEstacion (CodigoT, eID, Fecha, Descripcion)
VALUES
	('44556ANMA', 201, '2023-11-15', 'Reparación de puertas'),
	('77889LUTO', 202, '2023-11-18', 'Revisión de iluminación'),
	('99000DIRU', 203, '2023-11-23', 'Limpieza y pintura');

INSERT INTO Ruta (rID, Nombre, tiempoPromedio)
VALUES
	(301, 'A61', '30 minutos'),
	(302, 'P54C', '60 minutos'),
	(303, 'T90', '75 minutos');