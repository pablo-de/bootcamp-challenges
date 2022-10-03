#!/bin/bash

docker build -t ci-cd .

docker run -d --name cd-cd-challenge -p 8888:8888 ci-cd

docker tag ci-cd pablode24/cd-cd-challenge

docker push pablode24/cd-cd-challenge