#!/bin/bash

kubectl apply -f grafana/grafana-cluster-role.yaml
kubectl apply -f grafana/grafana-deploy.yaml
kubectl apply -f grafana/grafana-ingress.yaml