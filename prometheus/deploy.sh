#!/bin/bash

kubectl apply -f prometheus/prometheus-cluster-role.yaml
kubectl apply -f prometheus/prometheus-config.yaml
kubectl apply -f prometheus/prometheus-deploy.yaml
kubectl apply -f prometheus/prometheus-ingress.yaml