#!/bin/bash

cd $(dirname ${BASH_SOURCE})

set -e

hubctx="kind-hub"

kubectl config use ${hubctx}

#echo "Add cluster1 to the clusterset"
#
#kubectl label managedcluster cluster1 cluster.open-cluster-management.io/clusterset=managed-serviceaccount-set --overwrite
#
#echo "Label cluster1 so placement will select cluster1 only"
#
#kubectl label managedcluster cluster1 purpose=test --overwrite
#
#echo "Deploy the application with placement"

kubectl apply -f manifests/
