#!/bin/bash
trap '' 2
while true; do
  clear
  echo "Ingresar 1 para crear imagen"
  echo "Ingresar 2 para crear contenedor"
  echo "Ingresar 3 inspeccionar Dockerfile "
  echo "Ingresar 4 listar imagenes y contenedores "
  echo "Ingresar 5 para destruir contenedor"
  echo "Presione q para salir"

  echo -e "\n"

  echo -e "Ingresar seleccion: \c"
  read answer

  case $answer in
  1)
    echo "Creando imagen hello-bootcamp... "
    echo -e "\n" 
    sleep 5
    docker build -t hello-bootcamp .
    ;;

  2)
    echo "Creando contenedor app-hello-bootcamp... "
    echo -e "\n" 
    sleep 5
    docker run -d --name app-hello-bootcamp -p4000:4000 hello-bootcamp
    ;;

  3)
    echo "Dockerfile... "
    echo -e "\n" 
    sleep 5
    cat Dockerfile
    ;;

  4)
    echo -e "\n" 
    echo "Contenedores activos: "
    echo -e "\n" 
    docker ps
    echo -e "\n" 
    echo "Imagenes activas: "
    echo -e "\n" 
    docker images
    ;;

  5)
    echo "Destruyendo contenedor... "
    echo -e "\n" 
    sleep 5
    docker stop app-hello-bootcamp
    docker rm app-hello-bootcamp
    docker rmi hello-bootcamp
    ;;

  \
    \
    q) exit ;;

  esac
  echo -e "\n" 
  echo -e "\e[0;31mPresionar enter para continuar\e[0m  \c"
  read input
done
