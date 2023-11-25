#!/bin/bash

kubectl delete -f nginx-ingress.yaml
kubectl delete -f nginx-crd.yaml
kind delete clusters kind