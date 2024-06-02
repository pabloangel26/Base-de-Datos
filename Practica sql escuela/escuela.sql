USE fabrica_cervezas;

CREATE TABLE Categoria(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE Cerveza(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    id_categoria INT,
    FOREIGN KEY(id_categoria) REFERENCES Categoria(id)
);

CREATE TABLE Materia_Prima(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion VARCHAR(100)
);

CREATE TABLE Cerveza_Materia_Prima(
    id_cerveza INT,
    id_materia_prima INT,
    PRIMARY KEY (id_cerveza, id_materia_prima),
    FOREIGN KEY(id_cerveza) REFERENCES Cerveza(id),
    FOREIGN KEY(id_materia_prima) REFERENCES Materia_Prima(id)
);

CREATE TABLE Tipo(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE Categoria_Tipo(
    id_categoria INT,
    id_tipo INT,
    PRIMARY KEY(id_categoria, id_tipo),
    FOREIGN KEY(id_categoria) REFERENCES Categoria(id),
    FOREIGN KEY(id_tipo) REFERENCES Tipo(id)
);

