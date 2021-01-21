#!/bin/bash

kubectl apply -f kube-state-metrics/kube-state-metrics-cluster-role.yaml
kubectl apply -f kube-state-metrics/kube-state-metrics-deploy.yaml