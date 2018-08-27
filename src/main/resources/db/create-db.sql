
DROP USER IF EXISTS boaglio;

create user boaglio;

create database minhasmoedas DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

use minhasmoedas;

GRANT ALL PRIVILEGES ON *.* TO 'boaglio'@'%' IDENTIFIED BY 'boaglio';

DROP TABLE IF EXISTS dolar_day;

CREATE TABLE dolar_day (
  id_dolar_day int(11) NOT NULL AUTO_INCREMENT,
  day date DEFAULT NULL,
  value varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (id_dolar_day),
  UNIQUE KEY day_uk (day)
) ENGINE=InnoDB AUTO_INCREMENT=5845 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS dolar_mes;

CREATE TABLE dolar_mes (
  id_dolar_mes int(11) NOT NULL AUTO_INCREMENT,
  day date DEFAULT NULL,
  value varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (id_dolar_mes),
  UNIQUE KEY day_uk (day)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

flush privileges;
