## Ejercicio 1 - Manejo de archivos

```
Crear los directorios: 
mkdir -p foo/dummy foo/empty

Crear los files: 
touch  foo/dummy/file1.txt foo/dummy/file2.txt

Asignarle a file1.txt el texto
echo 'Me encanta bash!!' >> foo/dummy/file1.txt 
```

## Ejercicio 2 - Manejo de contenido de archivos
```
Volcar el contenido de file1.txt a file2:
cat foo/dummy/file1.txt > foo/dummy/file2.txt

Mover el file2.txt a la carpeta empty:
mv foo/dummy/file2.txt foo/empty/
```
