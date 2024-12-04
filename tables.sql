CREATE TABLE TalentoHumano (
	CodigoT VARCHAR(100) PRIMARY KEY,
	Identificacion INTEGER NOT NULL,
	Nombre VARCHAR(100) NOT NULL,
	Experiencia INTEGER NOT NULL,
	Licencia VARCHAR(20),
	thType VARCHAR(20) CHECK (thType IN ('Conductor', 'Operario'))
);

CREATE TABLE Vehiculo (
	vID INTEGER PRIMARY KEY,
	Modelo VARCHAR(50) NOT NULL,
	Tipo VARCHAR(20) CHECK (Tipo IN ('Bus', 'Camioneta', 'Automóvil')),
	Capacidad INTEGER NOT NULL,
	Estado VARCHAR(20) CHECK (Estado IN ('Activo', 'Desactivado')),
	fechaCompra VARCHAR(20) NOT NULL
);

CREATE TABLE Estacion (
	eID INTEGER PRIMARY KEY,
	Ubicacion VARCHAR(100) NOT NULL,
	Nombre VARCHAR(50) NOT NULL,
	Capacidad INTEGER NOT NULL
);

CREATE TABLE Ruta (
	rID INTEGER PRIMARY KEY,
	Nombre VARCHAR(50) NOT NULL,
	tiempoPromedio VARCHAR(50) NOT NULL
);

CREATE TABLE VisitaVehiculo (
	CodigoT VARCHAR(50) REFERENCES TalentoHumano(CodigoT),
	vID INTEGER REFERENCES Vehiculo(vID),
	Fecha VARCHAR(20) NOT NULL,
	Descripcion TEXT,
	PRIMARY KEY (CodigoT, vID, Fecha)
);

CREATE TABLE VisitaEstacion (
	CodigoT VARCHAR(50) REFERENCES TalentoHumano(CodigoT),
	eID INTEGER REFERENCES Estacion(eID),
	Fecha VARCHAR(20) NOT NULL,
	Descripcion TEXT,
	PRIMARY KEY (CodigoT, eID, Fecha)
);