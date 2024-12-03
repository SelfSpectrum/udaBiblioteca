-- Table: Author
CREATE TABLE Author (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name CHAR(128) NOT NULL
);

-- Table: AuthorBook
CREATE TABLE AuthorBook (
    idAuthor INT NOT NULL,
    idBook INT NOT NULL,
    PRIMARY KEY (idAuthor, idBook),
    FOREIGN KEY (idAuthor) REFERENCES Author(id),
    FOREIGN KEY (idBook) REFERENCES Book(id)
);

-- Table: Book
CREATE TABLE Book (
    id INT AUTO_INCREMENT UNIQUE PRIMARY KEY,
    name CHAR(256) NOT NULL,
    year INT,
    edition INT,
    isbn CHAR(13) UNIQUE,
    issn CHAR(8) UNIQUE
);

-- Table: Career
CREATE TABLE Career (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name CHAR(64) NOT NULL
);

-- Table: Subject
CREATE TABLE Subject (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fkCareer INT NOT NULL,
    name CHAR(128) NOT NULL,
    semester INT NOT NULL,
    FOREIGN KEY (fkCareer) REFERENCES Career(id)
);

-- Table: SubjectBook
CREATE TABLE SubjectBook (
    idBook INT NOT NULL,
    idSubject INT NOT NULL,
    year SMALLINT,
    obligatory BOOLEAN,
    PRIMARY KEY (idBook, idSubject),
    FOREIGN KEY (idBook) REFERENCES Book(id),
    FOREIGN KEY (idSubject) REFERENCES Subject(id)
);

-- Table: Theme
CREATE TABLE Theme (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name CHAR(64) NOT NULL
);

-- Table: ThemeBook
CREATE TABLE ThemeBook (
    idBook INT NOT NULL,
    idTheme INT NOT NULL,
    PRIMARY KEY (idBook, idTheme),
    FOREIGN KEY (idBook) REFERENCES Book(id),
    FOREIGN KEY (idTheme) REFERENCES Theme(id)
);

-- Table: Link
CREATE TABLE Link (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idBook INT NOT NULL,
    link CHAR(512) NOT NULL,
    FOREIGN KEY (idBook) REFERENCES Book(id)
);

-- Table: Editorial
CREATE TABLE Editorial (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name CHAR(128) NOT NULL
);

-- Table: EditorialBook
CREATE TABLE EditorialBook (
    idBook INT NOT NULL,
    idEditorial INT NOT NULL,
    PRIMARY KEY (idBook, idEditorial),
    FOREIGN KEY (idBook) REFERENCES Book(id),
    FOREIGN KEY (idEditorial) REFERENCES Editorial(id)
);

-- Table: NumBib
CREATE TABLE NumBib (
    idBook INT NOT NULL,
    nroBib INT NOT NULL,
    copias INT NOT NULL,
    PRIMARY KEY (idBook, nroBib),
    FOREIGN KEY (idBook) REFERENCES Book(id)
);

-- Table: Users
CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(64) UNIQUE NOT NULL,
    password_hash VARCHAR(256) NOT NULL, -- Store hashed passwords, not plaintext
    role ENUM('super', 'high', 'low') NOT NULL
);

