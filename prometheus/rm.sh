#!/bin/bash

kubectl delete -f prometheus/prometheus-cluster-role.yaml
kubectl delete -f prometheus/prometheus-ingress.yaml
kubectl delete -f prometheus/prometheus-deploy.yaml
kubectl delete -f prometheus/prometheus-config.yaml