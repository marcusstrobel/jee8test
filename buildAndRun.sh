#!/bin/sh
mvn clean package && docker build -t de.maccer/jee8test .
docker rm -f jee8test || true && docker run -d -p 8080:8080 -p 4848:4848 --name jee8test de.maccer/jee8test 
