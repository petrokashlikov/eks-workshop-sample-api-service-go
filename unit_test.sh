#!/bin/sh
api_host=$(kubectl get svc hello-k8s -o json | jq -r .status.loadBalancer.ingress[].i)
curl -m 2 $api_host
res=$?
if test "$res" != "0"; then
   echo "the curl command failed with: $res"
fi

