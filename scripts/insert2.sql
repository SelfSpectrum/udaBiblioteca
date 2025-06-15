-- Insert Faculties, oh boi, do you imagine they create a new faculty? Me neither
INSERT INTO
    Faculty (Name)
VALUES
    ('Ingeniería'),
    ('Medicina'),
    ('Humanidades y Educación'),
    ('Tecnología'),
    ('Ciencias Jurídicas y Sociales'),
    ('Ciencias Naturales'),
    ('Ciencias de la Salud'),
    ('Sede Vallenar');

-- Insert Careers, this probabily won't change in a long tiem
INSERT INTO
    Career (idFaculty, name)
VALUES
    (2, 'Medicina'),
    (7, 'Enfermería'),
    (7, 'Kinesiología'),
    (7, 'Nutrición y Dietética'),
    (7, 'Obstetricia y Puericultura'),
    (
        3,
        'Licenciatura en Educación y Pedagogía en Educación General Básica'
    ),
    (
        3,
        'Licenciatura en Educación y Pedagogía en Educación Física'
    ),
    (
        3,
        'Licenciatura en Educación y Pedagogía en Inglés'
    ),
    (
        3,
        'Licenciatura en Educación y Pedagogía en Educación Parvularia'
    ),
    (3, 'Psicología'),
    (3, 'Traductología e Interprete Inglés-Español'),
    (4, 'Construcción Civil'),
    (1, 'Comercial'),
    (1, 'Geología'),
    (1, 'Industrial'),
    (1, 'Informática y Computación'),
    (1, 'Metalurgia'),
    (1, 'Minas'),
    (5, 'Derecho'),
    (5, 'Trabajo Social'),
    (
        4,
        'Técnico Universitario en Administración de Empresas'
    ),
    (8, 'Técnico Universitario Asistente de Geología'),
    (
        NULL,
        'Técnico Universitario en Energías Renovables y Eficiencia Energética'
    ),
    (
        8,
        'Técnico Universitario en Prevención de Riesgos'
    ),
    (
        4,
        'Técnico Universitario Auditor Contable y Tributario'
    ),
    (
        4,
        'Técnico Universitario en Automatización Industrial'
    ),
    (
        4,
        'Técnico Universitario en Mantención Mecánica de Equipos Industriales'
    ),
    (4, 'Técnico Universitario en Metalurgia'),
    (4, 'Técnico Universitario en Minas'),
    (4, 'Técnico Universitario en Electricidad'),
    (
        NULL,
        'Técnico Universitario en Asistencia Judicial'
    ),
    (
        8,
        'Técnico Universitario en Administración de Empresas'
    ),
    (
        8,
        'Técnico Universitario en Automatización Industrial'
    ),
    (8, 'Técnico Universitario en Metalurgia'),
    (8, 'Técnico Universitario en Minas'),
    (
        8,
        'Técnico Universitario en Mantención Mecánica de Equipos Industriales'
    );

-- Insert Admin and associated users to allow login
INSERT INTO
    Users (id, idFaculty, rut, username, passwordHash, role)
VALUES
    (
        1,
        1,
        0,
        'root',
        '$2b$10$vbpndZvLfkha3OokxZXJSePeHEDMnzCBUzagX7ff/FyPFBSYdhu7C',
        0
    ),
    (
        2,
        NULL,
        1,
        'admin',
        '$2b$10$GqHscCe39BShFggVZDe8B.FNc8KYdUvYRd9jHHHvCuPgLsUftXGiq',
        1
    ),
    (
        3,
        1,
        15871295,
        'Andrés Alfaro',
        '$2b$10$uvL9tkSFROnHMm1FGXuHKuPMljsc3LpmGY4Sd.t15vztAs7ds.daa',
        3
    ),
    (
        4,
        1,
        15886024,
        'Servando Campillay',
        '$2b$10$76iREZOmqqJf.fMszULzeez2Ighq810WptvqkzvLKWdUkZX6WGVja',
        4
    ),
    (
        5,
        1,
        12065689,
        'Vladimir Riffo',
        '$2b$10$zN4MaM5h7JL0QYh9epsV3eP9tSqyhjasoLGPB1ZTAaOFs7ea4GseC',
        4
    ),
    (
        6,
        1,
        13015354,
        'Héctor Córnide',
        '$2b$10$QEvrTQT93SmTRtZK6UmEmuOST2007NceoVmsFetMsA.zo7SOTttKO',
        4
    ),
    (
        7,
        1,
        8368745,
        'Manuel Monasterio',
        '$2b$10$TO4bL6ic/MCCFJS9SJVB1eV/RTI7nT4EVBk2wHoqsgFJX6fCpsmpG',
        4
    ),
    (
        8,
        1,
        9870893,
        'Wilson Castillo',
        '$2b$10$8xhtbMd0aiL1sGg.7pev0.uit2XJzZJ.5Tc8MKzj3s0YSPxbIKtDK',
        4
    ),
    (
        9,
        1,
        13178495,
        'Nahur Meléndez',
        '$2b$10$xqMns2IbGOLBhd7ldS6qF.6hqyb7SFozT9hb0IOd1GQjaBpvMMWTm',
        4
    ),
    (
        10,
        1,
        12939880,
        'Jacqueline Manríquez',
        '$2b$10$oDUoCQH76XUQwZWgieQFnO5HuVLZSqacp2dZNdWUXj7yN0ZoeUp7G',
        4
    ),
    (
        11,
        NULL,
        10198361,
        'Dante Carrizo',
        '$2b$10$/LjlpURkKSkuJb5x53MzWusXB22qRsZj94sZz66BJEcrbWZHDxdrC',
        2
    ),
    (
        13,
        6,
        13948010,
        'Diego Oyarzún',
        '$2b$10$hxWqAmn6GWk.I3m6/kJS2.kPbrz0wgkV/IJLI8gI.t69XIKtw/2/.',
        3
    );

INSERT INTO
    Subject (idCareer, name, semester)
VALUES
    (16, 'Matemática', 101), -- 1
    (16, 'Álgebra I', 101),
    (16, 'Introducción a las Ciencias', 101),
    (16, 'Introducción a la Especialidad', 101),
    (16, 'Programación y Algoritmo', 101),
    (16, 'Inglés I', 101),
    (16, 'Cálculo I', 102),
    (16, 'Álgebra II', 102),
    (16, 'Química General', 102),
    (16, 'Lenguajes de Programación I', 102), -- 10
    (16, 'Base de Datos', 102),
    (16, 'Inglés II', 102),
    (16, 'Cálculo II', 201),
    (16, 'Introducción a la Economía', 201),
    (16, 'Física I', 201),
    (16, 'Lenguajes de Programación II', 201),
    (16, 'Estructura de Datos', 201),
    (16, 'Ingles III', 201),
    (16, 'Tópico General I', 201),
    (16, 'Cálculo III', 202), -- 20
    (16, 'Dibujo de Ingeniería', 202),
    (16, 'Física II', 202),
    (16, 'Contabilidad y Finanzas', 202),
    (16, 'Herramientas de Desarrollo', 202),
    (16, 'Inglés IV', 202),
    (16, 'Termodinámica', 301),
    (16, 'Física III', 301),
    (
        16,
        'Ecuaciones Diferenciales y Álgebra Lineal',
        301
    ),
    (16, 'Sistemas de la Información I', 301),
    (16, 'Sistemas Digitales', 301), -- 30
    (16, 'Inglés V', 301),
    (16, 'Tópico General II', 301),
    (16, 'Métodos Numéricos', 302),
    (16, 'Estadística Aplicada', 302),
    (16, 'Resistencia de Materiales', 302),
    (16, 'Sistemas de la Información II', 302),
    (
        16,
        'Arquitectura de Sistemas Digitales de Control',
        302
    ),
    (16, 'Inglés VI', 302),
    (16, 'Mecánica de Fluidos', 401),
    (16, 'Investigación Operativa', 401), -- 40
    (16, 'Administración de Empresas', 401),
    (16, 'Inteligencia Artificial', 401),
    (16, 'Redes de Computadores', 401),
    (16, 'Creatividad e Innovación', 401),
    (16, 'Gestión Ambiental', 402),
    (16, 'Introducción a la Investigación', 402),
    (16, 'Ingeniería de Software I', 402),
    (16, 'Redes Industriales', 402),
    (16, 'Taller de Negocio Tecnológico', 402),
    (16, 'Formación Profesional I', 402), -- 50
    (16, 'Tecnologías de la Información', 501),
    (16, 'Robotica y Automática', 501),
    (16, 'Ingeniería de Software II', 501),
    (16, 'Taller de Conectividad', 501),
    (16, 'Administración de Servidores', 501),
    (16, 'Formación Profesional II', 501),
    (16, 'Práctica Profesional', 501),
    (16, 'Evaluación de Proyectos Informáticos', 502),
    (16, 'Inteligencia de Negocios', 502),
    (16, 'Proyecto de Software', 502), -- 60
    (16, 'Formación Profesional III', 502),
    (16, 'Gestión Informática', 502),
    (16, 'Formación Profesional IV', 502),
    (16, 'Seminario de Título', 601),
    (16, 'Formación Profesional V', 601),
    (16, 'Formación Profesional VI', 601),
    (16, 'Trabajo de Título', 602),
    (16, 'Formación Profesional VII', 602),
    (17, 'Taller de Formación Ciudadana', 101),
    (17, 'Cálculo I', 102),
    (17, 'Álgebra II', 102),
    (17, 'Física I', 102),
    (17, 'Química General y Orgánica', 102),
    (17, 'Geometalurgia', 102),
    (17, 'Cálculo II', 201),
    (17, 'Diseño de Ingeniería', 201),
    (17, 'Física II', 201),
    (17, 'Química Analítica', 201),
    (17, 'Termodinámica', 201),
    (17, 'Inglés I', 201),
    (17, 'Cálculo III', 202),
    (17, 'Mecánica de Fluidos', 202),
    (17, 'Preparación Mecánica de Minerales I', 202),
    (17, 'Físico-Química', 202),
    (17, 'Tópicos de Economía', 202),
    (17, 'Ecuaciones Diferenciales', 301),
    (17, 'Fenómenos de Transporte', 301),
    (17, 'Concentración de Minerales I', 301),
    (
        17,
        'Ciencias e Ingeniería de los Materiales',
        301
    ),
    (17, 'Administración de Empresas', 301),
    (17, 'Inglés II', 301),
    (17, 'Estadística Aplicada', 302),
    (17, 'Hidrometalurgia I', 302),
    (17, 'Administración y Control de Pérdidas', 302),
    (17, 'Introducción a la Programación', 302),
    (17, 'Pirometalurgia', 302),
    (17, 'Fundamentos de Metalurgia Física', 401),
    (17, 'Hidrometalurgia II', 401),
    (17, 'Concentración de Minerales II', 401),
    (17, 'Electrometalurgia I', 401),
    (17, 'Inglés III', 401),
    (17, 'Gestión Ambiental', 402),
    (17, 'Control Automático', 402),
    (17, 'Preparación Mecánica de Minerales II', 402),
    (17, 'Operación Plantas', 402),
    (17, 'Ingeniería Económica', 402),
    (17, 'Gestión de Empresas', 402),
    (
        17,
        'Tratamiento y Valorización de Residuos Metalúrgicos',
        501
    ),
    (17, 'Electrometalurgia II', 501),
    (17, 'Proyecto y Diseño de Plantas', 501),
    (17, 'Materiales para Metalurgia Extractiva', 501),
    (17, 'Inglés IV', 501),
    (17, 'Trabajo de Titulación', 502);

INSERT INTO
    Author (name)
VALUES
    ('Baldor J.A.'),
    ('Manuel Barahona'),
    ('Knight, H.'),
    ('Lehmann, C.H.'),
    ('Ayres, F.'),
    ('Protter, M.H.'),
    ('Swokowski, E.W.'),
    ('Serway, R.'),
    ('Laroze, L.'),
    ('Hewitt, P.'),
    ('Giancoli, D.'),
    ('Hein, M.'),
    ('Arena, S.'),
    ('Overby, J.'),
    ('Chang, R.'),
    ('Álvarez, R.'),
    ('Montes, A.'),
    ('Brown, T. L.'),
    ('Burdge, J. R.');

INSERT INTO
    Book (
        name,
        year,
        edition,
        isbn,
        issn,
        copies,
        obligatory
    )
VALUES
    ('Álgebra Elemental', 1968, 0, '', '', 12, 1);

INSERT INTO
    AuthorBook (idAuthor, idBook)
VALUES
    (1, 1);
