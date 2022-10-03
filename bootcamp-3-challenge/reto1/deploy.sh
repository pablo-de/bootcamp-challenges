#!/bin/bash
trap '' 2
while true; do
  clear
  echo "Ingresar 1 para crear contenedor Ngnix"
  echo "Ingresar 2 listar imagenes y contenedores "
  echo "Ingresar 3 para destruir contenedor"
  echo "Presione q para salir"

  echo -e "\n"

  echo -e "Ingresar seleccion: \c"
  read answer

  case $answer in
  1)
    echo "Creando contenedor ngnix: servidor_web... "
    echo -e "\n" 
    sleep 5
    docker run -d --name servidor_web -p 8181:80 nginx
    ;;

  2)
    echo -e "\n" 
    echo "Contenedores activos: "
    echo -e "\n" 
    docker ps
    echo -e "\n" 
    echo "Imagenes activas: "
    echo -e "\n" 
    docker images
    ;;

  3)
    echo "Destruyendo contenedor... "
    echo -e "\n" 
    sleep 5
    docker stop servidor_web
    docker rm servidor_web
    docker rmi nginx
    ;;

  \
    \
    q) exit ;;

  esac
  echo -e "\n" 
  echo -e "\e[0;31mPresionar enter para continuar\e[0m  \c"
  read input
done
