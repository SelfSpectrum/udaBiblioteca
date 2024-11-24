# Reestructuración del sistema de bibliotecas para bibliografías

Para empezar a trabajar, recordar que el elemento clave para que funcionen las partes automatizadas es un script de shell para Bash, por lo que se recomienda el uso de linux para mayor confort. Escribe para empezar:

```sh
./exportar -h
```

## Progreso en la migración de los datos de Biblioteca

### E1: Migración de XLSX a CSV
Este primer paso implicaba encontrar la manera de exportar cada uno de las bases de datos desarrolladas en excel y exportar cada una de las páginas a un formato cómodo de trabajar a través de scripting y otros métodos, para permitir automatización y facilidad para trabajar con los datos en bruto. Este proceso tomó aproximadamente una semana y media, pero finalmente fue posible exportar de manera masiva con scripting de shell (en bash, ya que trabajo principalmente en linux y es muy flexible).

- [X] Facmed		1/1
	- 100.0%
- [X] Facsal		4/4
	- 100.0%
- [X] Básica		6/6
	- 100.0%
- [X] Ingeniería	6/6
	- 100.0%
- [X] Juridicas		2/2
	- 100.0%
- [X] Técnicos		10/10
	- 100.0%
- [X] Vallenar		8/8
	- 100.0%
- [X] Total		37/37
	- 100.0%

### TL 1: Estandarización de los datos formato de 8 columnas
Para este paso, se priorizó el exportar los datos relacionados a libros físicos antes que otros recursos, por ello mismo, bibliografías que estuvieran en páginas tales como *Libros* o *Detalle de Libros* han sido prioritarios y es con lo que se exportará y estadarizará. Bibliografías en páginas tales como *Otros Recursos* o páginas sin nombre, quedarán a la espera. 

- [X] Facmed		1166/1166 (1166)
	- 100.0%
- [X] Facsal		830/830 (246 + 181 + 189 + 241)
	- 100.0%
- [X] Humanidades	2031/2031 (322 + 151 + 366 + 517 + 391 + 284)
	- 100.0%
- [X] Ingeniería	1877/1877 (156 + 438 + 367 + 244 + 294 + 378)
	- 100.0%
- [X] Juridicas		571/571 (289 + 282)
	- 100.0%
- [ ] Técnicos		749/927 (100 + 129 + 92 + 75 + 148 + 92 + 121 + 86 + 84)
	- 90.80%
- [ ] Vallenar		508/797 (100 + 128 + 90 + 113 + 121 + 86 + 84 + 75)
	- 63.74%
- [ ] Total		7732/8199
	- 94.40%

### E2: Filtración de la primera compilación, Separar detalle en 4 o 5 columnas
- [X] Facmed		1138/1138 (1138)
	- 100.0%
- [ ] Facsal		488/488 (183 + 41 + 122 + 142)
	- 100.0%
- [ ] Humanidades	803/1929 (317 + 132 + 354 + 509 + 372 + 245)
	- 41.63%
- [ ] Ingeniería	1497/1497 (142 + 260 + 359 + 214 + 260 + 262)
	- 100.0%
- [ ] Juridicas		279/433 (279 + 154)
	- 64.43%
- [ ] Técnicos		251/533 (88 + 97 + 66 + 51 + 93 + 60 + 78)
	- 47.09%
- [ ] Vallenar		0/373 (85 + 99 + 60 + 78 + 51)
	- 0.0%
- [ ] Total		4456/6391
	- 69.72%

### TL2: Migración de los datos de manera bruta a los documentos finales
- [ ] Libros Compilados	0/6391

### ETL3: Eliminación de duplicados y redundancias, estandarización del nuevo modelo
