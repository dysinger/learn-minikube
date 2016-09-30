#!/bin/bash -eux
kubectl create -f $PWD
kubectl describe service webserver
kubectl describe deployment webserver
kubectl describe pods webserver

minikube service webserver
