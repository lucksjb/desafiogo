# TO DEVEOP :
# docker run -it -v $(pwd):/go/src --rm --name go-container lucksjb/desafiogo bash

# TO BUILD :
# docker build -t lucksjb/desafiogo .


FROM golang:latest

WORKDIR /go/src

# nao entendi pq o VOLUME do DOCKER FILE
# docker run -it -v --rm --name go-container lucksjb/desafiogo bash
# nao 
VOLUME $(pwd):/go/src 
# VOLUME [ "/home/lck/trabfinaldocker/go:/go/src/" ]

