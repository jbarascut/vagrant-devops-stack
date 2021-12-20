# terraform/main.tf

module "cluster" {
  source = "git::https://github.com/camptocamp/devops-stack.git//modules/k3s/docker?ref=master"

  cluster_name = "my-cluster"
}