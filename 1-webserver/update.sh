#!/bin/bash -eux
eval $(minikube docker-env)
docker build -t webserver:0.1.0 .

kubectl set image deployment/webserver webserver=webserver:0.1.0
sleep 10
kubectl get service webserver
kubectl get deployment webserver
kubectl get pods webserver

minikube dashboard

minikube service webserver

curl -sSL $(minikube service --url webserver)
