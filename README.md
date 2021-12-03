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

```