Create table empleado(
	dni char(9) primary key,
	Nombre Varchar (15) NOT NULL,
	Apellido1 Varchar(15) NOT NULL,
	Direccion Varchar(30) NOT NULL,
    fecha_nac Date NOT NULL,
    fecha_entrada Date NOT NULL,
    categoria Varchar (20),
    salario double(6,2))engine=innodb;

Create table cliente(
	cif char(10) primary key,
    Nombre Varchar(20) NOT NULL,
    Direccion Varchar(45) NOT NULL,
    telefono char(10),
    id_empleado char(10) references empleado (dni) on update set null,
    constraint nonulo not null (fecha)
    )engine=innodb;

Create table producto(
	Cod char(20) primary key,
    descripcion text (200),
    precio double(5,2)
)engine=innodb;

Create table pedido(
	Numero char(10) primary key,
    FechaPedido Date default NOW() not null,
    cliente char (50)NOT NULL references cliente(cif)
)engine=innodb;

Create table linea_pedido(
	Cantidad int(3) not null,
    precio double(5,2) not null,
    Cod int(20) references producto,
    Numero int(20) references pedido on delete cascade,
    primary key (Cod,Numero)
)engine=innodb;



