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



# Elements of K8S:
Kubernetes is a powerful container orchestration platform that automates the deployment, scaling, and management of containerized applications. It consists of various components that work together to provide a robust and flexible system. Here are the key elements of Kubernetes:

1. Cluster
Definition: A Kubernetes cluster is a set of nodes that run containerized applications. It consists of at least one master node and multiple worker nodes.
2. Master Node (Control Plane)
API Server: The API server acts as the front-end of the Kubernetes control plane. It handles all RESTful API requests from users, as well as internal communications.
etcd: A distributed key-value store used to store all cluster data and configurations. It acts as the single source of truth for the cluster state.
Controller Manager: A daemon that regulates the state of the cluster, ensuring that the desired state matches the current state. It manages controllers such as the Node Controller, Replication Controller, and more.
Scheduler: The component that assigns workloads (Pods) to worker nodes based on resource availability and other constraints.
3. Worker Node
Kubelet: An agent that runs on each worker node. It ensures that containers are running in Pods as defined by the Kubernetes control plane.
Kube-proxy: A network proxy that runs on each worker node. It handles network communication and load balancing between Pods.
Container Runtime: The software that runs containers on the worker nodes. Common container runtimes include Docker, containerd, and CRI-O.
4. Pod
Definition: The smallest deployable unit in Kubernetes. A Pod is a group of one or more containers that share the same network namespace, storage, and lifecycle.
5. Namespace
Definition: A virtual cluster within a Kubernetes cluster that allows for the segmentation of resources. Namespaces provide a way to divide cluster resources between multiple users or teams.
6. ReplicaSet
Definition: A controller that ensures a specified number of replicas (identical copies) of a Pod are running at all times. It automatically replaces any failed or terminated Pods.
7. Deployment
Definition: A higher-level abstraction that defines the desired state of a Pod or a ReplicaSet. Deployments manage rolling updates, rollbacks, and scaling of applications.
8. Service
Definition: An abstraction that defines a logical set of Pods and a policy to access them. Services provide stable IP addresses and DNS names for Pods, allowing for consistent communication between components.
9. ConfigMap
Definition: A resource that provides configuration data to Pods. ConfigMaps allow decoupling of environment-specific configurations from the application code.
10. Secret
Definition: A resource similar to ConfigMaps but intended for sensitive information, such as passwords or tokens. Secrets are stored in an encoded format to enhance security.
11. Volume
Definition: A storage abstraction that allows Pods to persist data. Kubernetes supports various volume types, including local storage, cloud-based storage, and networked storage (e.g., NFS).
12. Ingress
Definition: An API object that manages external access to services within a cluster, typically HTTP or HTTPS. Ingress defines rules for routing traffic to specific services based on the request URL.
13. DaemonSet
Definition: A controller that ensures a copy of a Pod is running on all (or a subset of) nodes in the cluster. DaemonSets are typically used for background tasks such as logging, monitoring, or networking.
14. StatefulSet
Definition: A controller that manages the deployment and scaling of stateful applications. Unlike Deployments, StatefulSets provide stable network identities and persistent storage for each Pod.
15. Job and CronJob
Job: A resource that creates one or more Pods and ensures they complete a specific task. Jobs are used for short-lived tasks like batch processing.
CronJob: A resource that schedules Jobs to run at specified times, similar to cron in Unix-like systems.
16. PersistentVolume (PV) and PersistentVolumeClaim (PVC)
PersistentVolume (PV): A piece of storage in the cluster that has been provisioned by an administrator. PVs exist independently of the Pods that use them.
PersistentVolumeClaim (PVC): A request for storage by a user. PVCs can request specific size and access modes, and they bind to a suitable PV.
17. Network Policies
Definition: A set of rules that define how Pods are allowed to communicate with each other and with other network endpoints. Network policies enhance the security and isolation of network traffic within the cluster.
18. Horizontal Pod Autoscaler (HPA)
Definition: A controller that automatically adjusts the number of Pod replicas based on observed CPU utilization or other select metrics.
19. Cluster Autoscaler
Definition: A component that automatically adjusts the size of a Kubernetes cluster by adding or removing worker nodes based on resource demands.
20. Custom Resource Definitions (CRDs)
Definition: Extensions to the Kubernetes API that allow users to define custom resources, enabling the creation of new types of objects within the cluster.