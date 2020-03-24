CREATE TABLE usuario (
  idusuario SERIAL NOT NULL,
  usr VARCHAR(30) NULL,
  pass VARCHAR(30) NULL,
  nombre VARCHAR(30) NULL,
  apellido VARCHAR(30) NULL,
  PRIMARY KEY(idusuario)
);

CREATE TABLE sesion (
  idsesion SERIAL NOT NULL,
  idusuario SERIAL NOT NULL,
  fecha_inicio TIMESTAMP NULL,
  fecha_fin TIMESTAMP NULL,
  PRIMARY KEY(idsesion),
  FOREIGN KEY(idusuario)
    REFERENCES usuario(idusuario)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);


