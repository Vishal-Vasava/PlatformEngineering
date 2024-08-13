# K8S Practices

## Serialization
Common agreed format to interpret regardless underlying OS . 
YAML
XML
JSON

## pod

-  kubectl run nginix-pod --image=nginx
- kubctl api-resources | grep pods
- kubectl apply -f nginxpod.yaml
- kubectl get pods
- kubectl apply -f nginx-pod.yaml
- kubectl delete pod ngnix-pod1
- kubectl get pods -l team=integrations, app=orderup
- kubectl get pod nginx-pod1 -o wide
- kubectl describe pod nginx-pod1
- kubectl exex -it nginx-pod1 bash 
- kubectl port-forward nginx-pod1 8083:80
- kubectl logs nginx-pod1
- kubectl delete -f nginx-pod.yaml
- Kubetctl get po

## ReplicaSets & Deployments
### Self Healing & HA 
 if pod gets deleted, replicaset will create another pod

- kubectl apply -f nginx-replicaset.yaml
- Kubectl get po
- minicube  get node add --worker -p local-cluster
- kubectl get po -o wide
- minikube node delete local-cluster-m02 -p local-cluster

### Roll out and roll back
- kubectl apply -f nginx-deployment.yaml
- kubectl get po --show-labels



## Services


## Ingress

