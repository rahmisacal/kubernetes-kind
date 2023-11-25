kind create cluster --config=./config-ingress.yaml
kubectl apply -f nginx-crd.yaml
kubectl apply -f nginx-ingress.yaml


http://localhost/nginx


##rest api
kubectl create sa test -n default
kubectl create secret test -n default
#bind secret and sa
kubectl create clusterrolebinding test --clusterrole=cluster-admin --serviceaccount=default:test
kubectl get secrets -o jsonpath="{.items[?(@.metadata.annotations['kubernetes\.io/service-account\.name']=='default')].data.token}"|base64 -d