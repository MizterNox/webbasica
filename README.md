# CRUD Node.js + Express + MySQL

## Procedimiento de Instalación

### Paso 1: Clonar el repositorio
```bash
git clone https://github.com/MizterNox/webbasica.git
```

### Paso 2: Instalar dependencias
Abrir el proyecto en la terminal o VSCode y ejecutar:
```bash
npm install
```

### Paso 3: Configurar la Base de Datos
Crear y restaurar la base de datos en MySQL ejecutando el siguiente script:

```sql
CREATE DATABASE movietime;
USE movietime;

CREATE TABLE peliculas (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    titulo      VARCHAR(100)    NOT NULL,
    duracionmin SMALLINT        NOT NULL,
    estreno     CHAR(4)         NOT NULL,
    creado      DATETIME        NOT NULL DEFAULT NOW(),
    modificado  DATETIME        NULL
) ENGINE = InnoDB;

INSERT INTO peliculas (titulo, duracionmin, estreno) VALUES
    ('Titanic', 150, '2003'),
    ('Shrek', 120, '2005');
```

### Paso 4: Ejecutar el proyecto
Para iniciar el servidor en modo desarrollo:
```bash
nodemon app
```