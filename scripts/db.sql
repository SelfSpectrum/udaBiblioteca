-- Table: Book
CREATE TABLE Book (
    id INT AUTO_INCREMENT UNIQUE PRIMARY KEY,
    name VARCHAR(256) NOT NULL,
    year SMALLINT,
    edition TINYINT,
    isbn VARCHAR(13) UNIQUE,
    issn VARCHAR(8) UNIQUE
);

-- Table: Author
CREATE TABLE Author (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(128) NOT NULL
);

-- Table: AuthorBook
CREATE TABLE AuthorBook (
    idAuthor INT NOT NULL,
    idBook INT NOT NULL,
    PRIMARY KEY (idAuthor, idBook),
    FOREIGN KEY (idAuthor) REFERENCES Author(id),
    FOREIGN KEY (idBook) REFERENCES Book(id)
);

-- Table: Career
CREATE TABLE Career (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(64) NOT NULL
);

-- Table: Subject
CREATE TABLE Subject (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fkCareer INT NOT NULL,
    name VARCHAR(128) NOT NULL,
    semester TINYINT NOT NULL,
    FOREIGN KEY (fkCareer) REFERENCES Career(id)
);

-- Table: SubjectBook
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

-- Table: Theme
CREATE TABLE Theme (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(64) NOT NULL
);

-- Table: ThemeBook
CREATE TABLE ThemeBook (
    idBook INT NOT NULL,
    idTheme INT NOT NULL,
    PRIMARY KEY (idBook, idTheme),
    FOREIGN KEY (idBook) REFERENCES Book(id),
    FOREIGN KEY (idTheme) REFERENCES Theme(id)
);

-- Table: LinkSource
CREATE TABLE LinkSource (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idBook INT NOT NULL,
    linkSource VARCHAR(512) NOT NULL,
    FOREIGN KEY (idBook) REFERENCES Book(id)
);

-- Table: Editorial
CREATE TABLE Editorial (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(128) NOT NULL
);

-- Table: EditorialBook
CREATE TABLE EditorialBook (
    idBook INT NOT NULL,
    idEditorial INT NOT NULL,
    PRIMARY KEY (idBook, idEditorial),
    FOREIGN KEY (idBook) REFERENCES Book(id),
    FOREIGN KEY (idEditorial) REFERENCES Editorial(id)
);

-- Table: NroBib
CREATE TABLE NroBib (
    nroBib INT NOT NULL,
    copias SMALLINT NOT NULL,
    PRIMARY KEY (nroBib)
);

-- Table: NroBibBook
CREATE TABLE NroBibBook (
    idBook INT NOT NULL,
    nroBib INT NOT NULL,
    PRIMARY KEY (idBook, nroBib),
    FOREIGN KEY (idBook) REFERENCES Book(id),
    FOREIGN KEY (nroBib) REFERENCES NroBib(nroBib)
);

-- Table: Users
CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(64) UNIQUE NOT NULL,
    passwordHash VARCHAR(256) NOT NULL, -- Store hashed passwords, not plaintext
    role TINYINT NOT NULL
);

-- Table: SubjectUser
CREATE TABLE SubjectUser (
    idUser INT NOT NULL,
    idSubject INT NOT NULL,
    year SMALLINT,
    semester TINYINT,
    PRIMARY KEY (idUser, idSubject),
    FOREIGN KEY (idUser) REFERENCES Users(id),
    FOREIGN KEY (idSubject) REFERENCES Subject(id)
);
