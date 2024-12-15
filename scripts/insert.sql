-- Insert Admin and associated users to allow login
INSERT INTO Users (username, passwordHash, role) VALUES (
	('root', '$2b$10$g2XXnVqwA9Y6uG5uPS/V8.yoN87JF631hfYtPfsVCTWTasK6Z0yAm', 0),
	('admin', '$2b$10$GqHscCe39BShFggVZDe8B.FNc8KYdUvYRd9jHHHvCuPgLsUftXGiq', 1),
	('andresalfaro', '$2b$10$uvL9tkSFROnHMm1FGXuHKuPMljsc3LpmGY4Sd.t15vztAs7ds.daa', 3),
	('servandocampillay', '$2b$10$76iREZOmqqJf.fMszULzeez2Ighq810WptvqkzvLKWdUkZX6WGVja', 4),
	('vladimirriffo', '$2b$10$zN4MaM5h7JL0QYh9epsV3eP9tSqyhjasoLGPB1ZTAaOFs7ea4GseC', 4),
	('rubenrojas', '$2b$10$8xhtbMd0aiL1sGg.7pev0.uit2XJzZJ.5Tc8MKzj3s0YSPxbIKtDK', 4),
	('manuelmonasterio', '$2b$10$TO4bL6ic/MCCFJS9SJVB1eV/RTI7nT4EVBk2wHoqsgFJX6fCpsmpG', 4),
	('marianopobletes', '$2b$10$QEvrTQT93SmTRtZK6UmEmuOST2007NceoVmsFetMsA.zo7SOTttKO', 3),
	('franciscotorres', '$2b$10$jAyfSLtwlkPQyvLa7nClXO.zcYoYrKcN1WsVei37cLD2IXUT6Fv0K', 3),
	('americocuchillo', '$2b$10$qTlvDU1ASyT47N.1yP8Er.0dI2gzroB40vPu9.o0cKe/7tHScb6ha', 4),
	('germancepeda', '$2b$10$jbBqH8jPtndoI.Ks2CnLmesDBPFUFjC6DON.hhIeN3thRzItIZC1e', 4),
	('guillermomachuca', '$2b$10$pGA9kjxsE5aYRxAp1nv5lu3YjGr3lwMJ94Rszayk8OeIsYiSjm.vy', 4),
	('nahurmelendez', '$2b$10$xqMns2IbGOLBhd7ldS6qF.6hqyb7SFozT9hb0IOd1GQjaBpvMMWTm', 4),
	('johncastro', '$2b$10$oDUoCQH76XUQwZWgieQFnO5HuVLZSqacp2dZNdWUXj7yN0ZoeUp7G', 4),
	('mariadiaz', '$2b$10$WAuOkkDPjZ.2/0h1elSKcOZCfzDY8yfFs9fppr0E3RZpwLTL0NZMu', 4),
	('dantecarrizo', '$2b$10$/LjlpURkKSkuJb5x53MzWusXB22qRsZj94sZz66BJEcrbWZHDxdrC', 2),
	('luisespejo', '$2b$10$6aASd4WXrKHUR4wnGTaWj.vO3o98Sm.qJPI6IpyZqU.IRdgrBtGRW', 4)
);

-- Insert Careers, this probabily won't change in a long tiem
INSERT INTO Career (name) VALUES (
	('Medicina'),
	('Enfermería'),
	('Kinesiología'),
	('Nutrición y Dietética'),
	('Obstetricia y Puericultura'),
	('Licenciatura en Educación y Pedagogía en Educación General Básica'),
	('Licenciatura en Educación y Pedagogía en Educación Física'),
	('Licenciatura en Educación y Pedagogía en Inglés'),
	('Licenciatura en Educación y Pedagogía en Educación Parvularia'),
	('Psicología'),
	('Traductología e Interprete Inglés-Español'),
	('Construcción Civil'),
	('Comercial'),
	('Geología'),
	('Industrial'),
	('Informática y Computación'),
	('Metalurgia'),
	('Minas'),
	('Derecho'),
	('Trabajo Social'),
	('Técnico Universitario en Administración de Empresas'),
	('Técnico Universitario Asistente de Geología'),
	('Técnico Universitario en Energías Renovables y Eficiencia Energética'),
	('Técnico Universitario en Prevención de Riesgos'),
	('Técnico Universitario Auditor Contable y Tributario'),
	('Técnico Universitario en Automatización Industrial'),
	('Técnico Universitario en Mantención Mecánica de Equipos Industriales'),
	('Técnico Universitario en Metalurgia'),
	('Técnico Universitario en Minas'),
	('Técnico Universitario en Electricidad'),
	('Técnico Universitario en Asistencia Judicial')
);

-- Insert Departments, again this probabily won't really change
INSERT INTO Department (name) VALUES (
	('Minas'),
	('Metalurgia'),
	('Computación e Informática'),
	('Geología'),
	('Industria y Negocios'),
	('Comercial'),
	('Matemáticas'),
	('Medicina'),
	('Educación Básica'),
	('Educación Física'),
	('Educación Parvularia'),
	('Idiomas'),
	('Psicología'),
	('Construcción Civil'),
	('Administración y Gestión'),
	('Minería'),
	('Energía'),
	('Ingenierías en Ejecución'),
	('Ciencias Jurídicas'),
	('Trabajo Social'),
	('Física'),
	('Química y Biología'),
	('Enfermería'),
	('Kinesiología'),
	('Obstetricia y Puericultura'),
	('Nutrición y Dietética')
);

-- Insert Faculties, oh boi, do you imagine they create a new faculty? Me neither
INSERT INTO Faculty (Name) VALUES (
	('Ingeniería'),
	('Medicina'),
	('Humanidades y Educación'),
	('Tecnología'),
	('Ciencias Jurídicas y Sociales'),
	('Ciencias Naturales'),
	('Ciencias de la Salud'),
	('Sede Vallenar')
);

-- Insert relationship between faculties and departments
INSERT INTO FacultyDepartment (idFaculty, idDepartment) VALUES (
	(1, 1), -- Minas
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6),
	(1, 7), -- Matemáticas
	(2, 8), -- Medicina
	(3, 9), -- Básica
	(3, 10),
	(3, 11),
	(3, 12),
	(3, 13), -- Psicología
	(4, 14), -- Construcción
	(4, 15),
	(4, 16),
	(4, 17),
	(4, 18), -- Ing
	(5, 19), -- Juridicas
	(5, 20), -- Trabajo
	(6, 21), -- Física
	(6, 22), -- Química
	(7, 23), -- Enfermería
	(7, 24),
	(7, 25),
	(7, 26), -- Nutrición
);
