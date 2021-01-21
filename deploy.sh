#!/bin/bash

types=( "*cluster-role.yaml" "*pv.yaml" "*pvc.yaml" "*config.yaml" "*deploy.yaml" "*ingress.yaml")
echo ${types[@]}
for type in ${types[@]}
do
    files=( $(find . -name $type -type f | grep .yaml) )
    for file in ${files[@]}
    do
        kubectl apply -f $file
    done
done