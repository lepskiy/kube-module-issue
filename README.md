# Issue with moving kubernetes resources into child module


## Prerequisits

1. "minikube" need to be installed and run: `minikube start`

### Steps to reproduce

1. Clone this repository: `git clone https://github.com/lepskiy/kube-module-issue`
1. Got inside the folder: `cd kube-module-issue`
1. Run `terraform init`
1. Run `terraform plan`
1. Run `terraform apply`
1. Switch to "module" banch: `git checkout module`
1. Run `terraform init`
1. Run `terraform plan`

### Expected Behavior
Plan should be shown.

### Actual Behavior
The error is shown:
```
kubernetes_namespace.test: Refreshing state... [id=nginx]
kubernetes_service.test: Refreshing state... [id=nginx/nginx]
kubernetes_deployment.test: Refreshing state... [id=nginx/nginx]
╷
│ Error: Get "http://localhost/apis/apps/v1/namespaces/nginx/deployments/nginx": dial tcp [::1]:80: connectex: No connection could be made because the target machine actively refused it.
│
│
╵
╷
│ Error: Get "http://localhost/api/v1/namespaces/nginx": dial tcp [::1]:80: connectex: No connection could be made because the target machine actively refused it.
│
│
╵
╷
│ Error: Get "http://localhost/api/v1/namespaces/nginx/services/nginx": dial tcp [::1]:80: connectex: No connection could be made because the target machine actively refused it.
│
│
```