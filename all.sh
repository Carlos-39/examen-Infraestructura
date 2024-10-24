#!/usr/bin/env bash
#
# Este script se encarga de invocar los tres programas que permiten la 
# conversion de un PNG a secuencia de pixeles, se procesan esos pixeles y
# posteriormente se convierte esa secuencia de pixeles a un archivo en formato
# PNG
#
# Autor: John Sanabria - john.sanabria@correounivalle.edu.co
# Fecha: 2024-08-22
#

# Iterar sobre todas las imágenes en la carpeta 'images'
for INPUT_PNG in images/*.png; do
    TEMP_FILE="${INPUT_PNG%.png}.bin"
    
    # Se convierte el PNG a archivo binario
    python3 fromPNG2Bin.py "${INPUT_PNG}"

    # Se procesa la imagen
    ./main "${TEMP_FILE}"

    # Se convierte de nuevo a PNG
    python3 fromBin2PNG.py "${TEMP_FILE}.new"
done
