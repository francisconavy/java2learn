CREATE TABLE Taxi (
  Placa VARCHAR(7) NOT NULL,
  Marca VARCHAR(30) NOT NULL,
  Modelo VARCHAR(30) NOT NULL,
  AnoFab INTEGER,
  Licenca VARCHAR(9),
  PRIMARY KEY(Placa)
);

CREATE TABLE Cliente (
  CliId VARCHAR(4) NOT NULL,
  Nome VARCHAR(80) NOT NULL,
  CPF VARCHAR(14) NOT NULL,
  PRIMARY KEY(CliId)
);

CREATE TABLE Corrida (
  CliId VARCHAR(4) NOT NULL,
  Placa VARCHAR(7) NOT NULL,
  DataPedido DATE NOT NULL,
  PRIMARY KEY(CliId, Placa, DataPedido),
  FOREIGN KEY(CliId)
    REFERENCES Cliente(CliId)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Placa)
    REFERENCES Taxi(Placa)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);