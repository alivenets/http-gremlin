FROM alpine:latest 

RUN apk update 
RUN apk upgrade 
RUN apk add curl bash
ENTRYPOINT /bin/bash
