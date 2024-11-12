# Reestructuración del sistema de bibliotecas para bibliografías

Para empezar a trabajar, recordar que el elemento clave para que funcionen las partes automatizadas es un script de shell para Bash, por lo que se recomienda el uso de linux para mayor confort. Escribe para empezar:

```sh
./exportar -h
```

## Progreso en la migración de los datos de Biblioteca

### E1: Migración de XLSX a CSV
Este primer paso implicaba encontrar la manera de exportar cada uno de las bases de datos desarrolladas en excel y exportar cada una de las páginas a un formato cómodo de trabajar a través de scripting y otros métodos, para permitir automatización y facilidad para trabajar con los datos en bruto. Este proceso tomó aproximadamente una semana y media, pero finalmente fue posible exportar de manera masiva con scripting de shell (en bash, ya que trabajo principalmente en linux y es muy flexible).

### TL 1: Estandarización de los datos a un formato de 8 columnas
- [X] Facmed		1166/1166 (1166)
	- 100.0%
- [X] Facsal		830/830 (246 + 181 + 189 + 241)
	- 100.0%
- [X] Básica		2031/2031 (322 + 151 + 366 + 517 + 391 + 284)
	- 100.0%
- [X] Ingeniería	1877/1877 (156 + 438 + 367 + 244 + 294 + 378)
	- 100.0%
- [X] Juridicas		571/571 (289 + 282)
	- 100.0%
- [ ] Técnicos		841/927 (100 + 129 + 92 + 75 + 148 + 92 + 121 + 86 + 84)
	- 90.72%
- [ ] Vallenar		508/797 (100 + 128 + 90 + 113 + 121 + 86 + 84 + 75)
	- 63.74%
- [ ] Total		7824/8199
	- 95.43%

### E2: Filtración de la primera compilación, separar detalle en 4 o 5 columnas
- [X] Facmed		1166/1166 (1166)
	- 100.0%
- [ ] Facsal		0/830 (246 + 181 + 189 + 241)
	- 0.0%
- [ ] Básica		322/2031 (322 + 151 + 366 + 517 + 391 + 284)
	- 15.85%
- [ ] Ingeniería	156/1877 (156 + 438 + 367 + 244 + 294 + 378)
	- 8.32%
- [ ] Juridicas		289/571 (289 + 282)
	- 50.61%
- [ ] Técnicos		229/927 (100 + 129 + 92 + 75 + 148 + 92 + 121 + 86 + 84)
	- 24.76%
- [ ] Vallenar		0/797 (100 + 128 + 90 + 113 + 121 + 86 + 84 + 75)
	- 0.0%
- [ ] Total		2033/8199
	- 24.80%

### TL2: Migración de los datos de manera bruta a los documentos finales
- [ ] Libros Compilados	?/?

### ETL3: Eliminación de duplicados y redundancias, estandarización del nuevo modelo
