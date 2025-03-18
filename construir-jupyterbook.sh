#!/bin/bash

# Script para construir el Jupyter Book

# Verificar si jupyter-book está instalado
if ! command -v jupyter-book &> /dev/null
then
    echo "Error: jupyter-book no está instalado. Por favor, instálalo con 'pip install jupyter-book' antes de ejecutar este script."
    exit 1
fi

# Ejecutar la construcción del Jupyter Book
echo "Construyendo el Jupyter Book..."
jupyter-book build .

# Verificar si la construcción fue exitosa
if [ $? -eq 0 ]; then
    echo "La construcción del Jupyter Book se completó con éxito. El Jupyter Book se encuentra en la carpeta '_build/html'."
else
    echo "Error: La construcción del Jupyter Book falló."
    exit 1
fi