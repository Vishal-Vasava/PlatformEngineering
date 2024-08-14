# Let us build Internal Developers Platform (IDP)

## Underlying Platform
- Kubernetes
- EKS
- AKS
- GKE
- Digital OCen

## Platform Capabilities

- GitOps
- Monitoring
- Observability
- Provisioning (Crossplane)

## Platform Interface

- UI 
- CLI
- API
- IDP 



## How to Build an IDP with Backstage, Crossplane and Argo CD 
- Opinionated for ogranization
- How can we take off underlying complexity for developers
- Crossplane is set of operator provider it extends K8s to enable K8 and its adaptations
- Creat composition for end user interface which is easy to understand
- use those .yaml files
- kubectl get managed


## Backstage 
Backstage is an open-source platform developed by Spotify that serves as an internal developer portal, designed to streamline and centralize infrastructure management, software development, and operations for engineering teams. It provides a unified interface where teams can discover, manage, and collaborate on services, documentation, APIs, and other resources. By integrating with various tools and services, Backstage enhances productivity by reducing complexity and enabling developers to focus on building and delivering software rather than navigating fragmented systems. It supports extensibility through plugins, making it adaptable to diverse engineering environments.


## Backstage - Crossplane

Backstage and Crossplane serve different purposes in the cloud-native ecosystem, though both aim to improve developer experience and infrastructure management:

### Backstage:

Purpose: Primarily an internal developer portal that centralizes information, tools, and processes for engineering teams. It provides a unified interface for managing microservices, documentation, CI/CD pipelines, and other software assets.
Use Cases: Developer experience, service catalog management, infrastructure visibility, and workflow standardization. It’s highly extensible and integrates with existing tools to provide a single pane of glass for developers.
Focus: Improving productivity by reducing the cognitive load of managing complex infrastructures and services, primarily from a developer-centric perspective.

### Crossplane:

Purpose: An open-source control plane that enables infrastructure management using Kubernetes-native APIs. It extends Kubernetes with custom resources to manage cloud resources, like databases, networks, and more, as if they were native Kubernetes objects.
Use Cases: Infrastructure as Code (IaC), multi-cloud management, and enabling GitOps for infrastructure. It allows teams to define and provision infrastructure using Kubernetes manifests, making it easier to manage complex environments consistently.
Focus: Enabling Kubernetes to act as a universal control plane for managing both applications and infrastructure, with a strong focus on cloud resource management and IaC.
In summary, Backstage focuses on enhancing developer productivity and collaboration through a centralized portal, while Crossplane focuses on extending Kubernetes to manage infrastructure as code across multiple clouds. They can complement each other in a cloud-native environment, with Backstage providing a user-friendly interface for developers and Crossplane handling underlying infrastructure management.