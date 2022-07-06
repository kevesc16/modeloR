ALTER SESSION SET NLS_DATE_FORMAT = 'DD/MM/YY';
CREATE TABLE Clientes(
id_cliente          NUMBER (11)NOT NULL,
Rut_Cliente         NUMBER (11)NOT NULL,
Dv                  CHAR (1 CHAR)NOT NULL,
Numero_pasaporte    NUMBER,
Primer_nombre       VARCHAR2 (250)NOT NULL,
Segundo_nombre      VARCHAR2 (250),
Apellido_paterno    VARCHAR2 (250)NOT NULL,
Apellido_materno    VARCHAR2 (250),
Fecha_nacimiento    DATE NOT NULL,
Genero              VARCHAR2 (250),
Direccion           VARCHAR2 (250)NOT NULL,
Correo_electronico  VARCHAR2 (250)NOT NULL,
Discapacidad        VARCHAR2(250),
Curriculum_vitae    VARCHAR2(50) , 
Numero_carnet_socio NUMBER (11)NOT NULL,
Comunas_id          NUMBER(11)NOT NULL,
Nacionalidad_id     NUMBER(11)NOT NULL
);
CREATE TABLE Vehiculos( 
Patente         VARCHAR2 (50)NOT NULL,
Marca           VARCHAR2 (250)NOT NULL,
Modelo          VARCHAR2 (250)NOT NULL,
Color_vehiculo  VARCHAR2 (250),
tipo_vehiculo   VARCHAR2 (50)NOT NULL,
Numero_chasis   VARCHAR2 (50)NOT NULL,
Numero_motor    VARCHAR2 (50)NOT NULL,
Clientes_id      NUMBER(11)NOT NULL
);
CREATE TABLE Pagos ( 
id_pago         NUMBER (11)NOT NULL,
pago_inicial    NUMBER NOT NULL,
pago_mensual    NUMBER NOT NULL,
Fecha_pago      DATE,
Cheques_id      NUMBER(11)NOT NULL,
Clientes_id     NUMBER(11)NOT NULL,
Bancos_id       NUMBER(11)NOT NULL
);
CREATE TABLE Cheques(
id_cheque           NUMBER (11)     NOT NULL,
numero_cheque       NUMBER NOT NULL,
Cantidad_a_pagar    NUMBER NOT NULL,
Bancos_id           NUMBER (11)     NOT NULL
);
CREATE TABLE Beneficios(
id_beneficio            NUMBER (11)NOT NULL,
Cantidad_uso            NUMBER NOT NULL,
Cantidad_maxima_uso     NUMBER,
Descuento_por_tipo      VARCHAR2 (250)NOT NULL,
Tipos_beneficios_id     NUMBER(11)NOT NULL,
Clientes_id             NUMBER(11)NOT NULL
);
CREATE TABLE Tipos_beneficios(
id_tipo_beneficio NUMBER (11)NOT NULL,
Salud             CHAR (1),
Educacion         CHAR (1),
Deportes          CHAR (1)
);
CREATE TABLE Bancos(
id_banco            NUMBER (11) NOT NULL,
Nombre              VARCHAR2(250) NOT NULL
);
CREATE TABLE Cargas_Clientes(
Rut_carga           NUMBER (11)NOT NULL,
Dv                  CHAR (1 CHAR)NOT NULL,
Primer_nombre       VARCHAR2 (250)NOT NULL,
Segundo_nombre      VARCHAR2 (250),
Apellido_paterno    VARCHAR2 (250)NOT NULL,
Apellido_materno    VARCHAR2 (250),
Fecha_nacimiento    DATE NOT NULL,
Clientes_id         NUMBER(11)NOT NULL,
Parentescos_id      NUMBER(11)NOT NULL,
Comunas_id          NUMBER(11)NOT NULL
);
CREATE TABLE Telefonos(
id_telefono         NUMBER (11) NOT NULL,
Numero              NUMBER  NOT NULL,
Tipos_numeros_id    NUMBER  NOT NULL,
Clientes_id         NUMBER (11) NOT NULL
);
CREATE TABLE Tipos_numeros(
id_tipo_telefono    NUMBER (11) NOT NULL,
Casa                CHAR (1),
Oficina             CHAR (1),
Celular             CHAR (1)
);
CREATE TABLE Comunas(
id_comuna       NUMBER (11) NOT NULL,
Nombre          VARCHAR2 (250) NOT NULL,
Provincias_id   NUMBER (11) NOT NULL
);
CREATE TABLE Provincias(
id_provincia    NUMBER (11) NOT NULL,
Nombre          VARCHAR2 (250) NOT NULL,
Regiones_id     NUMBER (11) NOT NULL
);
CREATE TABLE Regiones(
id_region   NUMBER (11) NOT NULL,
Nombre      VARCHAR2 (250) NOT NULL
);
CREATE TABLE Parentescos (
id_parentesco       NUMBER (11)NOT NULL,
Parentesco_cliente  VARCHAR2 (250)NOT NULL,
Pareja_id           NUMBER (11) NOT NULL
);
CREATE TABLE Parejas(
id_pareja               NUMBER (11)NOT NULL,
matrimonio              CHAR (1),
acuerdo_union_civil     CHAR (1)
);
CREATE TABLE Nacionalidad(
id_nacionalidad     NUMBER (11)    NOT NULL,
Nombre_nacionalidad VARCHAR2 (250) NOT NULL
);
ALTER TABLE Clientes ADD CONSTRAINT cliente_PK PRIMARY KEY (id_cliente);
ALTER TABLE Vehiculos ADD CONSTRAINT vehiculo_PK PRIMARY KEY (Patente);
ALTER TABLE Beneficios ADD CONSTRAINT beneficio_PK PRIMARY KEY(Id_beneficio);
ALTER TABLE Nacionalidad ADD CONSTRAINT nacionalidad_PK PRIMARY KEY (id_nacionalidad);
ALTER TABLE Pagos ADD CONSTRAINT pago_PK PRIMARY KEY (id_pago);
ALTER TABLE Cheques ADD CONSTRAINT cheque_PK PRIMARY KEY (id_cheque);
ALTER TABLE Bancos ADD CONSTRAINT banco_PK PRIMARY KEY (id_banco); 
ALTER TABLE Cargas_clientes ADD CONSTRAINT carga_cliente_PK PRIMARY KEY (Rut_carga);
ALTER TABLE Comunas ADD CONSTRAINT comuna_PK PRIMARY KEY (id_comuna);
ALTER TABLE Provincias ADD CONSTRAINT provincia_PK PRIMARY KEY (id_provincia);
ALTER TABLE Regiones ADD CONSTRAINT region_PK PRIMARY KEY (id_region);
ALTER TABLE Parentescos ADD CONSTRAINT parentesco_PK PRIMARY KEY (id_parentesco);
ALTER TABLE Parejas ADD CONSTRAINT pareja_PK PRIMARY KEY (id_pareja);
ALTER TABLE Tipos_beneficios ADD CONSTRAINT tipo_beneficio_PK PRIMARY KEY (id_tipo_beneficio);
ALTER TABLE Telefonos ADD CONSTRAINT telefono_PK PRIMARY KEY (id_telefono);
ALTER TABLE Tipos_numeros ADD CONSTRAINT tipo_numero_PK PRIMARY KEY (id_tipo_telefono);
    ALTER TABLE Cheques ADD CONSTRAINT Cheques_Bancos_FK FOREIGN KEY (Bancos_id)
    REFERENCES Bancos (id_banco);
    ALTER TABLE Pagos ADD CONSTRAINT Pagos_Clientes_FK   FOREIGN KEY (Clientes_id)
    REFERENCES  Clientes   (id_cliente);
    ALTER TABLE Pagos ADD CONSTRAINT Pagos_Cheques_FK FOREIGN KEY (Cheques_id)
    REFERENCES Cheques (id_cheque);
    ALTER TABLE Pagos ADD CONSTRAINT Pagos_Bancos_FK FOREIGN KEY (Bancos_id)
    REFERENCES Bancos (id_banco);
    ALTER TABLE Vehiculos ADD CONSTRAINT Vehiculos_Clientes_FK FOREIGN KEY (Clientes_id)
    REFERENCES Clientes (id_cliente);
    ALTER TABLE Clientes ADD CONSTRAINT Cliente_Comuna_FK FOREIGN KEY (Comunas_id)
    REFERENCES Comunas(id_comuna);
    ALTER TABLE Clientes ADD CONSTRAINT Clientes_Nacionalidad_FK FOREIGN KEY (Nacionalidad_id)
    REFERENCES Nacionalidad (id_nacionalidad);
    ALTER TABLE Comunas ADD CONSTRAINT Comunas_Provincias_FK FOREIGN KEY (Provincias_id)
    REFERENCES Provincias (id_provincia);
    ALTER TABLE Provincias ADD CONSTRAINT Provincias_Regiones_FK FOREIGN KEY (Regiones_id)
    REFERENCES Regiones (id_region);
    ALTER TABLE Telefonos ADD CONSTRAINT Telefonos_Clientes_FK FOREIGN KEY (Clientes_id)
    REFERENCES Clientes (id_cliente);
    ALTER TABLE Telefonos ADD CONSTRAINT Telefonos_Tipos_numeros_FK FOREIGN KEY (Tipos_numeros_id)
    REFERENCES Tipos_numeros (Id_tipo_telefono);
    ALTER TABLE Beneficios ADD CONSTRAINT Beneficios_Tipo_beneficios_FK FOREIGN KEY (Tipos_beneficios_id)
    REFERENCES Tipos_beneficios (id_tipo_beneficio);
    ALTER TABLE Beneficios ADD CONSTRAINT Beneficios_Clientes_FK FOREIGN KEY (Clientes_id)
    REFERENCES Clientes (id_cliente);
    ALTER TABLE Cargas_clientes ADD CONSTRAINT Cargas_clientes_Clientes_FK FOREIGN KEY (Clientes_id)
    REFERENCES Clientes (id_cliente);
    ALTER TABLE Cargas_clientes ADD CONSTRAINT Cargas_clientes_Parentesco_FK FOREIGN KEY (Parentescos_id)
    REFERENCES Parentescos (id_parentesco);
    ALTER TABLE Cargas_clientes ADD CONSTRAINT Cargas_clientes_Comunas_FK FOREIGN KEY (Comunas_id)
    REFERENCES Comunas (id_comuna);
    ALTER TABLE Parentescos ADD CONSTRAINT Parentesco_Pareja_FK FOREIGN KEY (Pareja_id)
    REFERENCES Parejas (id_pareja);

INSERT INTO Bancos VALUES(1,'Banco Santander');
INSERT INTO Nacionalidad VALUES (1, 'Chilena');
INSERT INTO Regiones VALUES(1,'REGION METROPOLITANA');
INSERT INTO Provincias VALUES(1,'Santiago',1);
INSERT INTO Comunas VALUES(1,'SAN MIGUEL',1);
INSERT INTO Clientes (
id_cliente,
Rut_Cliente,
Dv,
Primer_nombre,
Apellido_paterno,
Fecha_nacimiento,
Direccion,
Correo_electronico,
Numero_carnet_socio,
Comunas_id,
Nacionalidad_id
) VALUES (1, 21012872754, '7', 'Cristian','Ferreira', '19/04/2002','BLALLA', 'BLABLAJ',123124,1,1);
INSERT INTO Vehiculos VALUES(1234,'HCA','FSDHG','','E','RQEWGWGRWEG','DFAHOFUF MOTOE',1 );
INSERT INTO Cheques VALUES (1,123,1234,1);
INSERT INTO Pagos VALUES(1,22,23,'22/05/16',1,1,1);




           