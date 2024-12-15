-- Insert Admin and associated users to allow login
INSERT INTO Users (username, passwordHash, role) VALUES (
	('root', '$2b$10$g2XXnVqwA9Y6uG5uPS/V8.yoN87JF631hfYtPfsVCTWTasK6Z0yAm', 0),
	('admin', '$2b$10$GqHscCe39BShFggVZDe8B.FNc8KYdUvYRd9jHHHvCuPgLsUftXGiq', 1),
	('andresalfaro', '$2b$10$uvL9tkSFROnHMm1FGXuHKuPMljsc3LpmGY4Sd.t15vztAs7ds.daa', 2),
	('servandocampillay', '$2b$10$76iREZOmqqJf.fMszULzeez2Ighq810WptvqkzvLKWdUkZX6WGVja', 3),
	('vladimirriffo', '$2b$10$zN4MaM5h7JL0QYh9epsV3eP9tSqyhjasoLGPB1ZTAaOFs7ea4GseC', 3),
	('rubenrojas', '$2b$10$8xhtbMd0aiL1sGg.7pev0.uit2XJzZJ.5Tc8MKzj3s0YSPxbIKtDK', 3),
	('manuelmonasterio', '$2b$10$TO4bL6ic/MCCFJS9SJVB1eV/RTI7nT4EVBk2wHoqsgFJX6fCpsmpG', 3),
	('marianopobletes', '$2b$10$QEvrTQT93SmTRtZK6UmEmuOST2007NceoVmsFetMsA.zo7SOTttKO', 2),
	('franciscotorres', '$2b$10$jAyfSLtwlkPQyvLa7nClXO.zcYoYrKcN1WsVei37cLD2IXUT6Fv0K', 2),
	('americocuchillo', '$2b$10$qTlvDU1ASyT47N.1yP8Er.0dI2gzroB40vPu9.o0cKe/7tHScb6ha', 3),
	('germancepeda', '$2b$10$jbBqH8jPtndoI.Ks2CnLmesDBPFUFjC6DON.hhIeN3thRzItIZC1e', 3),
	('guillermomachuca', '$2b$10$pGA9kjxsE5aYRxAp1nv5lu3YjGr3lwMJ94Rszayk8OeIsYiSjm.vy', 3),
	('nahurmelendez', '$2b$10$xqMns2IbGOLBhd7ldS6qF.6hqyb7SFozT9hb0IOd1GQjaBpvMMWTm', 3),
	('johncastro', '$2b$10$oDUoCQH76XUQwZWgieQFnO5HuVLZSqacp2dZNdWUXj7yN0ZoeUp7G', 3),
	('mariadiaz', '$2b$10$WAuOkkDPjZ.2/0h1elSKcOZCfzDY8yfFs9fppr0E3RZpwLTL0NZMu', 3),
	('dantecarrizo', '$2b$10$/LjlpURkKSkuJb5x53MzWusXB22qRsZj94sZz66BJEcrbWZHDxdrC', 3),
	('luisespejo', '$2b$10$6aASd4WXrKHUR4wnGTaWj.vO3o98Sm.qJPI6IpyZqU.IRdgrBtGRW', 3)
);

-- Insert Careers
INSERT INTO Career (name) VALUES (
	('Medicina'),
	('Enfermería'),
	('Kinesiología'),
	('Nutrición'),
	('Obstetricia'),
	('Educación Básica'),
	('Educación Física'),
	('Inglés'),
	('Parvularia'),
	('Psicología'),
	('Traductología'),
	('Ingeniería Comercial'),
	('Ingeniería en Geología'),
	('Ingeniería Industrial'),
	('Ingeniería Informática'),
	('Ingeniería en Metalurgia'),
	('Ingeniería en Minas'),
	('Derecho'),
	('Trabajo Social'),
	('Administración de Empresas'),
);
