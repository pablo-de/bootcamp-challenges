#!/bin/bash
trap '' 2
while true; do
  clear
  echo "Ingresar 1 para clonar el repositorio"
  echo "Ingresar 2 para crear imagen"
  echo "Ingresar 3 para crear contenedor"
  echo "Ingresar 4 listar imagenes y contenedores "
  echo "Ingresar 5 para destruir contenedor"
  echo "Presione q para salir"

  echo -e "\n"

  echo -e "Ingresar seleccion: \c"
  read answer

  case $answer in
  1)
    echo "Clonando repositorio..."
    echo -e "\n" 
    sleep 5
    git clone https://github.com/roxsross/pokepy
    ;;

  2)
    echo "Creando imagen... "
    echo -e "\n" 
    sleep 5
    cd pokepy
    echo -e "Flask==2.0.2 \nrequests==2.22.0\n" > requirements.txt
    docker build -t pablode24/pokepy:1.0 .
    ;;

  3)
    echo "Creando contenedor... "
    echo -e "\n" 
    sleep 5
    docker run -d --name pokeypy -p 5000:5000 pablode24/pokepy:1.0
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
    docker stop pokeypy
    docker rm pokeypy
    docker rmi pablode24/pokepy:1.0
    ;;

  \
    \
    q) exit ;;

  esac
  echo -e "\n" 
  echo -e "\e[0;31mPresionar enter para continuar\e[0m  \c"
  read input
done
