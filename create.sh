#!/bin/bash

kind create cluster --config=./config-ingress.yaml
kubectl apply -f nginx-crd.yaml
kubectl apply -f nginx-ingress.yaml