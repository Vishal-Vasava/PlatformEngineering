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
- CHANGE-CAUSE
- kubectl rollout undo deplopyment/nginx-deployemt.yaml --revision_version=1

## Services

- Pod IPs are dynamic
- Portforwarding is only meant for debugging and only available on local machine
- Abstract pod IP from main address
- Service IP address doesnt change until service exists
- Service will take care of routing to appropriate pod
- services are not node-specific, so they can point to pods regardless of where the pods are running in the cluster. 
- Load Balancing act
- Service Discovery and Zero downtime deployments
- Service Type = ClusterIP vs NodePort vs LoadBalancer
- Labels for many pods with selectors 
- NodePort ? 


#### commands
- kubectl apply -f ngnix-service.yaml
- kubectl get po
- kubectl exec -it nginx <podname> --sh
- curl nginx-service:8082
- kubectl port-forward serfice/nginx-service 8083:8082

#### Generate load for load balancing test
Multiple services are helpful  for sidecar

- kubctl get po
- kubectl exec -it <podname> -- sh 
/ # i=1
/ # while [ "$i" -le 20 ]; do
>       curl nginx-service:8082
>       i=$((i+1))
> done

- kubectl logs <podname> -f
- kubectl get endpoints
- kubectl describe service/nginx-serice


## Ingress
- Load Balancer + NodePort works in only cloud environments. New load balancer per service increase cost. 
- Bare Metal entry points need proxy server 
- "which request should go to which service" is ingress

## Namespace


## Volumes


## statefulsets - MongoDB Cluster


## ConfigMaps and Secrets


## Autoscaling


## Advanced Scheduling


## RBAC

## Autoscaling in Kubernetes


## DaemonSets in Kubernetes


## Jobs and CroneJobs