#!/bin/bash

# Nombre del archivo de entrada
#archivo_entrada="SRR14374038_S201_trimm_paired-1-species-longtail.kaijuReport"
file_input="$1"
file_name=$(basename "$file_input" .kaijuReport)

# Nombre del archivo de salida
#archivo_salida="percent_y_siguientes.txt"
file_output="$file_name.txt"

# Utilizamos awk para extraer la columna "percent" y las siguientes, y lo redirigimos a un archivo de texto

#awk '{print substr($0, index($0, $2))}' "$archivo_entrada" > "$archivo_salida"

awk '{print substr($0, index($0, $2))}' "$file_input" > "$file_output"
echo "Se ha generado el archivo $file_output con las columnas 'percent' y siguientes."

