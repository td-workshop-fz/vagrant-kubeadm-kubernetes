#!/bin/bash

export KUBECONFIG=/home/zhengt/develop/vagrant-kubeadm-kubernetes/configs/config

kubectl get configmap kube-proxy -n kube-system -o yaml | \
sed -e "s/strictARP: false/strictARP: true/" | \
kubectl apply -f - -n kube-system

#kubectl apply -f namespace.yaml
kubectl apply -f metallb.yaml
kubectl apply -f metallb-configmap.yml

#kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.14.8/config/manifests/metallb-native.yaml
#kubectl apply -f ip-address-pool.yaml
