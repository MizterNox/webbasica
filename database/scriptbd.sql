CREATE DATABASE movietime;
USE movietime;
CREATE TABLE peliculas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    duracionmin SMALLINT NOT NULL,
    estreno CHAR(4) NOT NULL,
    creado DATETIME NOT NULL DEFAULT NOW(),
    modificado DATETIME NULL
) ENGINE = InnoDB;

INSERT INTO peliculas (titulo, duracionmin, estreno) VALUES 
    ('Titanic', 150, '2003'),
    ('Sherk', 120, '2005');