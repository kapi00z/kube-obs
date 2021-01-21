#!/bin/bash

kubectl delete -f grafana/grafana-ingress.yaml
kubectl delete -f grafana/grafana-deploy.yaml
kubectl delete -f grafana/grafana-cluster-role.yaml