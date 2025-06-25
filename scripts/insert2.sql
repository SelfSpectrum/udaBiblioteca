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
    Subject (id, idCareer, name, semester)
VALUES
    (1, 16, 'Matemática', 101),
    (2, 16, 'Álgebra I', 101),
    (3, 16, 'Introducción a las Ciencias', 101), (4, 16, 'Introducción a la Especialidad', 101), (5, 16, 'Programación y Algoritmo', 101), (6, 16, 'Inglés I', 101), (7, 16, 'Cálculo I', 102), (8, 16, 'Álgebra II', 102), (9, 16, 'Química General', 102), (10, 16, 'Lenguajes de Programación I', 102), (11, 16, 'Base de Datos', 102), (12, 16, 'Inglés II', 102), (13, 16, 'Cálculo II', 201), (14, 16, 'Introducción a la Economía', 201), (15, 16, 'Física I', 201), (16, 16, 'Lenguajes de Programación II', 201), (17, 16, 'Estructura de Datos', 201), (18, 16, 'Ingles III', 201), (19, 16, 'Tópico General I', 201), (20, 16, 'Cálculo III', 202), (21, 16, 'Dibujo de Ingeniería', 202), (22, 16, 'Física II', 202), (23, 16, 'Contabilidad y Finanzas', 202), (24, 16, 'Herramientas de Desarrollo', 202), (25, 16, 'Inglés IV', 202), (26, 16, 'Termodinámica', 301), (27, 16, 'Física III', 301), (28, 16, 'Ecuaciones Diferenciales y Álgebra Lineal', 301), (29, 16, 'Sistemas de la Información I', 301), (30, 16, 'Sistemas Digitales', 301), (31, 16, 'Inglés V', 301), (32, 16, 'Tópico General II', 301), (33, 16, 'Métodos Numéricos', 302), (34, 16, 'Estadística Aplicada', 302), (35, 16, 'Resistencia de Materiales', 302), (36, 16, 'Sistemas de la Información II', 302), (37, 16, 'Arquitectura de Sistemas Digitales de Control', 302), (38, 16, 'Inglés VI', 302), (39, 16, 'Mecánica de Fluidos', 401), (40, 16, 'Investigación Operativa', 401), (41, 16, 'Administración de Empresas', 401), (42, 16, 'Inteligencia Artificial', 401), (43, 16, 'Redes de Computadores', 401), (44, 16, 'Creatividad e Innovación', 401), (45, 16, 'Gestión Ambiental', 402), (46, 16, 'Introducción a la Investigación', 402), (47, 16, 'Ingeniería de Software I', 402), (48, 16, 'Redes Industriales', 402), (49, 16, 'Taller de Negocio Tecnológico', 402), (50, 16, 'Formación Profesional I', 402), (51, 16, 'Tecnologías de la Información', 501), (52, 16, 'Robotica y Automática', 501), (53, 16, 'Ingeniería de Software II', 501), (54, 16, 'Taller de Conectividad', 501), (55, 16, 'Administración de Servidores', 501), (56, 16, 'Formación Profesional II', 501), (57, 16, 'Práctica Profesional', 501), (58, 16, 'Evaluación de Proyectos Informáticos', 502), (59, 16, 'Inteligencia de Negocios', 502), (60, 16, 'Proyecto de Software', 502), (61, 16, 'Formación Profesional III', 502), (62, 16, 'Gestión Informática', 502), (63, 16, 'Formación Profesional IV', 502), (64, 16, 'Seminario de Título', 601), (65, 16, 'Formación Profesional V', 601), (66, 16, 'Formación Profesional VI', 601), (67, 16, 'Trabajo de Título', 602), (68, 16, 'Formación Profesional VII', 602), (69, 17, 'Taller de Formación Ciudadana', 101), (70, 17, 'Cálculo I', 102), (71, 17, 'Álgebra II', 102), (72, 17, 'Física I', 102), (73, 17, 'Química General y Orgánica', 102), (74, 17, 'Geometalurgia', 102), (75, 17, 'Cálculo II', 201), (76, 17, 'Diseño de Ingeniería', 201), (77, 17, 'Física II', 201), (78, 17, 'Química Analítica', 201), (79, 17, 'Termodinámica', 201), (80, 17, 'Inglés I', 201), (81, 17, 'Cálculo III', 202), (82, 17, 'Mecánica de Fluidos', 202), (83, 17, 'Preparación Mecánica de Minerales I', 202), (84, 17, 'Físico-Química', 202), (85, 17, 'Tópicos de Economía', 202), (86, 17, 'Ecuaciones Diferenciales', 301), (87, 17, 'Fenómenos de Transporte', 301), (88, 17, 'Concentración de Minerales I', 301), (89, 17, 'Ciencias e Ingeniería de los Materiales', 301), (90, 17, 'Administración de Empresas', 301), (91, 17, 'Inglés II', 301), (92, 17, 'Estadística Aplicada', 302), (93, 17, 'Hidrometalurgia I', 302), (94, 17, 'Administración y Control de Pérdidas', 302), (95, 17, 'Introducción a la Programación', 302), (96, 17, 'Pirometalurgia', 302), (97, 17, 'Fundamentos de Metalurgia Física', 401), (98, 17, 'Hidrometalurgia II', 401), (99, 17, 'Concentración de Minerales II', 401), (100, 17, 'Electrometalurgia I', 401), (101, 17, 'Inglés III', 401), (102, 17, 'Gestión Ambiental', 402), (103, 17, 'Control Automático', 402), (104, 17, 'Preparación Mecánica de Minerales II', 402), (105, 17, 'Operación Plantas', 402), (106, 17, 'Ingeniería Económica', 402), (107, 17, 'Gestión de Empresas', 402), (108, 17, 'Tratamiento y Valorización de Residuos Metalúrgicos', 501), (109, 17, 'Electrometalurgia II', 501), (110, 17, 'Proyecto y Diseño de Plantas', 501), (111, 17, 'Materiales para Metalurgia Extractiva', 501), (112, 17, 'Inglés IV', 501), (113, 17, 'Trabajo de Titulación', 502), (114, 17, 'Matemáticas', 101), (115, 17, 'Álgebra I', 101), (116, 17, 'Introducción a la Física', 101), (117, 17, 'Fundamentos de la Química', 101), (118, 17, 'Introducción a la Metalurgia', 101);

INSERT INTO
    Author (id, name)
VALUES
    (1, 'Baldor J.A.'),
    (2, 'Manuel Barahona'),
    (3, 'Knight, H.'),
    (4, 'Lehmann, C.H.'),
    (5, 'Ayres, F.'),
    (6, 'Protter, M.H.'),
    (7, 'Swokowski, E.W.'),
    (8, 'Serway, R.'),
    (9, 'Laroze, L.'),
    (10, 'Hewitt, P.'),
    (11, 'Giancoli, D.'),
    (12, 'Hein, M.'),
    (13, 'Arena, S.'),
    (14, 'Overby, J.'),
    (15, 'Chang, R.'),
    (16, 'Álvarez, R.'),
    (17, 'Montes, A.'),
    (18, 'Brown, T. L.'),
    (19, 'Burdge, J. R.'),
    (20, 'Cole, J. A.'),
    (21, 'Bursten, B. E.'),
    (22, 'LeMay, H. E.'),
    (23, 'Escalona y García, H.'),
    (24, 'Goldsby, K. A.'),
    (25, 'Hernández Paola, M.'),
    (26, 'Petrucci, R. H.'),
    (27, 'Harwood, W. S.'),
    (28, 'Herring, F. G.'),
    (29, 'Pardo, C.'),
    (30, 'Consejo Minero'),
    (31, 'Wills, B. A.'),
    (32, 'Biswas, A.'),
    (33, 'Davenport, W.'),
    (34, 'Pacheco, M.'),
    (35, 'Urra, J.'),
    (36, 'Hendel, L.'),
    (37, 'Aldunate, E.'),
    (38, 'Subsecretaría de Educación Superior'),
    (39, 'Brito, S.'),
    (40, 'Basualto Porra, L.'),
    (41, 'Reyes Ochoa, L.'),
    (42, 'Leithold, L.'),
    (43, 'Larson, R. E.'),
    (44, 'Thomas, G. B.'),
    (45, 'Stewart, J.'),
    (46, 'Spiegel, M. R.'),
    (47, 'Nakos, G.'),
    (48, 'Lay, D. C.'),
    (49, 'Lay, S. R.'),
    (50, 'McDonald, J. J.'),
    (51, 'Grossman, S. I.'),
    (52, 'García Jaimes, O.'),
    (53, 'Vera de Payer, E.'),
    (54, 'Sears, Z.'),
    (55, 'Young, F.'),
    (56, 'Serway, J.'),
    (57, 'Resnick, R.'),
    (58, 'Halliday, D.'),
    (59, 'Krane, K. S.'),
    (60, 'Alonso, M.'),
    (61, 'Finn, E. J.'),
    (62, 'Timberlake K. C.'),
    (63, 'Gómez, A.'),
    (64, 'Herranz, R.'),
    (65, 'Rodríguez, M. A.'),
    (66, 'Martínez, R.'),
    (67, 'Hurlbut, C.'),
    (68, 'Dana, E.'),
    (69, 'Ford, W.'),
    (70, 'Heinrich, E.'),
    (71, 'Susaeta, J.');

INSERT INTO
    Book (id, name, year, edition, copies)
VALUES
    (1, 'Álgebra Elemental', 1968, 0, 12),
    (2, 'Apuntes', 0, 0, 1), (3, 'Trigonometría Elemental', 1961, 0, 1), (4, 'Geometría Analítica', 1984, 0, 19), (5, 'Teoría y problemas de trigonometría plana y esférica', 1970, 0, 22), (6, 'Cálculo y Geometría Analítica', 1980, 0, 9), (7, 'Cálculo con Geometría Analítica', 1989, 0, 4), (8, 'Trigonometría', 2001, 0, 1), (9, 'Fundamentos de física. Volumen 1', 2017, 9, 2), (10, 'Conceptos y Magnitudes en Física', 2016, 0, 1), (11, 'Física Conceptual', 2007, 10, 1), (12, 'Física, Principios con Aplicaciones. Volumen 1', 2006, 6, 0), (13, 'Fundamentos de Química', 2005, 11, 9), (14, 'Química', 2020, 13, 5), (15, 'Química: La Ciencia Central', 2004, 9, 292), (16, 'Química', 2017, 12, 49), (17, 'Química General', 2003, 8, 22), (18, 'Cifras Actualizada de la Minería', 0, 0, 0), (19, 'Tecnología de procesamiento de minerales: tratamiento de menas y recuperación de minerales', 1987, 0, 2), (20, 'Extractive metallurgy of copper', 1980, 0, 2), (21, 'Declaración universal de los Derechos Humanos', 1991, 0, 1), (22, 'La huella del dolor: Estrategias de prevención y afrontamiento de la violencia de género', 2021, 0, 1), (23, 'Violencias de Género: Las mentiras del Patriarcado', 2017, 0, 1), (24, 'Derechos fundamentales', 2008, 0, 8), (25, 'Ley 21.369 de 2022', 2021, 1, 1), (26, 'Ley 20.129 de 2006', 2006, 1, 1), (27, 'Orientaciones para los procesos de implementación de políticas integrales que abordan acoso sexual, violencia y discriminación de género en Educación Superior. Desafíos para la igualdad de género y la no discriminación a partir de la Ley N°21.369', 2022, 0, 1), (28, 'La inclusión social/educativa, en clave de la educación superior', 2019, 0, 1), (29, 'El cálculo', 1999, 0, 306), (30, 'Cálculo. Tomo 1', 2000, 6, 2), (31, 'Cálculo Una Variable', 2006, 0, 0), (32, 'Cálculo: Conceptos y contextos', 2000, 0, 0), (33, 'Matemáticas Avanzadas Para Ingeniería y Ciencias', 2001, 0, 32), (34, 'Álgebra lineal con aplicaciones', 1999, 0, 0), (35, 'Linear algebra and its applications, Global edition', 2022, 6, 0), (36, 'Applications F/Elem Linear Algebra', 1998, 0, 0), (37, 'Álgebra lineal', 2012, 0, 0), (38, 'Álgebra Lineal Teoría, práctica y aplicaciones', 2021, 0, 0), (39, 'Física universitaria con física moderna. Tomo 1', 2013, 13, 25), (40, 'Física para ciencias e ingeniería', 2018, 10, 4), (41, 'Física, Volumen 2', 2002, 0, 120), (42, 'Física. Tomo 1: Mecánica', 1970, 0, 120), (43, 'Física. Tomo 2: Campos y ondas', 1970, 0, 120), (44, 'Química: Una introducción a la Química General, Orgánica y Biológica', 2011, 10, 10), (45, 'Manual de Mineralogía de Dana', 1974, 0, 29), (46, 'Tratado de Mineralogía', 1971, 0, 0), (47, 'Microscopía Óptica', 1960, 0, 0), (48, 'La Gran Enciclopedia de los Minerales', 1989, 0, 1), (49, 'El Cálculo', 1998, 7, 32), (50, 'Cálculo I. Volumen 1', 2006, 0, 1), (51, 'Fundamento de dibujo de ingeniería', 1975, 0, 1), (52, 'Dibujo y diseño de ingeniería', 1997, 11, 2), (53, 'Física universitaria con física moderna. Tomo 2', 2013, 13, 25), (54, 'Electromagnetismo', 2015, 0, 1), (55, 'Fundamentos de Química Analítica', 2014, 9, 22), (56, 'Principios de Análisis Instrumental', 2000, 5, 0), (57, 'Análisis Químico Cuantitativo', 2007, 2, 5), (58, 'Química Analítica Cualitativa', 2008, 18, 0), (59, 'Termodinámica', 2012, 7, 0), (60, 'Fundamentos de Termodinámica Técnica', 2005, 2, 2), (61, 'Curso de Termodinámica', 2001, 0, 63), (62, 'Introduction to Metallurgical Thermodynamics', 1981, 0, 16), (63, 'Físico-química', 1998, 3, 29), (64, 'Smart Choice Starter', 2016, 3, 3), (65, 'Diccionario Cambridge Pocket', 2016, 10, 20), (66, 'English Pronunciation in Use Elementary', 2007, 0, 15), (67, 'Touchstone 1', 2014, 2, 1), (68, 'English Grammar in Use Elementary', 2015, 0, 19), (69, 'Cálculo Vectorial', 1995, 0, 1), (70, 'Cálculo multivariable', 2000, 0, 0), (71, 'Mecánica de Fluidos. Fundamentos y Aplicaciones', 2012, 2, 0), (72, 'Mecánica de Fluidos Aplicada', 1996, 0, 48), (73, 'Fundamentos de Mecánica de Fluidos', 2004, 0, 8), (74, 'Mecánica de Fluidos', 2004, 3, 7), (75, 'Dimensionamiento y optimización de plantas concentradoras mediante técnicas de modelación matemática', 1986, 0, 4), (76, 'Diseño y simulación de circuitos de molienda y clasificación', 1994, 0, 4), (77, 'Conocimientos básicos en el procesamiento de minerales', 0, 0, 0), (78, 'Introduction to Thermodynamics of Materials', 1981, 3, 0), (79, 'Ingeniería de las Reacciones Químicas', 1998, 0, 3), (80, 'Atlas of Electrochemical Equilibria in Aqueous Solutions', 1974, 0, 6), (81, 'Principios de economía', 2005, 0, 9), (82, 'Macroeconomía en la economía global', 2002, 0, 11), (83, 'Teoría microeconómica: Principios básicos y ampliaciones', 2015, 0, 11), (84, 'Principios de economía', 2003, 0, 8), (85, 'Ecuaciones Diferenciales', 2004, 0, 0), (86, 'Ecuaciones Diferenciales con Aplicaciones de modelado', 1988, 0, 1), (87, 'Teoría y Aplicaciones de Ecuaciones Diferenciales', 1970, 0, 42), (88, 'Transport Phenomena', 2007, 2, 4), (89, 'Transferencia de Calor y Masa. Un Enfoque Práctico', 2017, 0, 0), (90, 'Fundamentals of Momentum, Heat and Mass Transfer', 2001, 4, 0), (91, 'Transport phenomena in metallurgy', 1973, 0, 32), (92, 'Mecánica de Fluidos. Fundamentos y Aplicaciones', 2006, 0, 0), (93, 'Tecnología de Procesamiento de Minerales', 1987, 0, 2), (94, 'Introduction to Mineral Processing', 1982, 0, 1), (95, 'Flotation', 1992, 0, 1), (96, 'Flotation. In: SME Mineral Processing Handbook, Volumen 1', 1985, 0, 2), (97, 'Espessamento e Filtragem', 2004, 0, 0), (98, 'Froth flotation, Fundamental principles', 2011, 0, 0), (99, 'Anionic Flotation of Oxides and Silicates. In: FLOTATION, A.M. Gaudin Memorial Volume, Volumen 1.', 1976, 0, 0), (100, 'Optimizing the Design of Flotation Circuits', 1980, 0, 0), (101, 'Ciencia e ingeniería de materiales', 2017, 7, 31), (102, 'Ciencia e Ingeniería de los Materiales', 2016, 2, 0), (103, 'Mecánica de Materiales', 2011, 8, 6), (104, 'Mecánica de Materiales', 2016, 8, 4), (105, 'Mecánica Vectorial para Ingenieros: Estática', 2016, 11, 2), (106, 'Fundamentos de la ciencia e ingeniería de materiales', 2014, 2, 15), (107, 'Introducción a la Ciencia de Materiales Para Ingenieros', 2010, 0, 6), (108, 'Administración', 2005, 0, 13), (109, 'Administración: Un enfoque basado en competencias', 2009, 0, 3), (110, 'Administración: Una perspectiva global y empresarial', 2008, 0, 4), (111, 'Smart Choice 1', 2016, 3, 3), (112, 'An Introduction to Transport Phenomena in Materials Engineering', 1992, 0, 0);

INSERT INTO
    AuthorBook (idAuthor, idBook)
VALUES
    (1, 1),
    (2, 2), (3, 3), (4, 4), (5, 5), (5, 87), (6, 6), (7, 7), (7, 8), (8, 9), (9, 10), (10, 11), (11, 12), (12, 13), (13, 13), (14, 14), (15, 14), (15, 16), (16, 14), (17, 14), (18, 15), (19, 15), (20, 8), (21, 15), (22, 15), (23, 15), (24, 16), (25, 16), (26, 17), (27, 17), (28, 17), (29, 17), (30, 18), (31, 19), (32, 20), (33, 20), (34, 21), (35, 22), (36, 23), (37, 24), (38, 27), (39, 28), (40, 28), (41, 28), (42, 29), (42, 49), (43, 30), (43, 50), (44, 31), (45, 32), (45, 70), (46, 33), (47, 34), (48, 35), (49, 35), (50, 35), (51, 36), (52, 37), (53, 38), (54, 39), (55, 39), (56, 40), (57, 41), (58, 41), (59, 41), (60, 42), (60, 43), (61, 42), (61, 43), (62, 44), (63, 44), (64, 44), (65, 44), (66, 44), (67, 45), (68, 46), (69, 46), (70, 47), (71, 48), (72, 50), (73, 50), (74, 51), (75, 51), (75, 52), (76, 52), (77, 53), (78, 53), (79, 53), (80, 53), (81, 54), (82, 55), (82, 56), (83, 55), (84, 55), (84, 56), (85, 55), (86, 56), (87, 57), (88, 58), (89, 58), (90, 58), (91, 58), (92, 59), (92, 71), (93, 60), (94, 61), (95, 62), (95, 78), (95, 112), (96, 63), (97, 64), (97, 111), (98, 64), (98, 111), (99, 65), (100, 66), (101, 67), (102, 67), (103, 67), (104, 68), (105, 69), (106, 72), (107, 73), (108, 74), (109, 75), (110, 75), (111, 76), (112, 76), (113, 77), (114, 79), (115, 80), (116, 81), (117, 82), (118, 83), (119, 83), (120, 84), (121, 85), (122, 85), (123, 85), (124, 86), (125, 88), (126, 88), (127, 88), (128, 89), (128, 92), (129, 90), (130, 90), (131, 90), (132, 90), (133, 91), (134, 91), (135, 92), (136, 93), (137, 94), (138, 94), (139, 95), (140, 96), (141, 96), (142, 96), (143, 96), (144, 96), (145, 96), (146, 96), (147, 97), (148, 97), (149, 97), (150, 98), (151, 99), (152, 99), (153, 100), (154, 100), (155, 100), (156, 101), (157, 102), (158, 102), (159, 103), (160, 104), (161, 104), (162, 105), (163, 105), (164, 105), (165, 106), (166, 107), (167, 108), (168, 108), (169, 109), (170, 109), (171, 109), (172, 110), (173, 110), (174, 110);

INSERT INTO
    LinkSource (id, idBook, linkSource)
VALUES
    (1, 27, 'https://educacionsuperior.mineduc.cl/wp-content/uploads/sites/49/2022/09/220926-Orientaciones-VF.pdf'),
    (5, 28, 'https://www.scielo.cl/pdf/rlei/v13n2/0718-7378-rlei-13-02-157.pdf'), (6, 26, 'https://www.bcn.cl/leychile/navegar?idNorma=255323&idParte=8721503'), (7, 25, 'https://www.bcn.cl/leychile/navegar?i=1165023&f=2021-09-15'), (8, 77, 'https://www.metso.com/insights/e-books/basics-in-minerals-processing-handbook/');

INSERT INTO
    SubjectBook (idBook, idSubject, year, semester, obligatory)
VALUES
    (1, 114, 2025, 1, 1),
    (2, 114, 2025, 1, 0), (3, 115, 2025, 1, 1), (4, 115, 2025, 1, 1), (5, 115, 2025, 1, 1), (6, 115, 2025, 1, 0), (7, 115, 2025, 1, 0), (8, 115, 2025, 1, 0), (9, 116, 2025, 1, 1), (10, 116, 2025, 1, 1), (11, 116, 2025, 1, 0), (12, 116, 2025, 1, 0), (13, 117, 2025, 1, 1), (14, 117, 2025, 1, 1), (15, 117, 2025, 1, 1), (16, 117, 2025, 1, 0), (17, 117, 2025, 1, 0), (18, 118, 2025, 1, 1), (19, 118, 2025, 1, 1), (20, 118, 2025, 1, 0), (21, 69, 2025, 1, 1), (22, 69, 2025, 1, 1), (23, 69, 2025, 1, 1), (24, 69, 2025, 1, 0), (25, 69, 2025, 1, 0), (26, 69, 2025, 1, 0), (27, 69, 2025, 1, 0), (28, 69, 2025, 1, 0);
