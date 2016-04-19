CREATE TABLE socios
(socio_no INT(4),
apellidos VARCHAR(14),
telefono CHAR(9) NOT NULL,
fecha_alta DATE DEFAULT '2012-01-01',
direccion VARCHAR(20),
codigo_postal INT(5),
CONSTRAINT PK_SOCIOS PRIMARY KEY(socio_no),
CONSTRAINT UQ_UNIQUE UNIQUE(apellidos),
CONSTRAINT CK_CODIGO
CHECK (codigo_postal BETWEEN 28000 AND 28999));

CREATE TABLE prestamos
(num_prestamo INT(2) PRIMARY KEY,
socio_no INT(4) ,
CONSTRAINT FK_SOCIO_PRESTAMOS FOREIGN KEY (socio_no)
REFERENCES socios(socio_no) ON UPDATE CASCADE);

alter table socios modify fecha_alta date default '1999-03-02';
insert into socios values(1000,null,'666666666',null,null,null);
insert into prestamos values(00,1000);

delete from socios where apellidos like "%Lopez"
