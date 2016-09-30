#!/bin/bash -eux
kubectl create -f .
sleep 10
kubectl get service webserver
kubectl get deployment webserver
kubectl get replicasets
kubectl get pods

kubectl describe service webserver
kubectl describe deployment webserver
kubectl describe replicasets webserver
kubectl describe pods webserver

minikube service webserver
