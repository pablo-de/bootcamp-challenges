- Crea un directorio llamado "nueva_carpeta".
<pre>mkdir nueva_carpeta</pre>

- Accede a esta carpeta que acabas de crear.
<pre>cd nueva_carpeta</pre>

- Crea un archivo en este directorio y llámalo archivo_nuevo.txt.
<pre>touch archivo_nuevo.txt</pre>

- Cámbiale el nombre a este último archivo que has creado y llámalo archivo_viejo.txt.
<pre>mv archivo_nuevo.txt archivo_viejo.txt</pre>

- Añade el texto "Nueva línea de texto" al archivo desde el terminal.
<pre>echo "Nueva línea de texto" > archivo_viejo.txt</pre>

- Cambia los permisos de este archivo para que todos los usuarios puedan leer, escribir y ejecutarlo.
<pre>chmod a=rwx archivo_viejo.txt</pre>

- Sube un nivel de directorio, es decir, vuelve al directorio anterior.
<pre>cd ..</pre>

- Crea un enlace al archivo que creaste en esta carpeta llamado "enlace.ln".
<pre>ln -s /home/pablo/nueva_carpeta/archivo_viejo.txt enlace.ln</pre>

- Elimina el directorio "nueva_carpeta" y los archivos que contenga.
<pre>rm -r nueva_carpeta/</pre>