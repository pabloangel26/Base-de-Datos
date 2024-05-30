CREATE DATABASE IF NOT EXISTS escuela;

USE escuela;

CREATE TABLE Curso(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT
);

CREATE TABLE Estudiantes(
    id INT AUTO_INCREMENT,
    nombre VARCHAR(100),
    correo VARCHAR(100),
    id_curso INT,
    PRIMARY KEY(id),
    FOREIGN KEY(id_curso) REFERENCES Curso(id)
);

CREATE TABLE Perfil(
    id INT AUTO_INCREMENT PRIMARY KEY,
    biografia VARCHAR(100),
    id_estudiante INT,
    FOREIGN KEY(id_estudiante) REFERENCES Estudiantes(id)
);

CREATE TABLE Profesor(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(100)
);

CREATE TABLE Curso_asignado(
    id_curso INT,
    id_profesor INT,
    PRIMARY KEY(id_curso, id_profesor),
    FOREIGN KEY(id_curso) REFERENCES Curso(id),
    FOREIGN KEY(id_profesor) REFERENCES Profesor(id)
);
