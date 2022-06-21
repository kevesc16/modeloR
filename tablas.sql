CREATE TABLE Afiliados( 
    Rut_afiliado            NUMERIC(11)NOT NULL, 
    Dv                      CHAR(1)NOT NULL, 
    Primer_nombre           VARCHAR2(38)NOT NULL, 
    Segundo_nombre          VARCHAR2(38), 
    Apelido_paterno         VARCHAR2(38)NOT NULL, 
    Apellido_materno        VARCHAR2(38), 
    Fecha_de_nacimiento     DATE NOT NULL, 
    Direccion               VARCHAR2(38) NOT NULL, 
    Genero                  VARCHAR2(38), 
    Discapacidad            CHAR(1)NOT NULL, 
    Tipo_discapacidad       VARCHAR2(38), 
    Correo_electronico      VARCHAR2(38)NOT NULL, 
    Telefono                NUMERIC(38)NOT NULL, 
    Curriculum_vitae        VARCHAR2(38)NOT NULL, 
    Numero_carnet_socio     NUMERIC(38)NOT NULL 
);
ALTER TABLE Afiliados ADD CONSTRAINT afiliados_PK PRIMARY KEY(RUT_AFILIADO);

CREATE TABLE Comunas(  
    id_comuna       NUMERIC(11) NOT NULL,  
    nombre          VARCHAR2(25) NOT NULL  
);
ALTER TABLE Comunas ADD CONSTRAINT comuna_PK PRIMARY KEY(ID_COMUNA);

CREATE TABLE Formularios_ingresos( 
    Id_formulario               NUMERIC(11)NOT NULL, 
    Fecha_creacion_solicitud    DATE NOT NULL, 
    Hora_creacion               DATE NOT NULL 
);
ALTER TABLE Formularios_ingresos ADD CONSTRAINT formulario_de_ingreso_PK PRIMARY KEY(ID_FORMULARIO);

CREATE TABLE Vehiculos ( 
    Patente         VARCHAR2(6)NOT NULL, 
    Marca           VARCHAR2(25)NOT NULL, 
    Modelo          VARCHAR2(25)NOT NULL, 
    Color_vehiculo  VARCHAR2(25)NOT NULL, 
    Tipo_vehiculo   VARCHAR2(20)NOT NULL, 
    Numero_chasis   VARCHAR2(20)NOT NULL, 
    Numero_motor    VARCHAR2(20)NOT NULL 
);
ALTER TABLE Vehiculos ADD CONSTRAINTS vehiculos_PK  PRIMARY KEY (PATENTE);

CREATE TABLE Cargas_afiliados ( 
    Rut                 NUMERIC(50)NOT NULL,
    Dv                  CHAR(1)NOT NULL,
    Primer_nombre       VARCHAR2(25)NOT NULL,
    Segundo_nombre      VARCHAR2(25),
    Apelido_paterno     VARCHAR2(25)NOT NULL,
    Apellido_materno    VARCHAR2(25),
    Fecha_nacimiento    DATE NOT NULL 
);
ALTER TABLE Cargas_afiliados  ADD CONSTRAINT carga_afiliados_PK  PRIMARY KEY (RUT);

CREATE TABLE Tipos_numeros (
    Id_tipo_telefono    NUMERIC(11)NOT NULL,
    Casa                CHAR(1),
    Oficina             CHAR(1),
    Celular             CHAR(1)
);
ALTER TABLE Tipos_numeros ADD CONSTRAINT numeros_PK  PRIMARY KEY (Id_tipo_telefono);

CREATE TABLE Beneficios (
    Id_beneficio            NUMERIC(11)NOT NULL,
    Cantidad_uso            NUMERIC NOT NULL,
    Cantidad_maxima_uso     NUMERIC NOT NULL
);
ALTER TABLE Beneficios  ADD CONSTRAINT beneficios_PK  PRIMARY KEY (Id_beneficio);

CREATE TABLE Tipos_beneficios (
    Id_tipo_beneficio NUMERIC(11)NOT NULL,
    Salud               CHAR(1),
    Educacion           CHAR(1),
    Deportes            CHAR(1) 
);
ALTER TABLE Tipos_beneficios ADD CONSTRAINT tipo_beneficio_PK PRIMARY KEY (Id_tipo_beneficio);

CREATE TABLE Telefonos  (
    Id_telefono         NUMERIC NOT NULL,
    Numero_telefono     NUMERIC NOT NULL 
 
);
ALTER TABLE Telefonos ADD CONSTRAINT telefonos_PK  PRIMARY KEY (Id_telefono);

CREATE TABLE Provincias  (
    Id_provincia        NUMERIC(11)NOT NULL,
    Nombre_provincia    VARCHAR2(25)NOT NULL 
);
ALTER TABLE Provincias ADD CONSTRAINT provincia_PK PRIMARY KEY (Id_provincia);

CREATE TABLE Regiones (
    Id_region       NUMERIC(11)NOT NULL,
    Nombre_region   VARCHAR2(25)NOT NULL
);
ALTER TABLE Regiones ADD CONSTRAINT region_PK PRIMARY KEY (Id_region);

CREATE TABLE Chilenos (
    Rut         NUMERIC(11)NOT NULL,
    Dv          CHAR(1)NOT NULL
);
ALTER TABLE Chilenos ADD CONSTRAINT chilenos_PK PRIMARY KEY (Rut);

CREATE TABLE Extranjeros (
    Numero_pasaporte     NUMERIC(11)NOT NULL,
    Nacionalidad         VARCHAR2(25)NOT NULL 
);
ALTER TABLE Extranjeros ADD CONSTRAINT extranjeros_PK PRIMARY KEY (Numero_pasaporte);