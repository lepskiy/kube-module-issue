terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.0"
    }
  }
}

provider "kubernetes" {
  alias = "minikube"
  config_path = "~/.kube/config"
}

module "nginx" {
  source = "./modules/nginx"

  providers = {
    kubernetes = kubernetes.minikube
  }
}
