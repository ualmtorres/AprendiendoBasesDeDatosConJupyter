# Aprendiendo bases de datos con Jupyter

Manuel Torres, Departamento de Informática, Universidad de Almería

Este libro Jupyter está diseñado para enseñar los conceptos básicos de bases de datos utilizando ejemplos prácticos y herramientas interactivas. A lo largo de este libro, exploraremos cómo trabajar con bases de datos relacionales, realizar consultas SQL y analizar datos de manera eficiente. 

El contenido se desarrolla mediante notebooks prácticos proporcionando una combinación de teoría y práctica para facilitar el aprendizaje. ¡Comencemos a explorar el mundo de las bases de datos!

[![Jupyter Book Badge](https://jupyterbook.org/badge.svg)](https://ualmtorres.github.io/AprendiendoBasesDeDatosConJupyter)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.15059033.svg)](https://doi.org/10.5281/zenodo.15059033)

## Detalles del libro

Este repositorio contiene:

- Carpeta `setup-enviroment`: Incluye un archivo `docker-compose.yml` para levantar un entorno de Jupyter con PostgreSQL y MySQL. Los puertos predeterminados son: 
    - Jupyter: 8888
    - PostgreSQL: 5432
    - MySQL: 3306
- Carpeta `notebooks`: Incluye los notebooks de Jupyter con los ejemplos y ejercicios para aprender bases de datos.
- Carpeta `data`: Incluye los datos necesarios para los ejemplos y ejercicios.
- Carpeta `assets`: Incluye las imágenes necesarias para los notebooks.
- Carpeta `_build`: Incluye los notebooks en formato HTML.
- Archivos `_config.yml` y `_toc.yml`: Archivos de configuración de Jupyter Book.
- Archivo `construir-jupyterbook.sh`: Script para construir el libro de Jupyter.
- Archivos `README.md` y `LICENSE.md`: Archivos de información y licencia.

## Despliegue

El entorno de Jupyter se levanta con Docker Compose. El entorno contiene JupyterLab, PostgreSQL y MySQL. Para levantar el entorno, ejecutar el siguiente comando en la carpeta `setup-enviroment`:

```bash
docker-compose up -d
```

* El entorno de Jupyter estará disponible en `http://localhost:8888` y se accede sin contraseña.
* El servidor de PostgreSQL estará disponible en `http://localhost:5432` con usuario `example` y contraseña `example`. La base de datos de ejemplo se llama `example`. El nombre del servidor para acceder a él desde Jupyter es `postgres`.
* El servidor de MySQL estará disponible en `http://localhost:3306` con usuario `example` y contraseña `example`. La base de datos de ejemplo se llama `example`. El nombre del servidor para acceder a él desde Jupyter es `mysql`.

## Actualización y publicación del Jupyter Book

Para actualizar el libro de Jupyter, modificar los notebooks en la carpeta `notebooks` y ejecutar el script `construir-jupyterbook.sh` en la raíz del repositorio. Una vez construido el libro, está disponible en la carpeta `_build/html`.

Para publicar el libro en GitHub Pages, se puede subir la carpeta `_build/html` a la rama `gh-pages` del repositorio. Otra opción es usar `ghp-import` para publicar el libro en GitHub Pages. Para ello, instalar `ghp-import` con el siguiente comando:

```bash
pip install ghp-import
```

A continuación, ejecutar el siguiente comando en la raíz del repositorio:

```bash
ghp-import -n -p -f _build/html
```

## Licencia

Licencia CC BY-NC-ND 4.0

Copyright (c) 2025 [Manuel Torres - Departamento de Informática - Universidad de Almería]

Este proyecto está licenciado bajo la Licencia CC BY-NC-ND 4.0. Esto significa que puedes compartir el proyecto siempre que cites al autor, no lo uses para fines comerciales y no realices obras derivadas.

Citar como: Manuel Torres. (2025). Aprendiendo bases de datos con Jupyter. Zenodo. https://doi.org/10.5281/zenodo.15059033