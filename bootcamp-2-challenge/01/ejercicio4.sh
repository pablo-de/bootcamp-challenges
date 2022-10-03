#!/bin/bash
texto=$1

# Descargando el contenido web a un fichero
curl https://es.wikipedia.org/wiki/DevOps -s > fichero.txt

grep -n -m1 $texto fichero.txt