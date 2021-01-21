#!/bin/bash

kubectl delete -f prometheus/prometheus-config.yaml
kubectl apply -f prometheus/prometheus-config.yaml
replicaset=$(kubectl get replicasets --selector=app=prometheus | grep prometheus | cut -d " " -f 1)
kubectl rollout restart deployment prometheus
kubectl delete $(echo "replicaset.apps/$replicaset")