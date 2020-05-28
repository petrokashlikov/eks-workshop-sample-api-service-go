#!/bin/sh
set -e
api_host=$(kubectl get svc hello-k8s -o json | jq -r .status.loadBalancer.ingress[].i)
curl -m 2 $api_host

