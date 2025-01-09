CREATE TABLE Book (
    id INT AUTO_INCREMENT UNIQUE PRIMARY KEY,
    name VARCHAR(256) NOT NULL,
    year SMALLINT,
    edition TINYINT,
    isbn VARCHAR(13) UNIQUE,
    issn VARCHAR(8) UNIQUE
);

CREATE TABLE Author (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(256) NOT NULL
);

CREATE TABLE AuthorBook (
    idAuthor INT NOT NULL,
    idBook INT NOT NULL,
    PRIMARY KEY (idAuthor, idBook),
    FOREIGN KEY (idAuthor) REFERENCES Author(id),
    FOREIGN KEY (idBook) REFERENCES Book(id)
);

CREATE TABLE Faculty (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(64) NOT NULL
);

CREATE TABLE Career (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idFaculty INT,
    name VARCHAR(128) NOT NULL,
    FOREIGN KEY (idFaculty) REFERENCES Faculty(id)
);

CREATE TABLE Subject (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idCareer INT,
    name VARCHAR(128),
    semester SMALLINT,
    FOREIGN KEY (idCareer) REFERENCES Career(id)
);

CREATE TABLE SubjectBook (
    idBook INT NOT NULL,
    idSubject INT NOT NULL,
    year SMALLINT,
    semester TINYINT,
    obligatory BOOLEAN,
    PRIMARY KEY (idBook, idSubject),
    FOREIGN KEY (idBook) REFERENCES Book(id),
    FOREIGN KEY (idSubject) REFERENCES Subject(id)
);

CREATE TABLE Theme (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(64) NOT NULL
);

CREATE TABLE ThemeBook (
    idBook INT NOT NULL,
    idTheme INT NOT NULL,
    PRIMARY KEY (idBook, idTheme),
    FOREIGN KEY (idBook) REFERENCES Book(id),
    FOREIGN KEY (idTheme) REFERENCES Theme(id)
);

CREATE TABLE LinkSource (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idBook INT NOT NULL,
    linkSource TEXT NOT NULL,
    FOREIGN KEY (idBook) REFERENCES Book(id)
);

CREATE TABLE Editorial (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(128) NOT NULL
);

CREATE TABLE EditorialBook (
    idBook INT NOT NULL,
    idEditorial INT NOT NULL,
    PRIMARY KEY (idBook, idEditorial),
    FOREIGN KEY (idBook) REFERENCES Book(id),
    FOREIGN KEY (idEditorial) REFERENCES Editorial(id)
);

CREATE TABLE NroBib (
    nroBib INT PRIMARY KEY,
    copias SMALLINT NOT NULL
);

CREATE TABLE NroBibBook (
    idBook INT NOT NULL,
    nroBib INT NOT NULL,
    PRIMARY KEY (idBook, nroBib),
    FOREIGN KEY (idBook) REFERENCES Book(id),
    FOREIGN KEY (nroBib) REFERENCES NroBib(nroBib)
);

CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idFaculty INT,
    rut INT UNIQUE NOT NULL,
    username VARCHAR(64) NOT NULL,
    passwordHash VARCHAR(256) NOT NULL, -- Store hashed passwords, not plaintext
    role TINYINT NOT NULL,
    FOREIGN KEY (idFaculty) REFERENCES Faculty(id)
);

CREATE TABLE SubjectUser (
    idUser INT NOT NULL,
    idSubject INT NOT NULL,
    year SMALLINT,
    semester TINYINT,
    PRIMARY KEY (idUser, idSubject),
    FOREIGN KEY (idUser) REFERENCES Users(id),
    FOREIGN KEY (idSubject) REFERENCES Subject(id)
);