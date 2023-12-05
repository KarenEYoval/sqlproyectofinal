CREATE DATABASE IF NOT EXISTS base_de_datos; 
USE base_de_datos; 

---Tabla de estudiantes ---

CREATE TABLE IF NOT EXISTS Alumnos ( 
    Matricula VARCHAR(50) PRIMARY KEY, 
    Nombre VARCHAR(50), 
    ApellidoPaterno VARCHAR(50), 
    ApellidoMaterno VARCHAR(50), 
    Email VARCHAR(100), 
    Edad INT 
); 

-- Tabla de Carreras ---

CREATE TABLE IF NOT EXISTS Carreras ( 
    CodigoCarrera INT PRIMARY KEY, 
    NombreCarrera VARCHAR(100), 
    Descripcion VARCHAR(55) 
); 

-- Tabla de Materias --- 

CREATE TABLE IF NOT EXISTS Materias ( 
    CodigoMateria INT PRIMARY KEY, 
    NombreMateria VARCHAR(100), 
    Descripcion VARCHAR(55), 
    Creditos INT, 
    Bloque INT 
); 

-- Tabla de AreasDeFormacion ---

CREATE TABLE IF NOT EXISTS AreasDeFormacion ( 
    CodigoArea INT PRIMARY KEY, 
    NombreArea VARCHAR(100) 
); 


-- Tabla de PeriodosEscolares ---
 
CREATE TABLE IF NOT EXISTS PeriodosEscolares ( 
    CodigoPeriodo INT PRIMARY KEY, 
    NombrePeriodo VARCHAR(50), 
    FechaInicio DATE, 
    FechaFin DATE 
); 



-- Tabla de Profesores ---

CREATE TABLE IF NOT EXISTS Profesores ( 
    NumeroPersonal INT PRIMARY KEY, 
    Nombre VARCHAR(50), 
    ApellidoPaterno VARCHAR(50), 
    ApellidoMaterno VARCHAR(50), 
    Email VARCHAR(100), 
    GradoEstudios VARCHAR(50) 
); 

-- Insertar datos en la tabla Alumnos ----

INSERT INTO Alumnos (Matricula, Nombre, ApellidoPaterno, ApellidoMaterno, Email, Edad)
VALUES 
    ('zS22016126', 'Karen', 'Lopez', 'Yoval', 'karenyoval26@jamil.com', 19),
    ('zS22016236', 'Harry', 'Eduard', 'Styles', 'styles@example.com', 19),
    ('zS22633654', 'Taylor', 'Alison', 'Swift', 'taylor13@example.com', 22),
    ('zS22856985', 'Sebastian', 'González', 'Ramírez', 'elena@example.com', 19),
    ('zS22638754', 'Norma', 'Pérez', 'García', 'daniel@example.com', 19),
    ('zS22445478', 'Isaid', 'Ochoa', 'Tadeo', 'isaid@example.com', 22),
    ('zS22016123', 'Winnie', 'the', 'Pooh', 'winnie@example.com', 21),
    ('zS22016123', 'Jose', 'Lopez', 'Iniguez', 'jose@example.com', 25),
    ('zS22016589', 'Joselyn', 'Fernandez', 'Lopez', 'joss@example.com', 19),
    ('zS22016128', 'Zack', 'Efron', 'Lopez', 'zack@exmple.com', 19);



-- Insertar datos en la tabla Carreras ----

INSERT INTO Carreras (CodigoCarrera, NombreCarrera, Descripcion)
VALUES 
    (111, 'LIS', 'Rama de la Ingeniería que estudia el hardware, las redes de datos y el software necesarios para tratar información de forma automática'),
    (222, 'LICIC', 'Área de la ciencia que se encarga de estudiar la administración de métodos'),
    (333, 'LE', 'Técnicas y procesos con el fin de almacenar, procesar y transmitir información y datos en formato digital.'),
    (444, 'LRSC', 'Abarca desde disciplinas teóricas hasta disciplinas prácticas.'),
    (555, 'LTC', 'Carrera de varios ámbitos');



-- Insertar datos en la tabla Profesores ---

INSERT INTO Profesores (NumeroPersonal, Nombre, Email, GradoEstudios)
VALUES 
    (2284042326, 'Pedro Martínez', 'pedro@example.com', 'Doctorado'),
    (228569872, 'Ana Gómez', 'ana@example.com', 'Maestría'),
    (558878963, 'Carlos Sánchez', 'carlos@example.com', 'Licenciatura'),
    (417893575, 'Guillermo Humberto', 'guille@example.com', 'Doctorado'),
    (2287779710, 'Juana Elisa', 'juana@example.com', 'Licenciatura');


-- Llenar tabla Materias ----

INSERT INTO Materias (CodigoMateria, NombreMateria, Descripcion, Creditos, Periodo, CodigoCarrera)
VALUES 
    (1111, 'Computacion basica', 'Conocimientos básicos de computación', 4, 11, 555),
    (2222, 'Matematicas discretas', 'Conocimientos básicos de computación', 5, 22, 333),
    (3333, 'Sistemas Operativos', 'Conocimientos básicos de computación', 6, 33, 444),
    (4444, 'Experiencia recepcional', 'El alumno aplica conocimientos adquiridos a lo largo de su carrera', 6, 77, 555),
    (5555, 'Eleccion Libre', 'Actividades recreativas', 4, 2, 222);


-- Llenar tabla AreasDeFormacion----

INSERT INTO AreasDeFormacion (CodigoArea, NombreArea)
VALUES 
    (1, 'Área de Formación básica'),
    (2, 'Iniciacion la disciplina'),
    (3, 'Área de formación terminal'),
    (4, 'Área de formación de elección libre');



---- Insertar datos en la tabla PeriodosEscolares -----

INSERT INTO PeriodosEscolares (CodigoPeriodo, NombrePeriodo, FechaInicio, FechaFin)
VALUES 
    (11, 'Primer', '2018-01-10', '2018-03-20'),
    (22, 'Segundo', '2018-06-01', '2018-09-26'),
    (33, 'Tercer', '2018-02-15', '2018-06-20'),
    (44, 'Cuarto', '2018-09-30', '2018-12-24'),
    (55, 'Quinto', '2019-01-10', '2019-03-20'),
    (66, 'Sexto', '2019-06-20', '2019-09-14'),
    (77, 'Septimo', '2019-12-24', '2020-01-10'),
    (88, 'Octavo', '2020-03-30', '2020-06-27');
