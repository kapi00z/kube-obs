#!/bin/bash

kubectl patch pvc prometheus-logs -p '{"metadata":{"finalizers": []}}' --type=merge

types=( "*cluster-role.yaml" "*pvc.yaml" "*pv.yaml" "*config.yaml" "*deploy.yaml" "*ingress.yaml")
echo ${types[@]}
for type in ${types[@]}
do
    files=( $(find . -name $type -type f | grep .yaml) )
    for file in ${files[@]}
    do
        kubectl delete -f $file
    done
done