CREATE TABLE PedidosTontos (
  CodigoPedido integer NOT NULL,
  FechaPedido date NOT NULL,
  CodigoPedido_Tontos integer NOT NULL,
  FechaEsperada date NOT NULL,
  FechaEntrega date DEFAULT NULL,
  Estado varchar(15) NOT NULL,
  Comentarios text,
  CodigoCliente integer NOT NULL,
  PRIMARY KEY (CodigoPedido_Tontos),
  CONSTRAINT PedidosTontos_Clientes FOREIGN KEY (CodigoCliente) REFERENCES Clientes (CodigoCliente)
) engine=innodb;


insert into pedidostontos
select * from Pedidos where not exists (select * from detallepedidos where pedidos.CodigoPedido=DetallePedidos.CodigoPedido)