helm repo add openebs https://openebs.github.io/openebs
helm repo update
helm install openebs --namespace openebs openebs/openebs --create-namespace

#helm repo add metallb https://metallb.github.io/metallb
#helm repo update
#helm install metallb metallb/metallb

# install metallb
kubectl create namespace metallb-system
kubectl apply -f metallb/metallb-configmap.yml
kubectl apply -f metallb/metallb.yaml

# install sample application
kubectl apply -f metallb/sample-app.yaml
