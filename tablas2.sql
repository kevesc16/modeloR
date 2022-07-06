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
Curriculum_vitae    VARCHAR2(50) , 
Numero_carnet_socio NUMBER (11)NOT NULL,
Comunas_id          NUMBER(11)NOT NULL,
Sindicatos_id       NUMBER (11),
Discapacidades_id   NUMBER (11),
Nacionalidad_id     NUMBER(11)NOT NULL
);
CREATE TABLE Sindicatos(
id_sindicato    NUMBER (11) NOT NULL,
nombre          VARCHAR2 (250)    
);
CREATE TABLE Delegados_Sindicales(
id_delegado_sindical    NUMBER(11)NOT NULL,
rut                     NUMBER(11)NOT NULL,
Dv                      CHAR(1) NOT NULL,
Primer_nombre           VARCHAR2 (250) NOT NULL,
Segundo_nombre          VARCHAR2 (250),
Apellido_paterno        VARCHAR2 (250) NOT NULL,
Apellido_materno        VARCHAR2 (250),
Empresas_id             NUMBER (11)
);
CREATE TABLE Empresas(
id_empresa NUMBER(11) NOT NULL,
nombre   VARCHAR2 (250) NOT NULL,
direccion VARCHAR2 (250) NOT NULL,
Sindicatos_id NUMBER(11) NOT NULL
);
CREATE TABLE Discapacidades(
id_discapacidad NUMBER(11) NOT NULL,
nombre   VARCHAR2 (250) NOT NULL
);
CREATE TABLE Vehiculos( 
Patente             VARCHAR2 (50)NOT NULL,
Numero_chasis       VARCHAR2 (50)NOT NULL,
Numero_motor        VARCHAR2 (50)NOT NULL,
Colores_id          NUMBER(11) NOT NULL,
Tipos_vehiculos_id  NUMBER (11) NOT NULL,
Modelos_id          NUMBER (11) NOT NULL,
Clientes_id         NUMBER(11)NOT NULL
);
CREATE TABLE Tipos_Vehiculos(
Id_tipo_vehiculo    NUMBER(11) NOT NULL,
nombre_tipo         VARCHAR2(250)NOT NULL
);
CREATE TABLE Colores(
id_color        NUMBER (11) NOT NULL,
nombre_colore   VARCHAR2 (250) NOT NULL
);
CREATE TABLE Modelos(
id_modelo       NUMBER(11) NOT NULL,
nombre_modelo   VARCHAR2 (250) NOT NULL,
Marcas_id       NUMBER (11) NOT NULL
);
CREATE TABLE Marcas(
id_marca NUMBER(11) NOT NULL,
nombre   VARCHAR2 (250) NOT NULL
);
CREATE TABLE Pagos ( 
id_pago         NUMBER (11)NOT NULL,
pago_inicial    NUMBER NOT NULL,
pago_mensual    NUMBER NOT NULL,
Fecha_pago      DATE,
Cheques_id      NUMBER(11)NOT NULL,
Clientes_id     NUMBER(11)NOT NULL,
Bancos_id       NUMBER(11)NOT NULL,
Formas_pagos_id NUMBER(11)NOT NULL
);
CREATE TABLE Formas_de_pago(
id_forma_pago       NUMBER (11) NOT NULL,
nombre_forma        VARCHAR2 (250) NOT NULL    
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
nombre            VARCHAR2(250)NOT NULL
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
Discapacidades_id   NUMBER (11),
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
nombre              VARCHAR2(250) NOT NULL
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
Descripcion         VARCHAR2 (250)
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
ALTER TABLE Tipos_beneficios ADD CONSTRAINT tipo_beneficio_PK PRIMARY KEY (id_tipo_beneficio);
ALTER TABLE Telefonos ADD CONSTRAINT telefono_PK PRIMARY KEY (id_telefono);
ALTER TABLE Tipos_numeros ADD CONSTRAINT tipo_numero_PK PRIMARY KEY (id_tipo_telefono);
ALTER TABLE Formas_de_pago ADD CONSTRAINT formas_de_pago_PK PRIMARY KEY (id_forma_pago);
ALTER TABLE Marcas ADD CONSTRAINT marcas_PK PRIMARY KEY (id_marca);
ALTER TABLE Modelos ADD CONSTRAINT modelo_PK PRIMARY KEY (id_modelo);
ALTER TABLE Colores ADD CONSTRAINT color_PK PRIMARY KEY (id_color);
ALTER TABLE Tipos_vehiculos ADD CONSTRAINT tipo_vehiculo_PK PRIMARY KEY (id_tipo_vehiculo);
ALTER TABLE Discapacidades ADD CONSTRAINT discapacidad_PK PRIMARY KEY (id_discapacidad);
ALTER TABLE Delegados_Sindicales  ADD CONSTRAINT delegados_sindicales_PK PRIMARY KEY (id_delegado_sindical);
ALTER TABLE Empresas ADD CONSTRAINT empresa_PK PRIMARY KEY (id_empresa);
ALTER TABLE Sindicatos ADD CONSTRAINT sindicato_PK PRIMARY KEY (id_sindicato);

    ALTER TABLE Cheques ADD CONSTRAINT Cheques_Bancos_FK FOREIGN KEY (Bancos_id)
    REFERENCES Bancos (id_banco);
    ALTER TABLE Pagos ADD CONSTRAINT Pagos_Clientes_FK   FOREIGN KEY (Clientes_id)
    REFERENCES  Clientes   (id_cliente);
    ALTER TABLE Pagos ADD CONSTRAINT Pagos_Cheques_FK FOREIGN KEY (Cheques_id)
    REFERENCES Cheques (id_cheque);
    ALTER TABLE Pagos ADD CONSTRAINT Pagos_Formas_de_pago_FK FOREIGN KEY (Formas_pagos_id)
    REFERENCES Formas_de_pago (id_forma_pago);
    ALTER TABLE Pagos ADD CONSTRAINT Pagos_Bancos_FK FOREIGN KEY (Bancos_id)
    REFERENCES Bancos (id_banco);
    ALTER TABLE Vehiculos ADD CONSTRAINT Vehiculos_Clientes_FK FOREIGN KEY (Clientes_id)
    REFERENCES Clientes (id_cliente);
    ALTER TABLE Vehiculos ADD CONSTRAINT Vehiculos_Colores_FK FOREIGN KEY (Colores_id)
    REFERENCES Colores (id_color);
    ALTER TABLE Vehiculos ADD CONSTRAINT Vehiculos_Tipos_vehiculos_FK FOREIGN KEY (Tipos_vehiculos_id)
    REFERENCES Tipos_vehiculos (id_tipo_vehiculo);
    ALTER TABLE Vehiculos ADD CONSTRAINT Vehiculos_Modelos_FK FOREIGN KEY (Modelos_id)
    REFERENCES Modelos (id_modelo);
    ALTER TABLE Modelos ADD CONSTRAINT Modelos_Marcas_FK FOREIGN KEY (Marcas_id)
    REFERENCES Marcas (id_marca);
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
    ALTER TABLE Cargas_clientes ADD CONSTRAINT Cargas_clientes_Discapacidades_FK FOREIGN KEY (Discapacidades_id)
    REFERENCES Discapacidades (id_discapacidad);
    ALTER TABLE Cargas_clientes ADD CONSTRAINT Cargas_clientes_Comunas_FK FOREIGN KEY (Comunas_id)
    REFERENCES Comunas (id_comuna);
    ALTER TABLE Clientes ADD CONSTRAINT Clientes_Sindicatos_FK FOREIGN KEY (Sindicatos_id)
    REFERENCES Sindicatos (id_sindicato);
    ALTER TABLE Empresas ADD CONSTRAINT Sindicatos_FK FOREIGN KEY (Sindicatos_id)
    REFERENCES Sindicatos (id_sindicato);
    ALTER TABLE Clientes ADD CONSTRAINT Clientes_Discapacidades_FK FOREIGN KEY (Discapacidades_id)
    REFERENCES Discapacidades (id_discapacidad);

INSERT INTO Parentescos(
id_parentesco,
Parentesco_cliente
) VALUES (1,'Hija');
INSERT INTO Sindicatos VALUES (1,'SINDICATO DE EMPRESAS');
INSERT INTO Empresas VALUES (1,'Microsoft','Las Calilas 1123',1);
INSERT INTO Delegados_sindicales VALUES (1,21456734,'7','Carlos',' ','Rojas',' ',1);
INSERT INTO Colores VALUES (1,'Negro');
INSERT INTO Tipos_vehiculos VALUES (1,'Electrico');
INSERT INTO Marcas VALUES (1,'Nissan');
INSERT INTO Modelos VALUES (1,'Cira',1);    
INSERT INTO Marcas VALUES (2,'FORD');
INSERT INTO Discapacidades VALUES (1,'PARALITICO');
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
Discapacidades_id,
Sindicatos_id,
Nacionalidad_id
) 
VALUES (1, 21012872754, '7', 'Cristian','Ferreira', '19/04/2002','BLALLA', 'BLABLAJ',123124,1,1,1,1);
INSERT INTO Cargas_clienteS(
Rut_carga,
Dv,
Primer_nombre,
Apellido_paterno,
Fecha_nacimiento,
Clientes_id,
Parentescos_id,
Comunas_id,
Discapacidades_id
) VALUES (21324314,'7','Martina','Ferreira','18/05/2015',1,1,1,1);
INSERT INTO Tipos_beneficios VALUES(1,'SEGURO');
INSERT INTO Beneficios VALUES (1,4,100,'15%',1,1);
INSERT INTO Vehiculos VALUES('1234','HCA','FSDHG',1,1,1,1 );
INSERT INTO Cheques VALUES (1,123,1234,1);
INSERT INTO Formas_de_pago VALUES (1,'TARJETA');
INSERT INTO Pagos VALUES(1,22,23,'22/05/16',1,1,1,1);



           