#!/bin/bash

NAMESPACE=hanin-s

helm upgrade --install hanin-praxis-form . -n $NAMESPACE --create-namespace