#!/bin/bash

types=( "*cluster-role.yaml" "*config.yaml" "*deploy.yaml" "*ingress.yaml")
echo ${types[@]}
for type in ${types[@]}
do
    files=( $(find . -name $type -type f | grep .yaml) )
    for file in ${files[@]}
    do
        kubectl delete -f $file
    done
done