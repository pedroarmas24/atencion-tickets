#!/bin/sh
mvn clean package && docker build -t com.mycompany/atencion-tickets .
docker rm -f atencion-tickets || true && docker run -d -p 8080:8080 -p 4848:4848 --name atencion-tickets com.mycompany/atencion-tickets 
