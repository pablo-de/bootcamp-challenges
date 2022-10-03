#!/bin/bash

texto=$1

#Crear los directorios
mkdir -p foo/dummy foo/empty

#Crear los files
touch foo/dummy/file1.txt foo/dummy/file2.txt

#Asignarle a file1.txt el texto ingresado, si no se ingresa nada, se asigna texto por defecto. 
if [ -z "$texto" ]
then
    echo 'Que me gusta bash!!!!' > foo/dummy/file1.txt 
else 
     echo $texto > foo/dummy/file1.txt
fi

#Volcar el contenido de file1.txt a file2
cat foo/dummy/file1.txt > foo/dummy/file2.txt

#Mover el file2.txt a la carpeta empty
mv foo/dummy/file2.txt foo/empty/