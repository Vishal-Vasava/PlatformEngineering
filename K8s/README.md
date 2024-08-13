# K8S Practices

## Serialization
Common agreed format to interpret regardless underlying OS . 
YAML
XML
JSON

## pod

kubectl run nginix-pod --image=nginx
kubctl api-resources | grep pods
kubectl apply -f nginxpod.yaml
kubectl get pods
kubectl apply -f nginx-pod.yaml
kubectl delete pod ngnix-pod1
kubectl get pods -l team=integrations, app=orderup
kubectl get pod nginx-pod1 -o wide




1. Services
2. Ingress
3. 
4. 
5. 

