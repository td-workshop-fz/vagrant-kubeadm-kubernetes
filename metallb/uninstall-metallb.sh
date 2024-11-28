#!/bin/bash

kubectl delete deployment.apps/controller -n metallb-system
kubectl delete daemonset.apps/speaker -n metallb-system
kubectl delete service/metallb-webhook-service -n metallb-system

kubectl delete namespace metallb-system