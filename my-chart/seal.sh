#!/bin/bash

NAMESPACE="$1"
SECRETNAME="$2"
OUTPUTFILE="$3"

kubectl get secret -n $NAMESPACE $SECRETNAME -o yaml | kubeseal --controller-name=sealed-secrets --controller-namespace=sealed-secret --format yaml > $OUTPUTFILE.yaml