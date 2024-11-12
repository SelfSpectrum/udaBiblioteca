-- Tabla de Autores
CREATE TABLE Author (
    id INT AUTO_INCREMENT,
    name CHAR(128) NOT NULL,
    PRIMARY KEY (id)
);

-- Tabla de Libros
CREATE TABLE Book (
    id INT AUTO_INCREMENT,
    internalId INT UNIQUE,
    name CHAR(256) NOT NULL,
    year INT,
    edition INT,
    obligatory BOOL,
    copies INT NOT NULL,
    available INT NOT NULL,
    isbn CHAR(13) UNIQUE,
    issn CHAR(8) UNIQUE,
    PRIMARY KEY (id)
);

-- Tabla de relación entre Autor y Libro (Muchos-a-Muchos)
CREATE TABLE AuthorBook (
    idAuthor INT NOT NULL,
    idBook INT NOT NULL,
    PRIMARY KEY (idAuthor, idBook),
    FOREIGN KEY (idAuthor) REFERENCES Author(id),
    FOREIGN KEY (idBook) REFERENCES Book(id)
);

-- Tabla de Carreras
CREATE TABLE Career (
    id INT AUTO_INCREMENT,
    name CHAR(64) NOT NULL,
    PRIMARY KEY (id)
);

-- Tabla de Materias
CREATE TABLE Subject (
    id INT AUTO_INCREMENT,
    fkCareer INT NOT NULL,
    name CHAR(128) NOT NULL,
    semester INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (fkCareer) REFERENCES Career(id)
);

-- Tabla de relación entre Materia y Libro (Muchos-a-Muchos)
CREATE TABLE SubjectBook (
    idBook INT NOT NULL,
    idSubject INT NOT NULL,
    PRIMARY KEY (idBook, idSubject),
    FOREIGN KEY (idBook) REFERENCES Book(id),
    FOREIGN KEY (idSubject) REFERENCES Subject(id)
);

-- Tabla de Temas
CREATE TABLE Theme (
    id INT AUTO_INCREMENT,
    name CHAR(64) NOT NULL,
    PRIMARY KEY (id)
);

-- Tabla de relación entre Tema y Libro (Muchos-a-Muchos)
CREATE TABLE ThemeBook (
    idBook INT NOT NULL,
    idTheme INT NOT NULL,
    PRIMARY KEY (idBook, idTheme),
    FOREIGN KEY (idBook) REFERENCES Book(id),
    FOREIGN KEY (idTheme) REFERENCES Theme(id)
);

-- Tabla de Enlaces
CREATE TABLE Link (
    id INT AUTO_INCREMENT,
    idBook INT NOT NULL,
    linkData CHAR(512) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (idBook) REFERENCES Book(id)
);

