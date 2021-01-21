#!/bin/bash

kubectl delete -f kube-state-metrics/kube-state-metrics-cluster-role.yaml
kubectl delete -f kube-state-metrics/kube-state-metrics-deploy.yaml