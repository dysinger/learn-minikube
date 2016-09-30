#!/bin/bash -eux
eval $(minikube docker-env)
docker build -t webserver:0.1.0 $PWD

kubectl set image deployment/webserver webserver=webserver:0.1.0
sleep 10
kubectl describe service webserver
kubectl describe deployment webserver
kubectl describe pods webserver

minikube service webserver
