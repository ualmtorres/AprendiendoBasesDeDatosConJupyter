# Aprendiendo Bases de datos con Jupyter

Este repositorio contiene el material necesario para aprender bases de datos con Jupyter. Incluye ejemplos prácticos y ejercicios para aprender a trabajar con bases de datos relacionales. Además, incluye un entorno de Jupyter con PostgreSQL y MySQL para poder ejecutar los ejemplos. El entorno de Jupyter se levanta con Docker Compose. También incluye un libro de Jupyter con los notebooks de los ejemplos y ejercicios.

## Requisitos

* Para poder ejecutar los notebooks de Jupyter es necesario tener instalado Docker y Docker Compose.
* Para poder construir el libro de Jupyter es necesario tener instalado Jupyter Book (`pip install jupyter-book`). El libro se construye en formato HTML y está disponible en la carpeta `_build/html`.

## Contenido

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

Para levantar el entorno de Jupyter con PostgreSQL y MySQL, ejecutar el siguiente comando en la carpeta `setup-enviroment`:

```bash
docker-compose up -d
```

## Actualización y publicación del Juptyer Book

Para actualizar el libro de Jupyter, modificar los notebooks en la carpeta `notebooks` y ejecutar el script `construir-jupyterbook.sh` en la raíz del repositorio. Una vez construido el libro, está disponible en la carpeta `_build/html`.

Para publicar el libro en GitHub Pages, se puede subir la carpeta `_build/html` a la rama `gh-pages` del repositorio. Otra opción es usar `ghp-import` para publicar el libro en GitHub Pages. Para ello, instalar `ghp-import` con el siguiente comando:

```bash
pip install ghp-import
```

Y ejecutar el siguiente comando en la raíz del repositorio:

```bash
ghp-import -n -p -f _build/html
```

## Licencia

Licencia CC BY-NC-ND 4.0

Copyright (c) 2025 [Manuel Torres - Departamento de Informática - Universidad de Almería]

Este proyecto está licenciado bajo la Licencia CC BY-NC-ND 4.0. Esto significa que puedes compartir el proyecto siempre que cites al autor, no lo uses para fines comerciales y no realices obras derivadas.
