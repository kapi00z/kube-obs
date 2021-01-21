#!/bin/bash

kubectl apply -f prometheus/prometheus-cluster-role.yaml
kubectl apply -f prometheus/prometheus-cluster-role-binding.yaml
kubectl apply -f prometheus/prometheus-service.account.yaml