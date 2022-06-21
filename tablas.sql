CREATE TABLE Afiliados( 
    Rut_afiliado            NUMBER(11)NOT NULL, 
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
    Telefono                NUMBER(38)NOT NULL, 
    Curriculum_vitae        VARCHAR2(38)NOT NULL, 
    Numero_carnet_socio     NUMBER(38)NOT NULL 
);
ALTER TABLE Afiliados ADD CONSTRAINT afiliados_PK PRIMARY KEY(RUT_AFILIADO);

CREATE TABLE Comunas(  
    id_comuna       NUMBER(11) NOT NULL,  
    nombre          VARCHAR2(250) NOT NULL  
);
ALTER TABLE Comunas ADD CONSTRAINT comuna_PK PRIMARY KEY(ID_COMUNA);

CREATE TABLE Formularios_ingresos( 
    Id_formulario               NUMBER(11)NOT NULL, 
    Fecha_creacion_solicitud    DATE NOT NULL, 
    Hora_creacion               DATE NOT NULL 
);
ALTER TABLE Formularios_ingresos ADD CONSTRAINT formulario_de_ingreso_PK PRIMARY KEY(ID_FORMULARIO);

CREATE TABLE Vehiculos ( 
Patente VARCHAR2(6)NOT NULL, 
Marca VARCHAR2(250)NOT NULL, 
Modelo VARCHAR2(250)NOT NULL, 
Color_vehiculo VARCHAR2(250)NOT NULL, 
Tipo_vehiculo VARCHAR2(50)NOT NULL, 
Numero_chasis VARCHAR2(50)NOT NULL, 
Numero_motor VARCHAR2(50)NOT NULL 
);
ALTER TABLE Vehiculos ADD CONSTRAINTS vehiculos_PK  PRIMARY KEY (PATENTE);
